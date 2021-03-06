10 REM Modified for Z80 from https://commander-cx16.fandom.com/wiki/Beep
20 S=600 : REM NOTE SPEED
30 YA=&HFE: YD=&HFF: REM YM2151 ADDRESS/DATA PORTS
40 LN=&H3A : HN=&H44 : REM LN/HN = LO NOTE / HI NOTE
50 REM --- LOAD PATCH INTO VOICE 0 ---
60 FOR I=1 TO 5
70 READ A, D
80 OUT YA,A : OUT YD,D
90 NEXT I
100 REM --- PLAY HAPPY SOUND ---
110 OUT YA,&H28 : REM &H28 IS VOICE 0 FREQ. SETTING
120 OUT YD,LN : REM SET THE FREQ. TO LO NOTE VALUE
130 OUT YA,&H8 : REM SELECT THE KEYUP/DN REGISTER
140 OUT YD,0 : REM RELEASE ANY PREVIOUS NOTE
150 OUT YD,&H40 : REM PLAY THE NOTE
160 FOR I = 1 TO S : NEXT
170 OUT YD,0 : REM RELEASE THE NOTE
180 FOR I = 1 TO S : NEXT
190 OUT YA,&H28
200 OUT YD,HN : REM SET NEXT NOTE FREQ. TO HI-NOTE
210 OUT YA,&H8
220 OUT YD,0
230 OUT YD,&H40
240 FOR I = 1 TO S : NEXT
250 OUT YD,0 : REM RELEASE THE SECOND NOTE
260 END
270 REM --- PATCH DATA ---
280 DATA &H20, &HC0
290 DATA &H58, &H01
300 DATA &H98, &H1F
310 DATA &HB8, &H0D
320 DATA &HF8, &HF6