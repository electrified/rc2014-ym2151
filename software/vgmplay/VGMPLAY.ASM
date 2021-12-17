; SN76489 + AY-3-8910 VGM player for CP/M
;
; Based on VGM player by J.B. Langston
; https://github.com/jblang/SN76489
;
; Enhanced with multi-chip support by Marco Maccaferri
; YM2151 support hacked in by Ed Brindley
;
; Compile with:
;
;   TASM -80 -b VGMPLAY.ASM VGMPLAY.COM
; or sjasmplus --raw=vgmplay.com VGMPLAY.ASM

P8X180          .EQU    0                   ; System configuration
RC2014          .EQU    1

                .IF P8X180
RSEL            .EQU    82H                 ; Primary AY-3-8910 Register selection
RDAT            .EQU    83H                 ; Primary AY-3-8910 Register data
RSEL2           .EQU    88H                 ; Secondary AY-3-8910 Register selection
RDAT2           .EQU    89H                 ; Secondary AY-3-8910 Register data
PSGREG          .EQU    84H                 ; Primary SN76489
PSG2REG         .EQU    8AH                 ; Secondary SN76489
YM2151_SEL      .EQU    0B0H
YM2151_DAT      .EQU    0B1H
FRAME_DLY       .EQU    48                  ; Frame delay (~ 1/44100)
                .ENDIF

                .IF RC2014
RSEL            .EQU    0E0H                ; Primary AY-3-8910 Register selection
RDAT            .EQU    0E1H                ; Primary AY-3-8910 Register data
RSEL2           .EQU    0A0H                ; Secondary AY-3-8910 Register selection
RDAT2           .EQU    0A1H                ; Secondary AY-3-8910 Register data
PSGREG          .EQU    0FFH                ; Primary SN76489
PSG2REG         .EQU    0FBH                ; Secondary SN76489
YM2151_SEL      .EQU    0FEH                ; Primary YM2151 register selection
YM2151_DAT      .EQU    0FFH                ; Primary YM2151 register data
YM2151_SEL2     .EQU    0D0H                ; Secondary YM2151 register selection
YM2151_DAT2     .EQU    0D1H                ; Secondary YM2151 register data
FRAME_DLY       .EQU    15                  ; Frame delay (~ 1/44100)
                .ENDIF

BOOT            .EQU    0000H               ; boot location
BDOS            .EQU    0005H               ; bdos entry point
FCB             .EQU    005CH               ; file control block
FCBCR           .EQU    FCB + 20H           ; fcb current record
BUFF            .EQU    0080H               ; DMA buffer

PRINTF          .EQU    9                   ; BDOS print string function
OPENF           .EQU    15                  ; BDOS open file function
CLOSEF          .EQU    16                  ; BDOS close file function
READF           .EQU    20                  ; BDOS sequential read function

CR              .EQU    0DH                 ; carriage return
LF              .EQU    0AH                 ; line feed
EOS             .EQU    '$'                 ; end of string marker

                .ORG    100H

                LD      (OLDSTACK), SP      ; save old stack pointer
                LD      SP, STACK           ; set new stack pointer

                LD      C, OPENF
                LD      DE, FCB
                CALL    BDOS
                INC     A
                JP      Z, ERR

                XOR     A
                LD      (FCBCR), A
                LD      DE, VGMDATA
                LD      (VGMPOS), DE
RLOOP           LD      C, READF
                LD      DE, FCB
                CALL    BDOS
                OR      A
                JR      NZ, RDONE
                LD      HL, BUFF
                LD      DE, (VGMPOS)
                LD      BC, 128
                LDIR
                LD      (VGMPOS), DE
                JR      RLOOP

RDONE           LD      C, CLOSEF
                LD      DE, FCB
                CALL    BDOS

                LD      HL, (VGMDATA + 34H) ; start of VGM
                LD      A, H
                OR      L
                JR      NZ, _S1
                LD      HL, 000CH           ; default location (40H - 34H)
_S1             LD      DE, VGMDATA + 34H
                ADD     HL, DE
                LD      (VGMPOS), HL
                LD      HL, 735             ; VGM delay (60hz)
                LD      (VGMDLY), HL

MAINLOOP
                CALL    PLAY                ; play one frame

                LD      C, 6                ; check for keypress
                LD      E, 0FFH
                CALL    BDOS
                OR      A
                JR      NZ, EXIT

                LD      HL, (VGMDLY)        ; frame delay
L1              LD      B, FRAME_DLY
                DJNZ    $
                DEC     HL
                LD      A, H
                OR      L
                JR      NZ, L1

                JR      MAINLOOP

EXIT
                LD      A, 9FH              ; mute all channels on psg
                OUT     (PSGREG), A
                OUT     (PSG2REG), A
                LD      A, 0BFH
                OUT     (PSGREG), A
                OUT     (PSG2REG), A
                LD      A, 0DFH
                OUT     (PSGREG), A
                OUT     (PSG2REG), A
                LD      A, 0FFH
                OUT     (PSGREG), A
                OUT     (PSG2REG), A

                LD      A, 8                ; mute all channels on ay
                OUT     (RSEL), A
                OUT     (RSEL2), A
                XOR     A
                OUT     (RDAT), A
                OUT     (RDAT2), A
                LD      A, 9
                OUT     (RSEL), A
                OUT     (RSEL2), A
                XOR     A
                OUT     (RDAT), A
                OUT     (RDAT2), A
                LD      A, 10
                OUT     (RSEL), A
                OUT     (RSEL2), A
                XOR     A
                OUT     (RDAT), A
                OUT     (RDAT2), A

                ; TODO Mute all channels on YM2151

                LD      SP, (OLDSTACK)
                RST     00H

ERR             LD      C, PRINTF
                LD      DE, NOFILE
                CALL    BDOS
                RST     00H

NOFILE          .DB    "File not found", CR, LF, EOS

;------------------------------------------------------------------------------
; VGM Player.
;------------------------------------------------------------------------------
PLAY
                LD      HL, (VGMPOS)        ; Start processing VGM commands
NEXT            LD      A, (HL)
                INC     HL
                LD      (VGMPOS), HL
                CP      66H                 ; Restart VGM cmd
                JR      NZ, NEXT1
                LD      HL, (VGMDATA + 1CH) ; Loop offset
                LD      A, H
                OR      L
                JP      Z, EXIT
                LD      DE, VGMDATA + 1CH
                ADD     HL, DE
                LD      (VGMPOS), HL
                JR      NEXT
NEXT1           CP      4FH                 ; Game Gear SN76489 stereo. Ignored
                JR      NZ, PSG
                INC     HL
                JR      NEXT
PSG             CP      50H                 ; Write byte to SN76489.
                JR      NZ, PSG2
                LD      A, (HL)
                INC     HL
                OUT     (PSGREG), A
                JR      NEXT
PSG2            CP      30H                 ; Write byte to second SN76489.
                JR      NZ, AY
                LD      A, (HL)
                INC     HL
                OUT     (PSG2REG), A
                JR      NEXT
AY              CP      0A0H
                JR      NZ, YM2151
                LD      A, (HL)
                INC     HL
                BIT     7, A                ; Bit 7=1 for second AY-3-8910
                JR      Z, AY1
                AND     7FH
                OUT     (RSEL2), A
                LD      A, (HL)
                INC     HL
                OUT     (RDAT2), A
                JR      NEXT
AY1             OUT     (RSEL), A
                LD      A, (HL)
                INC     HL
                OUT     (RDAT), A
                JR      NEXT
YM2151          CP      054H
                JR      NZ, YM2151_2
                LD      A, (HL)
                INC     HL
                OUT     (YM2151_SEL), A
                LD      A, (HL)
                INC     HL
                OUT     (YM2151_DAT), A
                JR      NEXT
YM2151_2         CP      0A4H
                JR      NZ, WAITNN
                LD      A, (HL)
                INC     HL
                OUT     (YM2151_SEL2), A
                LD      A, (HL)
                INC     HL
                OUT     (YM2151_DAT2), A
                JR      NEXT
WAITNN          CP      61H                 ; Wait nn samples
                JR      NZ, WAIT60
                LD      A, (HL)
                INC     HL
                LD      D, (HL)
                INC     HL
                LD      (VGMPOS), HL
                LD      L, A
                LD      H, D
                LD      (VGMDLY), HL
                RET
WAIT60          CP      62H                 ; Wait 735 samples (60Hz)
                JR      NZ, WAIT50
                LD      (VGMPOS), HL
                LD      HL, 735
                LD      (VGMDLY), HL
                RET
WAIT50          CP      63H                 ; Wait 882 samples (50Hz)
                JR      NZ, WAIT1
                LD      (VGMPOS), HL
                LD      HL, 882
                LD      (VGMDLY), HL
                RET
WAIT1           CP      70H
                JP      C, NEXT
                CP      80H
                JP      NC, NEXT
                SUB     6FH
                LD      L, A
                LD      H, 0
                LD      (VGMDLY), HL
                RET

;------------------------------------------------------------------------------
; Variables
;------------------------------------------------------------------------------

VGMPOS          .DW     0
VGMDLY          .DW     0

OLDSTACK        .DW     0                   ; original stack pointer
                .DS     40H                 ; space for stack
STACK                                       ; top of stack

;------------------------------------------------------------------------------
; VGM data
;------------------------------------------------------------------------------

VGMDATA

                .END
