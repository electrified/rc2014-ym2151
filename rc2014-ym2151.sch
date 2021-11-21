EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RC2014 YM2151 sound card"
Date "%%date%%"
Rev "%%version%%"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1120 6250 0    60   ~ 0
D0
Text Label 1120 6350 0    60   ~ 0
D1
Text Label 1120 6450 0    60   ~ 0
D2
Text Label 1120 6550 0    60   ~ 0
D3
Text Label 1120 6650 0    60   ~ 0
D4
Text Label 1120 6750 0    60   ~ 0
D5
Text Label 1120 6850 0    60   ~ 0
D6
Text Label 1120 6950 0    60   ~ 0
D7
Text Label 3540 1080 2    60   ~ 0
A7
Text Label 3540 1180 2    60   ~ 0
A6
Text Label 3540 1280 2    60   ~ 0
A5
Text Label 3540 1380 2    60   ~ 0
A4
Text Label 3540 1480 2    60   ~ 0
A3
Text Label 3540 1580 2    60   ~ 0
A2
Text Label 3540 1680 2    60   ~ 0
A1
Text Label 1120 5150 0    60   ~ 0
A0
Text Label 1120 5250 0    60   ~ 0
GND
Text Label 1120 5350 0    60   ~ 0
5V
Text Label 1120 5450 0    60   ~ 0
M1
Text Label 1120 5550 0    60   ~ 0
~RESET
Text Label 1120 5950 0    60   ~ 0
~WR
Text Label 1120 6050 0    60   ~ 0
~RD
Text Label 1120 6150 0    60   ~ 0
~IORQ
Text Label 3540 2880 2    60   ~ 0
~IORQ
Wire Wire Line
	1310 1980 1460 1980
Wire Wire Line
	1310 2080 1460 2080
Wire Wire Line
	1310 2180 1460 2180
Wire Wire Line
	1310 2280 1460 2280
Wire Wire Line
	1310 2380 1460 2380
Wire Wire Line
	1310 2480 1460 2480
Wire Wire Line
	1310 2580 1460 2580
NoConn ~ 1120 7050
NoConn ~ 1120 7150
NoConn ~ 1120 7250
NoConn ~ 1120 7350
NoConn ~ 1120 7450
NoConn ~ 1120 5750
NoConn ~ 1120 5850
NoConn ~ 1120 4350
NoConn ~ 1120 4250
NoConn ~ 1120 4150
NoConn ~ 1120 4050
NoConn ~ 1120 3950
NoConn ~ 1120 3850
Wire Wire Line
	1420 5250 1520 5250
Wire Wire Line
	1420 5350 1520 5350
Wire Wire Line
	6050 4520 6050 4670
Text Label 5600 2720 2    60   ~ 0
D7
Text Label 5600 2820 2    60   ~ 0
D6
Text Label 5600 2920 2    60   ~ 0
D5
Text Label 5600 3020 2    60   ~ 0
D4
Text Label 5600 3220 2    60   ~ 0
D2
Text Label 5600 3320 2    60   ~ 0
D1
Text Label 5600 3420 2    60   ~ 0
D0
Text Label 6050 4620 1    60   ~ 0
GND
Wire Wire Line
	10050 800  10050 700 
Wire Wire Line
	10050 1000 10050 900 
NoConn ~ 2710 4450
$Comp
L Connector_Generic:Conn_01x39 P1
U 1 1 58978FEA
P 920 5550
F 0 "P1" H 920 7550 50  0000 C CNN
F 1 "RC2014 BUS" V 1020 5550 50  0000 C CNN
F 2 "electrified:PinHeader_1x39_P2.54mm_Vertical" H 920 5550 50  0001 C CNN
F 3 "" H 920 5550 50  0000 C CNN
	1    920  5550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5898D287
P 1520 5250
F 0 "#PWR03" H 1520 5000 50  0001 C CNN
F 1 "GND" V 1520 5050 50  0000 C CNN
F 2 "" H 1520 5250 50  0000 C CNN
F 3 "" H 1520 5250 50  0000 C CNN
	1    1520 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5898D2A5
P 1520 5350
F 0 "#PWR02" H 1520 5200 50  0001 C CNN
F 1 "VCC" V 1520 5540 50  0000 C CNN
F 2 "" H 1520 5350 50  0000 C CNN
F 3 "" H 1520 5350 50  0000 C CNN
	1    1520 5350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 58C9A12D
P 1950 6300
F 0 "C1" H 1975 6400 50  0000 L CNN
F 1 "0.1uF" H 1975 6200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 1988 6150 50  0001 C CNN
F 3 "" H 1950 6300 50  0001 C CNN
	1    1950 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 58C9A196
P 2300 6300
F 0 "C2" H 2325 6400 50  0000 L CNN
F 1 "0.1uF" H 2325 6200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 2338 6150 50  0001 C CNN
F 3 "" H 2300 6300 50  0001 C CNN
	1    2300 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 58C9A864
P 1950 6400
F 0 "#PWR05" H 1950 6150 50  0001 C CNN
F 1 "GND" H 1950 6250 50  0000 C CNN
F 2 "" H 1950 6400 50  0001 C CNN
F 3 "" H 1950 6400 50  0001 C CNN
	1    1950 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 58C9A8AC
P 2300 6400
F 0 "#PWR08" H 2300 6150 50  0001 C CNN
F 1 "GND" H 2300 6250 50  0000 C CNN
F 2 "" H 2300 6400 50  0001 C CNN
F 3 "" H 2300 6400 50  0001 C CNN
	1    2300 6400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 58C9A93C
P 1950 6200
F 0 "#PWR04" H 1950 6050 50  0001 C CNN
F 1 "VCC" H 1950 6350 50  0000 C CNN
F 2 "" H 1950 6200 50  0001 C CNN
F 3 "" H 1950 6200 50  0001 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 58C9A984
P 2300 6200
F 0 "#PWR07" H 2300 6050 50  0001 C CNN
F 1 "VCC" H 2300 6350 50  0000 C CNN
F 2 "" H 2300 6200 50  0001 C CNN
F 3 "" H 2300 6200 50  0001 C CNN
	1    2300 6200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 58E0E873
P 1420 5250
F 0 "#FLG02" H 1420 5325 50  0001 C CNN
F 1 "PWR_FLAG" H 2010 5250 50  0000 C CNN
F 2 "" H 1420 5250 50  0001 C CNN
F 3 "" H 1420 5250 50  0001 C CNN
	1    1420 5250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 58E0EDBF
P 1420 5350
F 0 "#FLG01" H 1420 5425 50  0001 C CNN
F 1 "PWR_FLAG" H 1990 5350 50  0000 C CNN
F 2 "" H 1420 5350 50  0001 C CNN
F 3 "" H 1420 5350 50  0001 C CNN
	1    1420 5350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x07_Odd_Even JP1
U 1 1 58DAD194
P 1660 2280
F 0 "JP1" H 1700 2770 50  0000 C CNN
F 1 "BASE ADDRESS" V 1710 2280 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x07_P2.54mm_Vertical" H 1660 1080 50  0001 C CNN
F 3 "" H 1660 1080 50  0001 C CNN
	1    1660 2280
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5898E46A
P 6050 4670
F 0 "#PWR018" H 6050 4420 50  0001 C CNN
F 1 "GND" H 6050 4520 50  0000 C CNN
F 2 "" H 6050 4670 50  0000 C CNN
F 3 "" H 6050 4670 50  0000 C CNN
	1    6050 4670
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 5F107933
P 3010 4450
F 0 "X1" H 3360 4590 50  0000 L CNN
F 1 "3.579545MHz" H 3380 4720 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 3460 4100 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 2910 4450 50  0001 C CNN
	1    3010 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5F11F677
P 3010 4750
F 0 "#PWR017" H 3010 4500 50  0001 C CNN
F 1 "GND" H 3015 4577 50  0000 C CNN
F 2 "" H 3010 4750 50  0001 C CNN
F 3 "" H 3010 4750 50  0001 C CNN
	1    3010 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR016
U 1 1 5F1200F0
P 3010 4150
F 0 "#PWR016" H 3010 4000 50  0001 C CNN
F 1 "VCC" H 3025 4323 50  0000 C CNN
F 2 "" H 3010 4150 50  0001 C CNN
F 3 "" H 3010 4150 50  0001 C CNN
	1    3010 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack3_SwitchTR CON1
U 1 1 5F4C525C
P 10250 1000
F 0 "CON1" H 9922 947 60  0000 R CNN
F 1 "SJ1-3523N" H 9922 1053 60  0000 R CNN
F 2 "electrified:Headphone_Jack_3.5mm_5_pin" H 10450 1200 60  0001 L CNN
F 3 "https://www.cui.com/product/resource/digikeypdf/sj1-352xn_series.pdf" H 10450 1300 60  0001 L CNN
F 4 "CP1-3523N-ND" H 10450 1400 60  0001 L CNN "Digi-Key_PN"
F 5 "SJ1-3523N" H 10450 1500 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 10450 1600 60  0001 L CNN "Category"
F 7 "Barrel - Audio Connectors" H 10450 1700 60  0001 L CNN "Family"
F 8 "https://www.cui.com/product/resource/digikeypdf/sj1-352xn_series.pdf" H 10450 1800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cui-inc/SJ1-3523N/CP1-3523N-ND/738689" H 10450 1900 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN JACK STEREO 3.5MM R/A" H 10450 2000 60  0001 L CNN "Description"
F 11 "CUI Inc." H 10450 2100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10450 2200 60  0001 L CNN "Status"
	1    10250 1000
	-1   0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F1AF0F5
P 10510 1780
F 0 "H1" H 10610 1826 50  0000 L CNN
F 1 "MountingHole" H 10610 1735 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 10510 1780 50  0001 C CNN
F 3 "~" H 10510 1780 50  0001 C CNN
	1    10510 1780
	1    0    0    -1  
$EndComp
Text Notes 7180 6820 0    50   Italic 0
these are the things that dreams are made of
$Comp
L electrified:YM2151 U2
U 1 1 617498D4
P 6100 3720
F 0 "U2" H 6330 5110 50  0000 C CNN
F 1 "YM2151" H 6370 5000 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 6750 2320 50  0001 C CNN
F 3 "" H 6850 3220 50  0001 C CNN
	1    6100 3720
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4520 6050 4520
Connection ~ 6050 4520
$Comp
L power:VCC #PWR019
U 1 1 6177E7E7
P 6100 2520
F 0 "#PWR019" H 6100 2370 50  0001 C CNN
F 1 "VCC" H 6100 2690 50  0000 C CNN
F 2 "" H 6100 2520 50  0001 C CNN
F 3 "" H 6100 2520 50  0001 C CNN
	1    6100 2520
	1    0    0    -1  
$EndComp
Connection ~ 10050 800 
Wire Wire Line
	9870 800  10050 800 
Connection ~ 10050 1000
Wire Wire Line
	9870 1000 10050 1000
Text Label 3310 4450 0    60   ~ 0
CLK
Text Label 5600 3620 2    60   ~ 0
CLK
Text Label 5600 3770 2    50   ~ 0
~CS
$Comp
L power:GND #PWR015
U 1 1 617E0C54
P 4040 3180
F 0 "#PWR015" H 4040 2930 50  0001 C CNN
F 1 "GND" H 4040 3030 50  0000 C CNN
F 2 "" H 4040 3180 50  0000 C CNN
F 3 "" H 4040 3180 50  0000 C CNN
	1    4040 3180
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 617E1665
P 4040 780
F 0 "#PWR014" H 4040 630 50  0001 C CNN
F 1 "VCC" H 4040 950 50  0000 C CNN
F 2 "" H 4040 780 50  0001 C CNN
F 3 "" H 4040 780 50  0001 C CNN
	1    4040 780 
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network07 RN1
U 1 1 617F613C
P 2380 1750
F 0 "RN1" H 2768 1796 50  0000 L CNN
F 1 "10K" H 2768 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP8" V 2855 1750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 2380 1750 50  0001 C CNN
	1    2380 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 617FB43D
P 2080 1550
F 0 "#PWR06" H 2080 1400 50  0001 C CNN
F 1 "VCC" H 2080 1720 50  0000 C CNN
F 2 "" H 2080 1550 50  0001 C CNN
F 3 "" H 2080 1550 50  0001 C CNN
	1    2080 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3540 1980 2080 1980
Wire Wire Line
	1960 2080 2180 2080
Wire Wire Line
	3540 2180 2280 2180
Wire Wire Line
	1960 2280 2380 2280
Wire Wire Line
	1960 2380 2480 2380
Wire Wire Line
	3540 2480 2580 2480
Wire Wire Line
	1960 2580 2680 2580
Wire Wire Line
	2080 1950 2080 1980
Connection ~ 2080 1980
Wire Wire Line
	2080 1980 1960 1980
Wire Wire Line
	2180 1950 2180 2080
Connection ~ 2180 2080
Wire Wire Line
	2180 2080 3540 2080
Wire Wire Line
	2280 1950 2280 2180
Connection ~ 2280 2180
Wire Wire Line
	2280 2180 1960 2180
Wire Wire Line
	2380 1950 2380 2280
Connection ~ 2380 2280
Wire Wire Line
	2380 2280 3540 2280
Wire Wire Line
	2480 1950 2480 2380
Connection ~ 2480 2380
Wire Wire Line
	2480 2380 3540 2380
Wire Wire Line
	2580 1950 2580 2480
Connection ~ 2580 2480
Wire Wire Line
	2580 2480 1960 2480
Wire Wire Line
	2680 1950 2680 2580
Connection ~ 2680 2580
Wire Wire Line
	2680 2580 3540 2580
Text Label 1120 4450 0    60   ~ 0
A7
Text Label 1120 4550 0    60   ~ 0
A6
Text Label 1120 4650 0    60   ~ 0
A5
Text Label 1120 4750 0    60   ~ 0
A4
Text Label 1120 4850 0    60   ~ 0
A3
Text Label 1120 4950 0    60   ~ 0
A2
Text Label 1120 5050 0    60   ~ 0
A1
Wire Wire Line
	1310 1980 1310 2080
Connection ~ 1310 2080
Wire Wire Line
	1310 2080 1310 2180
Connection ~ 1310 2180
Wire Wire Line
	1310 2180 1310 2280
Connection ~ 1310 2280
Wire Wire Line
	1310 2280 1310 2380
Connection ~ 1310 2380
Wire Wire Line
	1310 2380 1310 2480
Connection ~ 1310 2480
Wire Wire Line
	1310 2480 1310 2580
Connection ~ 1310 2580
Wire Wire Line
	1310 2580 1310 2710
$Comp
L power:GND #PWR01
U 1 1 6188E233
P 1310 2710
F 0 "#PWR01" H 1310 2460 50  0001 C CNN
F 1 "GND" H 1315 2537 50  0000 C CNN
F 2 "" H 1310 2710 50  0001 C CNN
F 3 "" H 1310 2710 50  0001 C CNN
	1    1310 2710
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT688 U1
U 1 1 6173199F
P 4040 1980
F 0 "U1" H 4584 2026 50  0000 L CNN
F 1 "74HCT688" H 4584 1935 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm_Socket" H 4040 1980 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/cd54hc688.pdf" H 4040 1980 50  0001 C CNN
	1    4040 1980
	1    0    0    -1  
$EndComp
Text Label 3540 1780 2    60   ~ 0
M1
Text Label 5600 3970 2    60   ~ 0
~WR
Text Label 5600 3870 2    60   ~ 0
~RD
Text Label 5600 4170 2    60   ~ 0
~RESET
Text Label 5600 4070 2    60   ~ 0
A0
Text Label 6840 3170 0    60   ~ 0
~RESET
Wire Wire Line
	7100 2970 6600 2970
$Comp
L electrified:YM3012 U3
U 1 1 6174B77E
P 7600 3770
F 0 "U3" H 7900 5180 50  0000 C CNN
F 1 "YM3012" H 7800 4920 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_Socket" H 8250 2370 50  0001 C CNN
F 3 "" H 8350 3270 50  0001 C CNN
	1    7600 3770
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3070 6600 3070
Wire Wire Line
	7100 3170 6840 3170
Wire Wire Line
	6600 2770 7100 2770
Wire Wire Line
	6600 2870 7100 2870
$Comp
L power:GND #PWR021
U 1 1 61977E5F
P 7700 4070
F 0 "#PWR021" H 7700 3820 50  0001 C CNN
F 1 "GND" H 7700 3920 50  0000 C CNN
F 2 "" H 7700 4070 50  0000 C CNN
F 3 "" H 7700 4070 50  0000 C CNN
	1    7700 4070
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 2000 9570 2000
Wire Wire Line
	8990 3270 8920 3270
Wire Wire Line
	8920 3270 8920 3470
Wire Wire Line
	8920 3470 9690 3470
Wire Wire Line
	9690 3470 9690 3170
Wire Wire Line
	9690 3170 9590 3170
Wire Wire Line
	8100 3170 8340 3170
Wire Wire Line
	8100 2770 8360 2770
Wire Wire Line
	8360 2770 8360 1900
Wire Wire Line
	8360 1900 8480 1900
$Comp
L Device:C_Small C7
U 1 1 61A169E8
P 8480 2000
F 0 "C7" H 8568 2046 50  0000 L CNN
F 1 "10uF / Omit?" H 8568 1955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8480 2000 50  0001 C CNN
F 3 "~" H 8480 2000 50  0001 C CNN
	1    8480 2000
	1    0    0    -1  
$EndComp
Connection ~ 8480 1900
Wire Wire Line
	8480 1900 8970 1900
$Comp
L Device:R R1
U 1 1 61A54EB8
P 8490 3170
F 0 "R1" V 8540 3330 50  0000 C CNN
F 1 "100 / 270" V 8450 3490 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8420 3170 50  0001 C CNN
F 3 "~" H 8490 3170 50  0001 C CNN
	1    8490 3170
	0    1    1    0   
$EndComp
Wire Wire Line
	8640 3170 8700 3170
Wire Wire Line
	9690 3470 9690 3570
Wire Wire Line
	9690 3570 8700 3570
Wire Wire Line
	8700 3170 8700 3570
Connection ~ 9690 3470
Wire Wire Line
	8740 2970 8740 2470
Wire Wire Line
	8740 2470 9650 2470
Wire Wire Line
	9650 4100 9780 4100
Connection ~ 9780 4100
Wire Wire Line
	9780 4100 10120 4100
Wire Wire Line
	8100 3270 8580 3270
Wire Wire Line
	8580 3270 8580 4000
Wire Wire Line
	8100 3370 8410 3370
Wire Wire Line
	8410 3370 8410 4630
Wire Wire Line
	8410 4630 8700 4630
Wire Wire Line
	8580 4000 8700 4000
$Comp
L Device:C_Small C8
U 1 1 61AC980F
P 8700 4100
F 0 "C8" H 8792 4146 50  0000 L CNN
F 1 "1500pF / 3300pF" H 8600 4330 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8700 4100 50  0001 C CNN
F 3 "~" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Connection ~ 8700 4000
Wire Wire Line
	8700 4000 9050 4000
$Comp
L Device:C_Small C9
U 1 1 61AD2C10
P 8700 4730
F 0 "C9" H 8792 4776 50  0000 L CNN
F 1 "1500pF / 3300pF" H 8460 4950 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8700 4730 50  0001 C CNN
F 3 "~" H 8700 4730 50  0001 C CNN
	1    8700 4730
	1    0    0    -1  
$EndComp
Connection ~ 8700 4630
Wire Wire Line
	8700 4630 9060 4630
Text Label 9920 4100 0    50   ~ 0
R
Text Label 9930 4730 0    50   ~ 0
L
$Comp
L Device:CP_Small C10
U 1 1 61AF546F
P 9770 800
F 0 "C10" V 9900 800 50  0000 C CNN
F 1 "4.7uF" V 9990 800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 9770 800 50  0001 C CNN
F 3 "~" H 9770 800 50  0001 C CNN
	1    9770 800 
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP_Small C11
U 1 1 61AF617A
P 9770 1000
F 0 "C11" V 9541 1000 50  0000 C CNN
F 1 "4.7uF" V 9632 1000 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 9770 1000 50  0001 C CNN
F 3 "~" H 9770 1000 50  0001 C CNN
	1    9770 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9670 800  9340 800 
Wire Wire Line
	9670 1000 9340 1000
Text Label 9420 800  0    50   ~ 0
L
Text Label 9420 1000 0    50   ~ 0
R
NoConn ~ 1120 5650
$Comp
L Connector_Generic:Conn_01x07 J1
U 1 1 61B3501F
P 10270 5640
F 0 "J1" H 10350 5682 50  0000 L CNN
F 1 "Conn_01x03" H 10350 5591 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x07_P2.54mm_Vertical" H 10270 5640 50  0001 C CNN
F 3 "~" H 10270 5640 50  0001 C CNN
	1    10270 5640
	1    0    0    -1  
$EndComp
Text Label 6600 3170 0    50   ~ 0
CT1
Text Label 6600 3270 0    50   ~ 0
CT2
Text Label 6600 3370 0    50   ~ 0
~IRQ
Text Label 10070 5340 2    50   ~ 0
CT1
Text Label 10070 5440 2    50   ~ 0
CT2
Text Label 10070 5540 2    50   ~ 0
~IRQ
NoConn ~ 1120 3650
NoConn ~ 1120 3750
Wire Wire Line
	7500 4070 7500 4320
Wire Wire Line
	7600 4070 7600 4320
$Comp
L Amplifier_Operational:NJM4556A U4
U 1 1 617E5037
P 9270 2000
F 0 "U4" H 9270 2367 50  0000 C CNN
F 1 "NJM4556" H 9270 2276 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9270 2000 50  0001 C CNN
F 3 "" H 9270 2000 50  0001 C CNN
	1    9270 2000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NJM4558 U4
U 2 1 617EA28C
P 9290 3170
F 0 "U4" H 9290 3537 50  0000 C CNN
F 1 "NJM4556" H 9290 3446 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9290 3170 50  0001 C CNN
F 3 "" H 9290 3170 50  0001 C CNN
	2    9290 3170
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NJM4556A U5
U 1 1 617ECDC8
P 9350 4100
F 0 "U5" H 9440 4340 50  0000 C CNN
F 1 "NJM4556" H 9540 4260 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9350 4100 50  0001 C CNN
F 3 "" H 9350 4100 50  0001 C CNN
	1    9350 4100
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NJM4558 U4
U 3 1 617F1ABB
P 7600 5370
F 0 "U4" H 7558 5416 50  0000 L CNN
F 1 "NJM4556" H 7558 5325 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 7600 5370 50  0001 C CNN
F 3 "" H 7600 5370 50  0001 C CNN
	3    7600 5370
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NJM4558 U5
U 3 1 617F481B
P 8160 5380
F 0 "U5" H 8118 5426 50  0000 L CNN
F 1 "NJM4556" H 8118 5335 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 8160 5380 50  0001 C CNN
F 3 "" H 8160 5380 50  0001 C CNN
	3    8160 5380
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:NJM4556A U5
U 2 1 617EF377
P 9360 4730
F 0 "U5" H 9340 5010 50  0000 C CNN
F 1 "NJM4556" H 9430 4940 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 9360 4730 50  0001 C CNN
F 3 "" H 9360 4730 50  0001 C CNN
	2    9360 4730
	1    0    0    -1  
$EndComp
Wire Wire Line
	8920 4200 8920 4350
Wire Wire Line
	8920 4350 9780 4350
Wire Wire Line
	9780 4350 9780 4100
Wire Wire Line
	8920 4200 9050 4200
Wire Wire Line
	9660 4730 9780 4730
Wire Wire Line
	9060 4830 8900 4830
Wire Wire Line
	8900 4830 8900 4990
Wire Wire Line
	8900 4990 9780 4990
Wire Wire Line
	9780 4990 9780 4730
Connection ~ 9780 4730
Wire Wire Line
	9780 4730 10120 4730
Wire Wire Line
	8640 2870 8640 2100
Wire Wire Line
	8640 2100 8970 2100
Wire Wire Line
	9650 2000 9650 2470
Wire Wire Line
	8100 2870 8640 2870
Wire Wire Line
	8100 2970 8740 2970
$Comp
L power:VCC #PWR013
U 1 1 618AA2BD
P 3540 2680
F 0 "#PWR013" H 3540 2530 50  0001 C CNN
F 1 "VCC" H 3540 2850 50  0000 C CNN
F 2 "" H 3540 2680 50  0001 C CNN
F 3 "" H 3540 2680 50  0001 C CNN
	1    3540 2680
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 6188C575
P 7500 4320
F 0 "#PWR0103" H 7500 4070 50  0001 C CNN
F 1 "GNDA" H 7505 4147 50  0000 C CNN
F 2 "" H 7500 4320 50  0001 C CNN
F 3 "" H 7500 4320 50  0001 C CNN
	1    7500 4320
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4320 7500 4320
Connection ~ 7500 4320
$Comp
L power:VCC #PWR0105
U 1 1 618B1281
P 9800 5940
F 0 "#PWR0105" H 9800 5790 50  0001 C CNN
F 1 "VCC" V 9830 5730 50  0000 C CNN
F 2 "" H 9800 5940 50  0001 C CNN
F 3 "" H 9800 5940 50  0001 C CNN
	1    9800 5940
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDA #PWR0109
U 1 1 618FE76D
P 8700 4830
F 0 "#PWR0109" H 8700 4580 50  0001 C CNN
F 1 "GNDA" H 8705 4657 50  0000 C CNN
F 2 "" H 8700 4830 50  0001 C CNN
F 3 "" H 8700 4830 50  0001 C CNN
	1    8700 4830
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0110
U 1 1 619072EF
P 8700 4200
F 0 "#PWR0110" H 8700 3950 50  0001 C CNN
F 1 "GNDA" H 8705 4027 50  0000 C CNN
F 2 "" H 8700 4200 50  0001 C CNN
F 3 "" H 8700 4200 50  0001 C CNN
	1    8700 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0111
U 1 1 619080D1
P 8480 2100
F 0 "#PWR0111" H 8480 1850 50  0001 C CNN
F 1 "GNDA" H 8485 1927 50  0000 C CNN
F 2 "" H 8480 2100 50  0001 C CNN
F 3 "" H 8480 2100 50  0001 C CNN
	1    8480 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0112
U 1 1 6190891F
P 10050 1100
F 0 "#PWR0112" H 10050 850 50  0001 C CNN
F 1 "GNDA" H 10055 927 50  0000 C CNN
F 2 "" H 10050 1100 50  0001 C CNN
F 3 "" H 10050 1100 50  0001 C CNN
	1    10050 1100
	1    0    0    -1  
$EndComp
Text Label 6650 2770 0    50   ~ 0
DAC_CLK
Text Label 6650 2870 0    50   ~ 0
DAC_DATA
Text Label 6650 2970 0    50   ~ 0
DAC_SAM1
Text Label 6650 3070 0    50   ~ 0
DAC_SAM2
Text Label 8170 2770 0    50   ~ 0
RB
Text Label 8170 2870 0    50   ~ 0
BC
Text Label 8170 2970 0    50   ~ 0
MP
Text Label 8170 3070 0    50   ~ 0
TO_BUFF
Text Label 8170 3170 0    50   ~ 0
COM
Text Label 8170 3270 0    50   ~ 0
VOUT_CH1
Text Label 8170 3370 0    50   ~ 0
VOUT_CH2
$Comp
L Device:C_Small C12
U 1 1 6198D278
P 4060 6290
F 0 "C12" H 4085 6390 50  0000 L CNN
F 1 "0.1uF" H 4085 6190 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 4098 6140 50  0001 C CNN
F 3 "" H 4060 6290 50  0001 C CNN
	1    4060 6290
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR012
U 1 1 6198DB82
P 4060 6190
F 0 "#PWR012" H 4060 6040 50  0001 C CNN
F 1 "VCC" H 4060 6340 50  0000 C CNN
F 2 "" H 4060 6190 50  0001 C CNN
F 3 "" H 4060 6190 50  0001 C CNN
	1    4060 6190
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2110 7600 2570
$Comp
L Device:C_Small C3
U 1 1 619A302E
P 7790 2250
F 0 "C3" H 7882 2296 50  0000 L CNN
F 1 "0.1uF" H 7882 2205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7790 2250 50  0001 C CNN
F 3 "~" H 7790 2250 50  0001 C CNN
	1    7790 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 2110 7790 2110
Wire Wire Line
	7790 2110 7790 2150
Connection ~ 7600 2110
$Comp
L power:GNDA #PWR0115
U 1 1 619B5A0A
P 7790 2350
F 0 "#PWR0115" H 7790 2100 50  0001 C CNN
F 1 "GNDA" H 7795 2177 50  0000 C CNN
F 2 "" H 7790 2350 50  0001 C CNN
F 3 "" H 7790 2350 50  0001 C CNN
	1    7790 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0114
U 1 1 6193B486
P 9990 2930
F 0 "#PWR0114" H 9990 2680 50  0001 C CNN
F 1 "GNDA" H 9995 2757 50  0000 C CNN
F 2 "" H 9990 2930 50  0001 C CNN
F 3 "" H 9990 2930 50  0001 C CNN
	1    9990 2930
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0113
U 1 1 61933680
P 10370 2940
F 0 "#PWR0113" H 10370 2690 50  0001 C CNN
F 1 "GNDA" H 10375 2767 50  0000 C CNN
F 2 "" H 10370 2940 50  0001 C CNN
F 3 "" H 10370 2940 50  0001 C CNN
	1    10370 2940
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61B07C69
P 10370 2840
F 0 "C6" H 10395 2940 50  0000 L CNN
F 1 "0.1uF" H 10395 2740 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 10408 2690 50  0001 C CNN
F 3 "" H 10370 2840 50  0001 C CNN
	1    10370 2840
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 58DB1AE2
P 9990 2830
F 0 "C4" H 10015 2930 50  0000 L CNN
F 1 "0.1uF" H 10015 2730 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 10028 2680 50  0001 C CNN
F 3 "" H 9990 2830 50  0001 C CNN
	1    9990 2830
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 618EC639
P 5280 5810
F 0 "#PWR0107" H 5280 5560 50  0001 C CNN
F 1 "GNDA" H 5285 5637 50  0000 C CNN
F 2 "" H 5280 5810 50  0001 C CNN
F 3 "" H 5280 5810 50  0001 C CNN
	1    5280 5810
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR020
U 1 1 6178325C
P 7600 2110
F 0 "#PWR020" H 7600 1960 50  0001 C CNN
F 1 "VCC" H 7615 2283 50  0000 C CNN
F 2 "" H 7600 2110 50  0001 C CNN
F 3 "" H 7600 2110 50  0001 C CNN
	1    7600 2110
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 618E25D1
P 6790 5210
F 0 "#PWR0106" H 6790 4960 50  0001 C CNN
F 1 "GNDA" H 6795 5037 50  0000 C CNN
F 2 "" H 6790 5210 50  0001 C CNN
F 3 "" H 6790 5210 50  0001 C CNN
	1    6790 5210
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61BDA6DF
P 6790 5210
F 0 "#PWR0102" H 6790 4960 50  0001 C CNN
F 1 "GND" H 6790 5060 50  0000 C CNN
F 2 "" H 6790 5210 50  0000 C CNN
F 3 "" H 6790 5210 50  0000 C CNN
	1    6790 5210
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 619FD252
P 4060 6390
F 0 "#PWR09" H 4060 6140 50  0001 C CNN
F 1 "GND" H 4060 6240 50  0000 C CNN
F 2 "" H 4060 6390 50  0001 C CNN
F 3 "" H 4060 6390 50  0001 C CNN
	1    4060 6390
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR023
U 1 1 61B082CD
P 3730 6190
F 0 "#PWR023" H 3730 6040 50  0001 C CNN
F 1 "VCC" H 3730 6340 50  0000 C CNN
F 2 "" H 3730 6190 50  0001 C CNN
F 3 "" H 3730 6190 50  0001 C CNN
	1    3730 6190
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6198DB78
P 3730 6390
F 0 "#PWR022" H 3730 6140 50  0001 C CNN
F 1 "GND" H 3730 6240 50  0000 C CNN
F 2 "" H 3730 6390 50  0001 C CNN
F 3 "" H 3730 6390 50  0001 C CNN
	1    3730 6390
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 6194B64E
P 3730 6290
F 0 "C5" H 3822 6336 50  0000 L CNN
F 1 "4.7uF" H 3760 6180 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm" H 3730 6290 50  0001 C CNN
F 3 "~" H 3730 6290 50  0001 C CNN
	1    3730 6290
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR030
U 1 1 617F4011
P 6440 5840
F 0 "#PWR030" H 6440 5690 50  0001 C CNN
F 1 "VCC" H 6455 6013 50  0000 C CNN
F 2 "" H 6440 5840 50  0001 C CNN
F 3 "" H 6440 5840 50  0001 C CNN
	1    6440 5840
	1    0    0    -1  
$EndComp
$Comp
L power:VSS #PWR025
U 1 1 61A1D22D
P 7500 5670
F 0 "#PWR025" H 7500 5520 50  0001 C CNN
F 1 "VSS" H 7515 5843 50  0000 C CNN
F 2 "" H 7500 5670 50  0001 C CNN
F 3 "" H 7500 5670 50  0001 C CNN
	1    7500 5670
	-1   0    0    1   
$EndComp
$Comp
L power:VSS #PWR027
U 1 1 61A1E0AD
P 8060 5680
F 0 "#PWR027" H 8060 5530 50  0001 C CNN
F 1 "VSS" H 8075 5853 50  0000 C CNN
F 2 "" H 8060 5680 50  0001 C CNN
F 3 "" H 8060 5680 50  0001 C CNN
	1    8060 5680
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR024
U 1 1 61A271F8
P 7500 5070
F 0 "#PWR024" H 7500 4920 50  0001 C CNN
F 1 "VDD" H 7515 5243 50  0000 C CNN
F 2 "" H 7500 5070 50  0001 C CNN
F 3 "" H 7500 5070 50  0001 C CNN
	1    7500 5070
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR026
U 1 1 61A27C9A
P 8060 5080
F 0 "#PWR026" H 8060 4930 50  0001 C CNN
F 1 "VDD" H 8075 5253 50  0000 C CNN
F 2 "" H 8060 5080 50  0001 C CNN
F 3 "" H 8060 5080 50  0001 C CNN
	1    8060 5080
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR011
U 1 1 61A27DCF
P 6440 6140
F 0 "#PWR011" H 6440 5990 50  0001 C CNN
F 1 "VDD" H 6455 6313 50  0000 C CNN
F 2 "" H 6440 6140 50  0001 C CNN
F 3 "" H 6440 6140 50  0001 C CNN
	1    6440 6140
	-1   0    0    1   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP3
U 1 1 61A3CD50
P 6440 5990
F 0 "JP3" V 6394 6058 50  0000 L CNN
F 1 "Opamp + to 5V" V 6485 6058 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_RoundedPad1.0x1.5mm" H 6440 5990 50  0001 C CNN
F 3 "~" H 6440 5990 50  0001 C CNN
	1    6440 5990
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR028
U 1 1 61A7CC53
P 9990 2730
F 0 "#PWR028" H 9990 2580 50  0001 C CNN
F 1 "VDD" H 10005 2903 50  0000 C CNN
F 2 "" H 9990 2730 50  0001 C CNN
F 3 "" H 9990 2730 50  0001 C CNN
	1    9990 2730
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR029
U 1 1 61A8D4C3
P 10370 2740
F 0 "#PWR029" H 10370 2590 50  0001 C CNN
F 1 "VDD" H 10385 2913 50  0000 C CNN
F 2 "" H 10370 2740 50  0001 C CNN
F 3 "" H 10370 2740 50  0001 C CNN
	1    10370 2740
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0116
U 1 1 61ABC023
P 9620 5840
F 0 "#PWR0116" H 9620 5690 50  0001 C CNN
F 1 "VDD" V 9650 5450 50  0000 C CNN
F 2 "" H 9620 5840 50  0001 C CNN
F 3 "" H 9620 5840 50  0001 C CNN
	1    9620 5840
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 61A3ACB3
P 5280 5960
F 0 "JP2" V 5234 6028 50  0000 L CNN
F 1 "Opamp - to GND" V 5325 6028 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_RoundedPad1.0x1.5mm" H 5280 5960 50  0001 C CNN
F 3 "~" H 5280 5960 50  0001 C CNN
	1    5280 5960
	0    1    1    0   
$EndComp
$Comp
L power:VSS #PWR010
U 1 1 61A291D1
P 5280 6110
F 0 "#PWR010" H 5280 5960 50  0001 C CNN
F 1 "VSS" H 5295 6283 50  0000 C CNN
F 2 "" H 5280 6110 50  0001 C CNN
F 3 "" H 5280 6110 50  0001 C CNN
	1    5280 6110
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61BDEA09
P 9620 5840
F 0 "#FLG0101" H 9620 5915 50  0001 C CNN
F 1 "PWR_FLAG" H 9350 5880 50  0000 C CNN
F 2 "" H 9620 5840 50  0001 C CNN
F 3 "~" H 9620 5840 50  0001 C CNN
	1    9620 5840
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 618A79AA
P 9950 5640
F 0 "#PWR0104" H 9950 5390 50  0001 C CNN
F 1 "GND" V 9910 5700 50  0000 C CNN
F 2 "" H 9950 5640 50  0000 C CNN
F 3 "" H 9950 5640 50  0000 C CNN
	1    9950 5640
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 5640 10070 5640
Wire Wire Line
	10070 5740 9800 5740
$Comp
L power:VSS #PWR0108
U 1 1 61AB2C30
P 9800 5740
F 0 "#PWR0108" H 9800 5590 50  0001 C CNN
F 1 "VSS" V 9840 5530 50  0000 C CNN
F 2 "" H 9800 5740 50  0001 C CNN
F 3 "" H 9800 5740 50  0001 C CNN
	1    9800 5740
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 61C00FF4
P 9800 5740
F 0 "#FLG0102" H 9800 5815 50  0001 C CNN
F 1 "PWR_FLAG" H 9350 5780 50  0000 C CNN
F 2 "" H 9800 5740 50  0001 C CNN
F 3 "~" H 9800 5740 50  0001 C CNN
	1    9800 5740
	1    0    0    -1  
$EndComp
Connection ~ 9800 5740
Wire Wire Line
	10070 5940 9800 5940
Wire Wire Line
	9620 5840 10070 5840
Connection ~ 9620 5840
Text Label 5600 3120 2    60   ~ 0
D3
Text Label 4540 1080 0    50   ~ 0
~CS
Wire Wire Line
	1120 5250 1420 5250
Connection ~ 1420 5250
Wire Wire Line
	1420 5350 1120 5350
Connection ~ 1420 5350
Wire Wire Line
	8100 3070 8990 3070
$EndSCHEMATC
