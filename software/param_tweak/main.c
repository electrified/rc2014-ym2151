#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#define REG_SEL_PORT 0xA0u
#define REG_DATA_PORT 0xA1u

#ifdef __SDCC
__sfr __at REG_SEL_PORT REG_SEL;
__sfr __at REG_DATA_PORT REG_DATA;
#else

unsigned char REG_SEL;
unsigned char REG_DATA;
#endif

struct operator
{
        uint8_t dt1_mul;
        uint8_t tl;
        uint8_t ks_ar;
        uint8_t ame_d1r;
        uint8_t dt2_d2r;
        uint8_t d1l_rr;
};

uint8_t operator_getDT1(struct operator *o) { return (o->dt1_mul >> 4) & 0x07; } // DeTune 1
void operator_setDT1(struct operator *o, uint8_t val) { o->dt1_mul = (o->dt1_mul & 0x0f) & (val << 4); }
uint8_t operator_getMUL(struct operator *o) { return o->dt1_mul & 0x0f; } // detune MULtiplier
void operator_setMUL(struct operator *o, uint8_t val) { o->dt1_mul = (o->dt1_mul & 0xf0) & (val & 0x0f); }
uint8_t operator_getTL(struct operator *o) { return o->tl & 0x7f; }       // Total Level (envelope)
uint8_t operator_getKS(struct operator *o) { return o->ks_ar >> 6; }      // Key Scaling
uint8_t operator_getAR(struct operator *o) { return o->ks_ar & 0x1f; }    // Attack Rate (envelope)
void operator_setAR(struct operator *o, uint8_t val) { o->ks_ar = (o->ks_ar & 0xc0) & (val & 0x1f); }
uint8_t operator_getAME(struct operator *o) { return o->ame_d1r >> 7; }   // AMS Enable
uint8_t operator_getD1R(struct operator *o) { return o->ame_d1r & 0x1f; } // Decay Rate 1
void operator_setD1R(struct operator *o, uint8_t val) { o->ame_d1r = (o->ame_d1r & 0xc0) & (val & 0x1f); }
uint8_t operator_getDT2(struct operator *o) { return o->dt2_d2r >> 6; }   // DeTune 2
uint8_t operator_getD2R(struct operator *o) { return o->dt2_d2r & 0x1f; } // Decay Rate 2
uint8_t operator_getD1L(struct operator *o) { return o->d1l_rr >> 4; }    // Decay Level 1
void operator_setD1L(struct operator *o, uint8_t val) { o->d1l_rr = (o->d1l_rr & 0x0f) & (val << 4); }
uint8_t operator_getRR(struct operator *o) { return o->d1l_rr & 0x0f; } // Release Rate
void operator_setRR(struct operator *o, uint8_t val) { o->d1l_rr = (o->d1l_rr & 0xf0) & (val & 0x0f); }

void print_operator(struct operator *o)
{
        printf("Detune (1) %d\n", operator_getDT1(o));
        printf("Phase Multiply %d\n", operator_getMUL(o));
        printf("Total Level %d\n", operator_getTL);
        printf("Key Scaling %d\n", operator_getKS);
        printf("Attack Rate %d\n", operator_getAR);
        printf("AMS Enable %d\n", operator_getAME);
        printf("First Decay Rate %d\n", operator_getD1R);
        printf("Second Detune %d\n", operator_getDT2);
        printf("Second Decay Rate %d\n", operator_getD2R);
        printf("First Decay Level %d\n", operator_getD1L);
        printf("Release Rate %d\n", operator_getRR);
}

struct voice
{
        uint8_t ne_nfrq;
        uint8_t lfrq;
        uint8_t pmd_amd;
        uint8_t ct_w;
        uint8_t rl_fb_con;
        uint8_t pms_ams;

        // uint8_t slot_mask;
        struct operator operators[4];
};

uint8_t voice_getNE(struct voice *v) { return v->ne_nfrq >> 7; }
uint8_t voice_getNFRQ(struct voice *v) { return v->ne_nfrq & 0x1f; }
uint8_t voice_getIsPhaseOrAmplitude(struct voice *v) { return v->pmd_amd >> 7; }
uint8_t voice_getMD(struct voice *v) { return v->pmd_amd & 0x7f; }
uint8_t voice_getW(struct voice *v) { return v->ct_w & 0x03; }
uint8_t voice_getRL(struct voice *v) { return (v->rl_fb_con >> 6) & 0x02; }
void voice_setRL(struct voice *v, uint8_t val) { v->rl_fb_con = (v->rl_fb_con & 0x3f) & (val << 6); }

uint8_t voice_getFB(struct voice *v) { return (v->rl_fb_con >> 3) & 0x07; }
uint8_t voice_getCON(struct voice *v) { return v->rl_fb_con & 0x07; }
uint8_t voice_getPMS(struct voice *v) { return (v->pms_ams >> 4) & 0x07; }
uint8_t voice_getAMS(struct voice *v) { return v->pms_ams & 0x02; }

void print_voice(struct voice *v)
{
        printf("Noise Enable %d\n", voice_getNE(v));
        printf("Noise Frequency %d\n", voice_getNFRQ(v));
        printf("Low Frequency %d\n", v->lfrq);
        printf("Phase or aplitude modulation %d\n", voice_getIsPhaseOrAmplitude(v));
        printf("Modulation depth %d\n", voice_getMD(v));
        printf("Waveform %d\n", voice_getW(v));
        printf("Right/Left %d\n", voice_getRL(v));
        printf("Self Feedback Level %d\n", voice_getFB(v));
        printf("Connection (AKA algorithm) %d\n", voice_getCON(v));
        printf("Phase modulation Sensitivity %d\n", voice_getPMS(v));
        printf("Amplitude Modulation Sensitivity %d\n", voice_getAMS(v));
}

void write_register(uint8_t reg, uint8_t value)
{
        printf("IO reg: %#02x val: %#02x\n", reg, value);
        REG_SEL = reg;
        REG_DATA = value;
}

void setNote(uint8_t channel, uint8_t note) {
        write_register(0x28 + channel, note);
}

void note_on_off(uint8_t channel, uint8_t slots)
{
        write_register(0x8, (slots << 3) + (channel & 0x7));
}

uint8_t getRegister(uint8_t base, uint8_t channel, uint8_t operator) {
        return base + (8 * operator) + channel;
}

void main()
{
        // 8 voices, each with 4 operators =32 slots
        struct voice v;
        // Beep
        // 280 DATA &H20, &HC0
        voice_setRL(&v, 0x3);
        write_register(0x20, v.rl_fb_con);
        // 290 DATA &H58, &H01
        // 58h == 40h + 18h(24)
        // channel 8, carrier 1 (operator 3 of 4), 
        operator_setMUL(&v.operators[2], 0x01);
        write_register(getRegister(0x40, 7, 2), v.operators[2].dt1_mul);
        // 300 DATA &H98, &H1F
        operator_setAR(&v.operators[2], 0x1f);
        write_register(getRegister(0x80, 7, 2), v.operators[2].ks_ar);
        // 310 DATA &HB8, &H0D
        operator_setD1R(&v.operators[2], 0x0d);
        write_register(getRegister(0xA0, 7, 2), v.operators[2].ame_d1r);
        // 320 DATA &HF8, &HF6
        operator_setD1L(&v.operators[2], 0x0f);
        operator_setRR(&v.operators[2], 0x06);
        write_register(getRegister(0xE0, 7, 2), v.operators[2].ame_d1r);

        setNote(7,0x3a);
        note_on_off(7, 0);
        note_on_off(7, 0b1111);

        //todo wait

        setNote(7,0x44);
        note_on_off(7, 0);
        note_on_off(7, 0b1111);

        print_voice(&v);
        
        //todo wait

        //  while(1) {
        //          // read keyboard
        //  }
}

void print_parameters()
{
}

/*
* Initialise YM
*/
void init(struct voice *v)
{
        // write_register()
}

