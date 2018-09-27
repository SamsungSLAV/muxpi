EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 12
Title "MuxPi"
Date "2018-08-14"
Rev "1.3"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 -2018 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MuxPi:SN74LVC2T45 U5
U 1 1 584C1DA1
P 4250 3800
F 0 "U5" H 4250 4100 50  0000 C CNN
F 1 "SN74LVC2T45DCTT" H 4250 3500 50  0000 C CNN
F 2 "mux-footprints:SSOP-8" H 4150 3800 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/6c30e63cb6e35247759643c975f2fb23/SN74LVC2T45DCTT.pdf" H 4150 3800 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/sn74lvc2t45dctt/konwertery-logiczne/texas-instruments/" H 4250 3800 60  0001 C CNN "Shop link"
F 5 "TEXAS INSTRUMENTS" H 4250 3800 50  0001 C CNN "Manufacturer"
F 6 "SN74LVC2T45DCTT" H 4250 3800 50  0001 C CNN "Symbol"
	1    4250 3800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR063
U 1 1 584C1DA8
P 3750 4000
F 0 "#PWR063" H 3750 3750 50  0001 C CNN
F 1 "GND" H 3750 3850 50  0000 C CNN
F 2 "" H 3750 4000 60  0000 C CNN
F 3 "" H 3750 4000 60  0000 C CNN
	1    3750 4000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR060
U 1 1 584C1DAE
P 1350 7300
F 0 "#PWR060" H 1350 7050 50  0001 C CNN
F 1 "GND" H 1350 7150 50  0000 C CNN
F 2 "" H 1350 7300 60  0000 C CNN
F 3 "" H 1350 7300 60  0000 C CNN
	1    1350 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR059
U 1 1 584C1DBB
P 1350 6850
F 0 "#PWR059" H 1350 6700 50  0001 C CNN
F 1 "+3V3" H 1350 6990 50  0000 C CNN
F 2 "" H 1350 6850 60  0000 C CNN
F 3 "" H 1350 6850 60  0000 C CNN
	1    1350 6850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR062
U 1 1 584C1DC1
P 3750 3600
F 0 "#PWR062" H 3750 3450 50  0001 C CNN
F 1 "+3V3" H 3750 3740 50  0000 C CNN
F 2 "" H 3750 3600 60  0000 C CNN
F 3 "" H 3750 3600 60  0000 C CNN
	1    3750 3600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_02X04 P4
U 1 1 584C1DC7
P 5450 4200
F 0 "P4" H 5450 4450 50  0000 C CNN
F 1 "T821108A1S100CEU" H 5450 3600 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x04" H 5450 3000 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cda30bae7de800ca9be388e3f3476120/T821-1-08-S1.pdf" H 5450 3000 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t821-1-08-s1/zlacza-idc/amphenol/t821108a1s100ceu/" H 5450 4200 60  0001 C CNN "Shop link"
F 5 "CONNFLY" H 5450 4200 50  0001 C CNN "Manufacturer"
F 6 "DS1021-2*4SF1-1" H 5450 4200 50  0001 C CNN "Symbol"
	1    5450 4200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR065
U 1 1 584C1DD5
P 3750 4850
F 0 "#PWR065" H 3750 4600 50  0001 C CNN
F 1 "GND" H 3750 4700 50  0000 C CNN
F 2 "" H 3750 4850 60  0000 C CNN
F 3 "" H 3750 4850 60  0000 C CNN
	1    3750 4850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR070
U 1 1 584C1DDB
P 4750 4850
F 0 "#PWR070" H 4750 4600 50  0001 C CNN
F 1 "GND" H 4750 4700 50  0000 C CNN
F 2 "" H 4750 4850 60  0000 C CNN
F 3 "" H 4750 4850 60  0000 C CNN
	1    4750 4850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR064
U 1 1 584C1DE1
P 3750 4450
F 0 "#PWR064" H 3750 4300 50  0001 C CNN
F 1 "+3V3" H 3750 4590 50  0000 C CNN
F 2 "" H 3750 4450 60  0000 C CNN
F 3 "" H 3750 4450 60  0000 C CNN
	1    3750 4450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR074
U 1 1 584C1DE7
P 5750 4400
F 0 "#PWR074" H 5750 4150 50  0001 C CNN
F 1 "GND" H 5750 4250 50  0000 C CNN
F 2 "" H 5750 4400 60  0000 C CNN
F 3 "" H 5750 4400 60  0000 C CNN
	1    5750 4400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR058
U 1 1 584C1DED
P 950 7300
F 0 "#PWR058" H 950 7050 50  0001 C CNN
F 1 "GND" H 950 7150 50  0000 C CNN
F 2 "" H 950 7300 60  0000 C CNN
F 3 "" H 950 7300 60  0000 C CNN
	1    950  7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR057
U 1 1 584C1DFA
P 950 6850
F 0 "#PWR057" H 950 6700 50  0001 C CNN
F 1 "+3V3" H 950 6990 50  0000 C CNN
F 2 "" H 950 6850 60  0000 C CNN
F 3 "" H 950 6850 60  0000 C CNN
	1    950  6850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR069
U 1 1 584C1E00
P 4750 3600
F 0 "#PWR069" H 4750 3450 50  0001 C CNN
F 1 "+3V3" H 4750 3740 50  0000 C CNN
F 2 "" H 4750 3600 60  0000 C CNN
F 3 "" H 4750 3600 60  0000 C CNN
	1    4750 3600
	1    0    0    -1  
$EndComp
NoConn ~ 5700 4250
Text Notes 750  850  0    60   ~ 0
DUT UART
Wire Wire Line
	3800 3950 3750 3950
Wire Wire Line
	3750 3950 3750 4000
Wire Wire Line
	1350 6850 1350 6950
Wire Wire Line
	1350 7250 1350 7300
Wire Wire Line
	3750 3600 3750 3650
Wire Wire Line
	3750 3650 3800 3650
Wire Wire Line
	3800 4800 3750 4800
Wire Wire Line
	3750 4800 3750 4850
Wire Wire Line
	4700 4800 4750 4800
Wire Wire Line
	4750 4800 4750 4850
Wire Wire Line
	3750 4450 3750 4500
Wire Wire Line
	3750 4500 3800 4500
Wire Wire Line
	4850 4500 4700 4500
Wire Wire Line
	4700 3650 4850 3650
Wire Wire Line
	4850 3650 4850 4500
Wire Wire Line
	950  6850 950  6950
Wire Wire Line
	950  7250 950  7300
Wire Wire Line
	5750 3650 5750 4050
Connection ~ 4850 3650
Wire Wire Line
	5700 4350 5750 4350
Wire Wire Line
	5750 4350 5750 4400
Wire Wire Line
	3800 4600 3100 4600
Wire Wire Line
	4700 3950 4750 3950
Wire Wire Line
	4750 3950 4750 3600
Wire Wire Line
	4700 3750 5050 3750
Wire Wire Line
	5050 3750 5050 4050
Wire Wire Line
	5050 4050 5200 4050
Wire Wire Line
	3800 3750 3100 3750
Wire Wire Line
	4700 4600 5050 4600
Wire Wire Line
	5050 4600 5050 4150
Wire Wire Line
	5050 4150 5200 4150
Wire Wire Line
	3800 4700 3100 4700
Wire Wire Line
	4700 3850 4950 3850
Wire Wire Line
	4950 3850 4950 4250
Wire Wire Line
	4950 4250 5200 4250
Wire Wire Line
	3800 3850 3100 3850
Wire Wire Line
	4700 4700 5150 4700
Wire Wire Line
	5150 4700 5150 4350
Wire Wire Line
	5150 4350 5200 4350
Wire Wire Line
	5750 4050 5700 4050
Text HLabel 3100 4600 0    60   Input ~ 0
DUT_UART1_TX
Text HLabel 3100 4700 0    60   Input ~ 0
DUT_UART1_RTS
Text HLabel 3100 3750 0    60   Input ~ 0
DUT_UART1_RX
Text HLabel 3100 3850 0    60   Input ~ 0
DUT_UART1_CTS
$Comp
L MuxPi:C C22
U 1 1 584E6954
P 950 7100
F 0 "C22" H 1000 7200 50  0000 L CNN
F 1 "100nF/50V" V 800 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 988 6950 50  0001 C CNN
F 3 "" H 950 7100 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 950 7100 60  0001 C CNN "Shop link"
	1    950  7100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C23
U 1 1 584E6A17
P 1350 7100
F 0 "C23" H 1400 7200 50  0000 L CNN
F 1 "100nF/50V" V 1200 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1388 6950 50  0001 C CNN
F 3 "" H 1350 7100 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 1350 7100 60  0001 C CNN "Shop link"
	1    1350 7100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R6
U 1 1 58D93B8B
P 4850 5550
F 0 "R6" H 4920 5596 50  0000 L CNN
F 1 "560R" H 4920 5505 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4780 5550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d26ab61589ff927fb609b6d6433d4ffa/rezystor-smd.pdf" H 4850 5550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 4850 5550 60  0001 C CNN "Shop link"
	1    4850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5350 4850 5400
Wire Wire Line
	4850 5700 4850 5750
Connection ~ 4850 4500
$Comp
L MuxPi:MCP6002 U2
U 1 1 58E19294
P 4250 1650
F 0 "U2" H 4250 1850 50  0000 L CNN
F 1 "MCP6002-E/SN" H 3900 1350 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 4150 1700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 4250 1800 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 4250 1650 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 4250 1650 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 4250 1650 50  0001 C CNN "Symbol"
	1    4250 1650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR068
U 1 1 58E195F0
P 4150 2000
F 0 "#PWR068" H 4150 1750 50  0001 C CNN
F 1 "GND" H 4150 1850 50  0000 C CNN
F 2 "" H 4150 2000 60  0000 C CNN
F 3 "" H 4150 2000 60  0000 C CNN
	1    4150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1950 4150 2000
Wire Wire Line
	3150 1550 3450 1550
Wire Wire Line
	4550 1650 4700 1650
$Comp
L MuxPi:+5V #PWR067
U 1 1 58E1A32E
P 4150 1300
F 0 "#PWR067" H 4150 1150 50  0001 C CNN
F 1 "+5V" H 4165 1473 50  0000 C CNN
F 2 "" H 4150 1300 50  0000 C CNN
F 3 "" H 4150 1300 50  0000 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1300 4150 1350
$Comp
L MuxPi:R R23
U 1 1 58E2354B
P 4700 1950
F 0 "R23" V 4600 1950 50  0000 C CNN
F 1 "10K 1%" V 4800 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4630 1950 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/55d4466939032306fcda2f2a67f6c9bb/rezystor-smd.pdf" H 4700 1950 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-10k/rezystory-smd-0805/royal-ohm/0805s8j0103t5e/" V 4700 1950 60  0001 C CNN "Shop link"
	1    4700 1950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R22
U 1 1 58E23626
P 3850 2500
F 0 "R22" V 3750 2500 50  0000 C CNN
F 1 "20K 1%" V 3950 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3780 2500 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/b315665a56acbc42df513c99b390ad98/ROYALOHM-THICKFILM.pdf" H 3850 2500 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-20k-1%25/rezystory-smd-0805/royal-ohm/0805s8f2002t5e/" V 3850 2500 60  0001 C CNN "Shop link"
	1    3850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1750 3850 2250
Wire Wire Line
	3850 1750 3950 1750
Wire Wire Line
	4700 2100 4700 2250
Wire Wire Line
	4700 2250 3850 2250
Connection ~ 3850 2250
Wire Wire Line
	4700 1800 4700 1650
Connection ~ 4700 1650
$Comp
L MuxPi:GND #PWR066
U 1 1 58E239DA
P 3850 2700
F 0 "#PWR066" H 3850 2450 50  0001 C CNN
F 1 "GND" H 3850 2550 50  0000 C CNN
F 2 "" H 3850 2700 60  0000 C CNN
F 3 "" H 3850 2700 60  0000 C CNN
	1    3850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2650 3850 2700
Wire Wire Line
	5900 1750 6000 1750
Wire Wire Line
	5300 1850 5250 1850
Wire Wire Line
	5250 1850 5250 2300
Wire Wire Line
	5250 2300 6000 2300
Wire Wire Line
	6000 2300 6000 1750
Connection ~ 6000 1750
$Comp
L MuxPi:GND #PWR073
U 1 1 58E23FEE
P 5500 2100
F 0 "#PWR073" H 5500 1850 50  0001 C CNN
F 1 "GND" H 5500 1950 50  0000 C CNN
F 2 "" H 5500 2100 60  0000 C CNN
F 3 "" H 5500 2100 60  0000 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR072
U 1 1 58E2402E
P 5500 1400
F 0 "#PWR072" H 5500 1250 50  0001 C CNN
F 1 "+5V" H 5515 1573 50  0000 C CNN
F 2 "" H 5500 1400 50  0000 C CNN
F 3 "" H 5500 1400 50  0000 C CNN
	1    5500 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2050 5500 2100
Wire Wire Line
	5500 1400 5500 1450
Wire Wire Line
	6400 1750 6400 4150
$Comp
L MuxPi:C C46
U 1 1 58E27910
P 3450 1800
F 0 "C46" H 3500 1900 50  0000 L CNN
F 1 "100nF/50V" V 3300 1600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3488 1650 50  0001 C CNN
F 3 "" H 3450 1800 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 3450 1800 60  0001 C CNN "Shop link"
	1    3450 1800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R7
U 1 1 58E27B17
P 3000 1550
F 0 "R7" V 2900 1550 50  0000 C CNN
F 1 "10K 1%" V 3100 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2930 1550 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/55d4466939032306fcda2f2a67f6c9bb/rezystor-smd.pdf" H 3000 1550 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-10k/rezystory-smd-0805/royal-ohm/0805s8j0103t5e/" V 3000 1550 60  0001 C CNN "Shop link"
	1    3000 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 1650 3450 1550
Connection ~ 3450 1550
$Comp
L MuxPi:GND #PWR061
U 1 1 58E27F3D
P 3450 2000
F 0 "#PWR061" H 3450 1750 50  0001 C CNN
F 1 "GND" H 3450 1850 50  0000 C CNN
F 2 "" H 3450 2000 60  0000 C CNN
F 3 "" H 3450 2000 60  0000 C CNN
	1    3450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 1950 3450 2000
Wire Wire Line
	2850 1550 2600 1550
Text HLabel 2600 1550 0    60   Input ~ 0
UART_PWM
$Comp
L MuxPi:GND #PWR071
U 1 1 58E285ED
P 4850 5750
F 0 "#PWR071" H 4850 5500 50  0001 C CNN
F 1 "GND" H 4850 5600 50  0000 C CNN
F 2 "" H 4850 5750 60  0000 C CNN
F 3 "" H 4850 5750 60  0000 C CNN
	1    4850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4150 5700 4150
Connection ~ 5050 3750
Connection ~ 5050 4600
Text HLabel 6650 3750 2    60   Input ~ 0
DUT_RX_LS
Text HLabel 6650 4600 2    60   Input ~ 0
DUT_TX_LS
Wire Wire Line
	4850 3650 5750 3650
Wire Wire Line
	4850 4500 4850 5050
Wire Wire Line
	3850 2250 3850 2350
Wire Wire Line
	4700 1650 5300 1650
Wire Wire Line
	6000 1750 6400 1750
Wire Wire Line
	3450 1550 3950 1550
Wire Wire Line
	5050 3750 6650 3750
Wire Wire Line
	5050 4600 6250 4600
$Comp
L MuxPi:R R58
U 1 1 5A5DC158
P 6250 3450
F 0 "R58" V 6250 3450 50  0000 C CNN
F 1 "10K 1%" V 6350 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 3450 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/55d4466939032306fcda2f2a67f6c9bb/rezystor-smd.pdf" H 6250 3450 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-10k/rezystory-smd-0805/royal-ohm/0805s8j0103t5e/" V 6250 3450 60  0001 C CNN "Shop link"
	1    6250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3600 6250 4600
Connection ~ 6250 4600
Wire Wire Line
	6250 4600 6650 4600
$Comp
L MuxPi:R R27
U 1 1 5A5EDDE5
P 5150 3450
F 0 "R27" V 5150 3450 50  0000 C CNN
F 1 "10K 1%" V 5250 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 3450 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/55d4466939032306fcda2f2a67f6c9bb/rezystor-smd.pdf" H 5150 3450 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-10k/rezystory-smd-0805/royal-ohm/0805s8j0103t5e/" V 5150 3450 60  0001 C CNN "Shop link"
	1    5150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3600 5150 4350
Connection ~ 5150 4350
Wire Wire Line
	5150 3300 5150 3250
Wire Wire Line
	5150 3250 5750 3250
Wire Wire Line
	6250 3250 6250 3300
Wire Wire Line
	5750 3650 5750 3250
Connection ~ 5750 3650
Connection ~ 5750 3250
Wire Wire Line
	5750 3250 6250 3250
$Comp
L MuxPi:MCP6002 U2
U 2 1 5A886D70
P 5600 1750
F 0 "U2" H 5600 1950 50  0000 L CNN
F 1 "MCP6002-E/SN" H 5250 1450 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 5500 1800 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 5600 1900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 5600 1750 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 5600 1750 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 5600 1750 50  0001 C CNN "Symbol"
	2    5600 1750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:LED_ALT D9
U 1 1 5A887879
P 4850 5200
F 0 "D9" V 4888 5082 50  0000 R CNN
F 1 "KPT-2012SGC (GREEN)" V 4797 5082 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 4850 5200 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 4850 5200 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 4850 5200 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" V 4850 5200 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" V 4850 5200 50  0001 C CNN "Symbol"
	1    4850 5200
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:SN74LVC2T45 U6
U 1 1 5A88984D
P 4250 4650
F 0 "U6" H 4250 4950 50  0000 C CNN
F 1 "SN74LVC2T45DCTT" H 4250 4350 50  0000 C CNN
F 2 "mux-footprints:SSOP-8" H 4150 4650 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/6c30e63cb6e35247759643c975f2fb23/SN74LVC2T45DCTT.pdf" H 4150 4650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/sn74lvc2t45dctt/konwertery-logiczne/texas-instruments/" H 4250 4650 60  0001 C CNN "Shop link"
F 5 "TEXAS INSTRUMENTS" H 4250 4650 50  0001 C CNN "Manufacturer"
F 6 "SN74LVC2T45DCTT" H 4250 4650 50  0001 C CNN "Symbol"
	1    4250 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
