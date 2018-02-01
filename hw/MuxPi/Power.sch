EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MuxPi:R R45
U 1 1 5844A114
P 5250 4350
F 0 "R45" V 5150 4350 50  0000 C CNN
F 1 "10K" V 5350 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5180 4350 30  0001 C CNN
F 3 "" H 5250 4350 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5250 4350 60  0001 C CNN "Shop link"
	1    5250 4350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R46
U 1 1 5844A11B
P 5500 3850
F 0 "R46" V 5400 3850 50  0000 C CNN
F 1 "10K" V 5600 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5430 3850 30  0001 C CNN
F 3 "" H 5500 3850 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5500 3850 60  0001 C CNN "Shop link"
	1    5500 3850
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:GND #PWR0145
U 1 1 5844A129
P 5800 4550
F 0 "#PWR0145" H 5800 4300 50  0001 C CNN
F 1 "GND" H 5800 4400 50  0000 C CNN
F 2 "" H 5800 4550 60  0000 C CNN
F 3 "" H 5800 4550 60  0000 C CNN
	1    5800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3500 7150 3500
Wire Wire Line
	7050 3600 7150 3600
Connection ~ 7150 3600
Wire Wire Line
	7150 3700 7050 3700
Connection ~ 7150 3700
Wire Wire Line
	7150 3800 7050 3800
Wire Wire Line
	5250 4150 5250 4200
Wire Wire Line
	6350 3700 6450 3700
Wire Wire Line
	6350 3500 6350 3600
Wire Wire Line
	6450 3600 6350 3600
Connection ~ 6350 3600
Connection ~ 5250 4150
Wire Wire Line
	5250 3850 5350 3850
Wire Wire Line
	4750 3500 4750 3350
Connection ~ 5250 3500
Wire Wire Line
	5650 3850 5800 3850
Wire Wire Line
	5800 3900 5800 3850
Connection ~ 5800 3850
Wire Wire Line
	5050 4150 5250 4150
Connection ~ 6350 3500
Wire Wire Line
	2650 3500 2850 3500
Wire Wire Line
	7150 3500 7150 3600
$Comp
L MuxPi:+5V #PWR0143
U 1 1 5844A154
P 4750 3350
F 0 "#PWR0143" H 4750 3200 50  0001 C CNN
F 1 "+5V" H 4765 3523 50  0000 C CNN
F 2 "" H 4750 3350 50  0000 C CNN
F 3 "" H 4750 3350 50  0000 C CNN
	1    4750 3350
	1    0    0    -1  
$EndComp
Connection ~ 7150 3500
$Comp
L MuxPi:GND #PWR0144
U 1 1 5844A15B
P 5250 4550
F 0 "#PWR0144" H 5250 4300 50  0001 C CNN
F 1 "GND" H 5250 4400 50  0000 C CNN
F 2 "" H 5250 4550 60  0000 C CNN
F 3 "" H 5250 4550 60  0000 C CNN
	1    5250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4500 5250 4550
Wire Wire Line
	5800 4300 5800 4550
$Comp
L MuxPi:VDD #PWR0149
U 1 1 5844A163
P 8000 3350
F 0 "#PWR0149" H 8000 3200 50  0001 C CNN
F 1 "VDD" H 8017 3523 50  0000 C CNN
F 2 "" H 8000 3350 50  0000 C CNN
F 3 "" H 8000 3350 50  0000 C CNN
	1    8000 3350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CP C49
U 1 1 5844A169
P 7850 3700
F 0 "C49" H 7900 3800 50  0000 L CNN
F 1 "10uF/10V" H 7900 3600 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 7888 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 7850 3700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 7850 3700 60  0001 C CNN "Shop link"
	1    7850 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0148
U 1 1 5844A170
P 7850 3900
F 0 "#PWR0148" H 7850 3650 50  0001 C CNN
F 1 "GND" H 7850 3750 50  0000 C CNN
F 2 "" H 7850 3900 60  0000 C CNN
F 3 "" H 7850 3900 60  0000 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3850 7850 3900
Wire Wire Line
	7850 3550 7850 3500
Connection ~ 7850 3500
$Comp
L MuxPi:C C48
U 1 1 5844A179
P 7400 3700
F 0 "C48" H 7450 3800 50  0000 L CNN
F 1 "100nF/50V" H 7200 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7438 3550 50  0001 C CNN
F 3 "" H 7400 3700 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 7400 3700 60  0001 C CNN "Shop link"
	1    7400 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0147
U 1 1 5844A180
P 7400 3900
F 0 "#PWR0147" H 7400 3650 50  0001 C CNN
F 1 "GND" H 7400 3750 50  0000 C CNN
F 2 "" H 7400 3900 60  0000 C CNN
F 3 "" H 7400 3900 60  0000 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3850 7400 3900
Wire Wire Line
	7400 3550 7400 3500
Connection ~ 7400 3500
Wire Wire Line
	8000 3500 8000 3350
$Comp
L MuxPi:CP C47
U 1 1 5844A18A
P 3550 3700
F 0 "C47" H 3600 3800 50  0000 L CNN
F 1 "100uF/10V" H 3350 4000 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-C_EIA-6032-28_Reflow" H 3588 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 3550 3700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491c107k010at/kondensatory-tantalowe-smd/kemet/" H 3550 3700 60  0001 C CNN "Shop link"
	1    3550 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0141
U 1 1 5844A191
P 3550 3900
F 0 "#PWR0141" H 3550 3650 50  0001 C CNN
F 1 "GND" H 3550 3750 50  0000 C CNN
F 2 "" H 3550 3900 60  0000 C CNN
F 3 "" H 3550 3900 60  0000 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3550 3550 3500
Connection ~ 3550 3500
$Comp
L MuxPi:BARREL_JACK CON1
U 1 1 5844A199
P 1850 3600
F 0 "CON1" H 1831 3925 50  0000 C CNN
F 1 "PC-GK2.1" H 1831 3834 50  0000 C CNN
F 2 "mux-footprints:PC-GK2.5" H 1850 3600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0c2caa550314868a0a12e8b9344a6069/pc-gk2.1.pdf" H 1850 3600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/pc-gk2.1/zlacza-dc/ninigi/" H 1850 3600 60  0001 C CNN "Shop link"
	1    1850 3600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0139
U 1 1 5844A1A0
P 2200 3900
F 0 "#PWR0139" H 2200 3650 50  0001 C CNN
F 1 "GND" H 2200 3750 50  0000 C CNN
F 2 "" H 2200 3900 60  0000 C CNN
F 3 "" H 2200 3900 60  0000 C CNN
	1    2200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3700 2200 3700
Wire Wire Line
	2200 3600 2200 3700
Wire Wire Line
	5250 3500 5250 3850
Connection ~ 4750 3500
Wire Wire Line
	2150 3600 2200 3600
Connection ~ 2200 3700
$Comp
L MuxPi:R R44
U 1 1 5844A1B4
P 4050 3700
F 0 "R44" H 4120 3746 50  0000 L CNN
F 1 "560R" H 4120 3655 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3980 3700 50  0001 C CNN
F 3 "" H 4050 3700 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 4050 3700 60  0001 C CNN "Shop link"
	1    4050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 3850 4050 4000
Wire Wire Line
	4050 3500 4050 3550
Wire Wire Line
	3550 3850 3550 3900
Connection ~ 4050 3500
$Comp
L MuxPi:GND #PWR0142
U 1 1 5844A1BF
P 4050 4550
F 0 "#PWR0142" H 4050 4300 50  0001 C CNN
F 1 "GND" H 4050 4400 50  0000 C CNN
F 2 "" H 4050 4550 60  0000 C CNN
F 3 "" H 4050 4550 60  0000 C CNN
	1    4050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 4300 4050 4550
$Comp
L MuxPi:LD1117S33CTR U10
U 1 1 5844A1C6
P 8600 3550
AR Path="/5844A1C6" Ref="U10"  Part="1" 
AR Path="/58449834/5844A1C6" Ref="U10"  Part="1" 
F 0 "U10" H 8600 3850 50  0000 C CNN
F 1 "LD1117S33CTR" H 8600 3750 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8600 3776 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/bbab3ccbedd9735c8c7032084fb97a45/LD1117.pdf" H 8600 3550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ld1117s33c/stabilizatory-napiecia-nieregulowane-ldo/st-microelectronics/" H 8600 3550 60  0001 C CNN "Shop link"
	1    8600 3550
	1    0    0    -1  
$EndComp
Connection ~ 8000 3500
Wire Wire Line
	9000 3500 9100 3500
Wire Wire Line
	9550 3350 9550 3500
$Comp
L MuxPi:+3V3 #PWR0152
U 1 1 5844A1D2
P 9550 3350
F 0 "#PWR0152" H 9550 3200 50  0001 C CNN
F 1 "+3V3" H 9565 3523 50  0000 C CNN
F 2 "" H 9550 3350 50  0000 C CNN
F 3 "" H 9550 3350 50  0000 C CNN
	1    9550 3350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0153
U 1 1 5844A1DF
P 9550 3900
F 0 "#PWR0153" H 9550 3650 50  0001 C CNN
F 1 "GND" H 9550 3750 50  0000 C CNN
F 2 "" H 9550 3900 60  0000 C CNN
F 3 "" H 9550 3900 60  0000 C CNN
	1    9550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3850 9550 3900
$Comp
L MuxPi:GND #PWR0151
U 1 1 5844A1ED
P 9100 3900
F 0 "#PWR0151" H 9100 3650 50  0001 C CNN
F 1 "GND" H 9100 3750 50  0000 C CNN
F 2 "" H 9100 3900 60  0000 C CNN
F 3 "" H 9100 3900 60  0000 C CNN
	1    9100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3850 9100 3900
Wire Wire Line
	9100 3550 9100 3500
Connection ~ 9100 3500
Connection ~ 9550 3500
$Comp
L MuxPi:GND #PWR0150
U 1 1 5844A1F7
P 8600 3900
F 0 "#PWR0150" H 8600 3650 50  0001 C CNN
F 1 "GND" H 8600 3750 50  0000 C CNN
F 2 "" H 8600 3900 60  0000 C CNN
F 3 "" H 8600 3900 60  0000 C CNN
	1    8600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3800 8600 3900
$Comp
L MuxPi:BSO130P03S Q11
U 1 1 5844A1FE
P 6750 3700
F 0 "Q11" H 6750 4207 50  0000 C CNN
F 1 "BSO130P03S" H 6750 4116 50  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 6750 4025 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/fde90035d9a6021d44d09086b0d9119c/BSO130P03SHXUMA1-DTE.pdf" V 6750 3700 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/bso130p03shxuma1/tranzystory-z-kanalem-p-smd/infineon-technologies/" H 6750 3700 60  0001 C CNN "Shop link"
	1    6750 3700
	1    0    0    -1  
$EndComp
Text HLabel 4100 5000 0    60   Input ~ 0
PWR_CTRL
Wire Wire Line
	5050 4150 5050 5000
Wire Wire Line
	5050 5000 4100 5000
$Comp
L MuxPi:CP C51
U 1 1 584AFD5D
P 9550 3700
F 0 "C51" H 9600 3800 50  0000 L CNN
F 1 "10uF/10V" H 9600 3600 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 9588 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 9550 3700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 9550 3700 60  0001 C CNN "Shop link"
	1    9550 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C50
U 1 1 584B0B46
P 9100 3700
F 0 "C50" H 9150 3800 50  0000 L CNN
F 1 "100nF/50V" H 8900 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9138 3550 50  0001 C CNN
F 3 "" H 9100 3700 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 9100 3700 60  0001 C CNN "Shop link"
	1    9100 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:2N7002 Q10
U 1 1 584B26D7
P 5700 4100
AR Path="/584B26D7" Ref="Q10"  Part="1" 
AR Path="/58449834/584B26D7" Ref="Q10"  Part="1" 
F 0 "Q10" H 5891 4146 50  0000 L CNN
F 1 "2N7002" H 5891 4055 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5900 4025 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 5700 4100 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 5700 4100 60  0001 C CNN "Shop link"
	1    5700 4100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:LED_ALT D7
U 1 1 58506DE3
P 4050 4150
F 0 "D7" V 4088 4032 50  0000 R CNN
F 1 "KPT-2012EC (RED)" V 3997 4032 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 4050 4150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 4050 4150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 4050 4150 60  0001 C CNN "Shop link"
	1    4050 4150
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:Polyfuse F1
U 1 1 58D8D94F
P 2500 3500
F 0 "F1" V 2275 3500 50  0000 C CNN
F 1 "30R300UU" V 2366 3500 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_TE5_Littlefuse-395Series" H 2550 3300 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/fdd42053b89d1fd5c6b7e642c2aced3a/Littelfuse_Seria_30R.pdf" H 2500 3500 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/30r300uu/bezpieczniki-polimerowe-tht/littelfuse/" H 2500 3500 60  0001 C CNN "Shop link"
	1    2500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3500 2350 3500
$Comp
L MuxPi:D_Zener D8
U 1 1 58D8DF16
P 2850 3700
F 0 "D8" V 2804 3779 50  0000 L CNN
F 1 "BZT52H-C5V6.115" V 3300 3350 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-123F" H 2850 3700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/63e12ac79543603fbb5d1f749bbabbb4/BZT52H-DTE.pdf" H 2850 3700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/bzt52h-c5v6.115/diody-zenera-smd/nexperia/" V 2850 3700 60  0001 C CNN "Shop link"
	1    2850 3700
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0140
U 1 1 58D8E1AA
P 2850 3900
F 0 "#PWR0140" H 2850 3650 50  0001 C CNN
F 1 "GND" H 2850 3750 50  0000 C CNN
F 2 "" H 2850 3900 60  0000 C CNN
F 3 "" H 2850 3900 60  0000 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3850 2850 3900
Wire Wire Line
	2850 3550 2850 3500
Connection ~ 2850 3500
$Comp
L MuxPi:Jumper_NO_Small JP3
U 1 1 58DB3197
P 6300 4100
F 0 "JP3" V 6300 4148 50  0000 L CNN
F 1 "Jumper_NO_Small" V 6345 4148 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6300 4100 50  0001 C CNN
F 3 "" H 6300 4100 50  0001 C CNN
	1    6300 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4000 6300 3850
Connection ~ 6300 3850
Wire Wire Line
	6300 4200 6300 4550
$Comp
L MuxPi:GND #PWR0146
U 1 1 58DB38C6
P 6300 4550
F 0 "#PWR0146" H 6300 4300 50  0001 C CNN
F 1 "GND" H 6300 4400 50  0000 C CNN
F 2 "" H 6300 4550 60  0000 C CNN
F 3 "" H 6300 4550 60  0000 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3600 7150 3700
Wire Wire Line
	7150 3700 7150 3800
Wire Wire Line
	6350 3600 6350 3700
Wire Wire Line
	5250 4150 5500 4150
Wire Wire Line
	5250 3500 6350 3500
Wire Wire Line
	5800 3850 6300 3850
Wire Wire Line
	6350 3500 6450 3500
Wire Wire Line
	7150 3500 7400 3500
Wire Wire Line
	7850 3500 8000 3500
Wire Wire Line
	7400 3500 7850 3500
Wire Wire Line
	3550 3500 4050 3500
Wire Wire Line
	4750 3500 5250 3500
Wire Wire Line
	2200 3700 2200 3900
Wire Wire Line
	4050 3500 4750 3500
Wire Wire Line
	8000 3500 8200 3500
Wire Wire Line
	9100 3500 9550 3500
Wire Wire Line
	9550 3500 9550 3550
Wire Wire Line
	2850 3500 3550 3500
Wire Wire Line
	6300 3850 6450 3850
$EndSCHEMATC
