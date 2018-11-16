EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
Title "MuxPi"
Date "2018-11-16"
Rev "1.4"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 -2018 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MuxPi:TS3A27518E U8
U 1 1 584BACF1
P 5050 4950
F 0 "U8" H 4800 6100 60  0000 C CNN
F 1 "TS3A27518EPWR" H 5050 3800 60  0000 C CNN
F 2 "mux-footprints:TSSOP-24" H 5350 4650 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ts3a27518e.pdf" H 5350 4650 60  0001 C CNN
F 4 "http://pl.farnell.com/texas-instruments/ts3a27518epwr/ic-6bit-1-of-2-mux-demux-24tssop/dp/1735605" H 5050 4950 60  0001 C CNN "Shop link"
F 5 "TEXAS INSTRUMENTS" H 5050 4950 50  0001 C CNN "Manufacturer"
F 6 "TS3A27518EPWR" H 5050 4950 50  0001 C CNN "Symbol"
	1    5050 4950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR089
U 1 1 584BACF8
P 6350 4750
F 0 "#PWR089" H 6350 4500 50  0001 C CNN
F 1 "GND" H 6350 4600 50  0000 C CNN
F 2 "" H 6350 4750 60  0000 C CNN
F 3 "" H 6350 4750 60  0000 C CNN
	1    6350 4750
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR088
U 1 1 584BACFE
P 5750 5950
F 0 "#PWR088" H 5750 5700 50  0001 C CNN
F 1 "GND" H 5750 5800 50  0000 C CNN
F 2 "" H 5750 5950 60  0000 C CNN
F 3 "" H 5750 5950 60  0000 C CNN
	1    5750 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:74AHC1G14 U7
U 1 1 584BAD12
P 3450 2200
AR Path="/584BAD12" Ref="U7"  Part="1" 
AR Path="/584BA053/584BAD12" Ref="U7"  Part="1" 
F 0 "U7" H 3595 2315 40  0000 C CNN
F 1 "MC74HC1G04DTT1G" H 3750 2050 40  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3545 2065 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0bd9f377abd5f258bb30856efe9f427e/mc74hc1g04.pdf" H 3595 2315 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mc74hc1g04dtt1g/bramki-inwertery/on-semiconductor/" H 3450 2200 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" H 3450 2200 50  0001 C CNN "Manufacturer"
F 6 "MC74HC1G04DTT1G" H 3450 2200 50  0001 C CNN "Symbol"
	1    3450 2200
	1    0    0    -1  
$EndComp
Text Label 4050 2550 0    60   ~ 0
VDD_DUT
Text Notes 1950 2450 0    60   ~ 0
0 - DUT, 1 - TS
$Comp
L MuxPi:GND #PWR084
U 1 1 584BAD1C
P 4350 6050
F 0 "#PWR084" H 4350 5800 50  0001 C CNN
F 1 "GND" H 4350 5900 50  0000 C CNN
F 2 "" H 4350 6050 60  0000 C CNN
F 3 "" H 4350 6050 60  0000 C CNN
	1    4350 6050
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR082
U 1 1 584BAD22
P 3400 2450
F 0 "#PWR082" H 3400 2200 50  0001 C CNN
F 1 "GND" H 3400 2300 50  0000 C CNN
F 2 "" H 3400 2450 60  0000 C CNN
F 3 "" H 3400 2450 60  0000 C CNN
	1    3400 2450
	-1   0    0    -1  
$EndComp
Text Label 3750 4250 0    60   ~ 0
DAT3_DUT
Text Label 3750 4350 0    60   ~ 0
DAT3_TS
Text Label 3750 4550 0    60   ~ 0
CMD_DUT
Text Label 3750 4650 0    60   ~ 0
CMD_TS
Text Label 3750 5150 0    60   ~ 0
DAT0_DUT
Text Label 3750 5250 0    60   ~ 0
DAT0_TS
Text Label 3750 4850 0    60   ~ 0
CLK_DUT
Text Label 3750 4950 0    60   ~ 0
CLK_TS
Text Label 3750 5450 0    60   ~ 0
DAT1_DUT
Text Label 3750 5550 0    60   ~ 0
DAT1_TS
Text Label 3750 3950 0    60   ~ 0
DAT2_DUT
Text Label 3750 4050 0    60   ~ 0
DAT2_TS
Text Label 3750 5750 0    60   ~ 0
SOCKET_SEL
Text Label 7950 1750 0    60   ~ 0
DAT2_DUT
Text Label 9750 1750 2    60   ~ 0
DAT3_DUT
Text Label 7950 1850 0    60   ~ 0
CMD_DUT
Text Label 9750 1850 2    60   ~ 0
VDD_DUT
Text Label 7950 1950 0    60   ~ 0
CLK_DUT
$Comp
L MuxPi:GND #PWR094
U 1 1 584BAD41
P 9200 2150
F 0 "#PWR094" H 9200 1900 50  0001 C CNN
F 1 "GND" H 9200 2000 50  0000 C CNN
F 2 "" H 9200 2150 60  0000 C CNN
F 3 "" H 9200 2150 60  0000 C CNN
	1    9200 2150
	-1   0    0    -1  
$EndComp
Text Label 7950 2050 0    60   ~ 0
DAT0_DUT
Text Label 9750 2050 2    60   ~ 0
DAT1_DUT
$Comp
L MuxPi:+3V3 #PWR87
U 1 1 584BAD64
P 5750 5650
AR Path="/584BAD64" Ref="#PWR87"  Part="1" 
AR Path="/584BA053/584BAD64" Ref="#PWR087"  Part="1" 
F 0 "#PWR087" H 5750 5500 50  0001 C CNN
F 1 "+3V3" H 5750 5790 50  0000 C CNN
F 2 "" H 5750 5650 60  0000 C CNN
F 3 "" H 5750 5650 60  0000 C CNN
	1    5750 5650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:USDCARD J2
U 1 1 584BAD6A
P 6900 4250
F 0 "J2" H 6750 4850 60  0000 C CNN
F 1 "112K-TBA0-RA1" H 6900 3700 60  0000 C CNN
F 2 "mux-footprints:usd-attend" H 6900 3550 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d9baf2fd66256bac7b840e9a66d44492/112K-TBA0-RA1.pdf" H 6900 4250 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/112k-tba0-ra1/zlacza-do-kart/attend/" H 6900 4250 60  0001 C CNN "Shop link"
F 5 "ATTEND" H 6900 4250 50  0001 C CNN "Manufacturer"
F 6 "112K-TBA0-RA1" H 6900 4250 50  0001 C CNN "Symbol"
	1    6900 4250
	1    0    0    -1  
$EndComp
Text Label 5850 2050 0    60   ~ 0
USD_VDD
$Comp
L MuxPi:+3V3 #PWR081
U 1 1 584BAD80
P 3400 1950
F 0 "#PWR081" H 3400 1800 50  0001 C CNN
F 1 "+3V3" H 3400 2090 50  0000 C CNN
F 2 "" H 3400 1950 60  0000 C CNN
F 3 "" H 3400 1950 60  0000 C CNN
	1    3400 1950
	1    0    0    -1  
$EndComp
Text Label 3000 3250 0    60   ~ 0
SOCKET_SEL
$Comp
L MuxPi:+3V3 #PWR083
U 1 1 584BADA1
P 4100 1800
F 0 "#PWR083" H 4100 1650 50  0001 C CNN
F 1 "+3V3" H 4100 1940 50  0000 C CNN
F 2 "" H 4100 1800 60  0000 C CNN
F 3 "" H 4100 1800 60  0000 C CNN
	1    4100 1800
	1    0    0    -1  
$EndComp
Text Notes 700  700  0    60   ~ 0
SD MUX
$Comp
L MuxPi:GND #PWR091
U 1 1 584BADA8
P 7150 6050
F 0 "#PWR091" H 7150 5800 50  0001 C CNN
F 1 "GND" H 7150 5900 50  0000 C CNN
F 2 "" H 7150 6050 60  0000 C CNN
F 3 "" H 7150 6050 60  0000 C CNN
	1    7150 6050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR90
U 1 1 584BADB5
P 7150 5600
AR Path="/584BADB5" Ref="#PWR90"  Part="1" 
AR Path="/584BA053/584BADB5" Ref="#PWR090"  Part="1" 
F 0 "#PWR090" H 7150 5450 50  0001 C CNN
F 1 "+3V3" H 7150 5740 50  0000 C CNN
F 2 "" H 7150 5600 60  0000 C CNN
F 3 "" H 7150 5600 60  0000 C CNN
	1    7150 5600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CP C26
U 1 1 584BADC2
P 7850 5850
F 0 "C26" H 7875 5950 50  0000 L CNN
F 1 "4.7u/16V" H 7875 5750 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 7888 5700 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/85f84849ee9dc6997647a15c8c95a9d3/taj.pdf" H 7850 5850 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/taja475k016r/kondensatory-tantalowe-smd/avx/taja475k016rnj/" H 7850 5850 60  0001 C CNN "Shop link"
F 5 "AVX" H 7850 5850 50  0001 C CNN "Manufacturer"
F 6 "TAJA475K016RNJ" H 7850 5850 50  0001 C CNN "Symbol"
	1    7850 5850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR092
U 1 1 584BADC9
P 7500 6050
F 0 "#PWR092" H 7500 5800 50  0001 C CNN
F 1 "GND" H 7500 5900 50  0000 C CNN
F 2 "" H 7500 6050 60  0000 C CNN
F 3 "" H 7500 6050 60  0000 C CNN
	1    7500 6050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR093
U 1 1 584BADCF
P 7850 6050
F 0 "#PWR093" H 7850 5800 50  0001 C CNN
F 1 "GND" H 7850 5900 50  0000 C CNN
F 2 "" H 7850 6050 60  0000 C CNN
F 3 "" H 7850 6050 60  0000 C CNN
	1    7850 6050
	1    0    0    -1  
$EndComp
Text Label 7500 5550 0    60   ~ 0
USD_VDD
Text HLabel 2600 2200 0    60   Input ~ 0
SOCKET_SEL
Text HLabel 3150 1500 0    60   Input ~ 0
SD_PWR_TS
Text HLabel 3150 5550 0    60   Input ~ 0
SD_DAT1_TS
Text HLabel 3150 5250 0    60   Input ~ 0
SD_DAT0_TS
Text HLabel 3150 4950 0    60   Input ~ 0
SD_CLK_TS
Text HLabel 3150 4650 0    60   Input ~ 0
SD_CMD_TS
Text HLabel 3150 4350 0    60   Input ~ 0
SD_DAT3_TS
Text HLabel 3150 4050 0    60   Input ~ 0
SD_DAT2_TS
Text Label 3850 1500 2    60   ~ 0
VDD_TS
$Comp
L MuxPi:CONN_02X04 P9
U 1 1 584E8E80
P 8850 1900
F 0 "P9" H 8850 2150 50  0000 C CNN
F 1 "T821108A1S100CEU" H 8850 2250 50  0000 C CNN
F 2 "MuxPi:vasch_strip_4x2" H 8850 700 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cda30bae7de800ca9be388e3f3476120/T821-1-08-S1.pdf" H 8850 700 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t821-1-08-s1/zlacza-idc/amphenol/t821108a1s100ceu/" H 8850 1900 60  0001 C CNN "Shop link"
F 5 "AMPHENOL" H 8850 1900 50  0001 C CNN "Manufacturer"
F 6 "T821108A1S100CEU" H 8850 1900 50  0001 C CNN "Symbol"
	1    8850 1900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R18
U 1 1 5851CFDB
P 4100 1950
F 0 "R18" V 4000 1950 50  0000 C CNN
F 1 "10K" V 4200 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 1950 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4100 1950 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4100 1950 60  0001 C CNN "Shop link"
	1    4100 1950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R19
U 1 1 5851D6EE
P 4600 1850
F 0 "R19" V 4500 1850 50  0000 C CNN
F 1 "10K" V 4700 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4530 1850 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4600 1850 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4600 1850 60  0001 C CNN "Shop link"
	1    4600 1850
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R20
U 1 1 5851D7C1
P 4600 2900
F 0 "R20" V 4500 2900 50  0000 C CNN
F 1 "10K" V 4700 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4530 2900 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4600 2900 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4600 2900 60  0001 C CNN "Shop link"
	1    4600 2900
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C24
U 1 1 585215C1
P 7150 5850
F 0 "C24" H 7100 5350 50  0000 L CNN
F 1 "100nF/50V" V 7000 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7188 5700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 7150 5850 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 7150 5850 60  0001 C CNN "Shop link"
	1    7150 5850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C25
U 1 1 58521653
P 7500 5850
F 0 "C25" H 7550 6000 50  0000 L CNN
F 1 "100nF/50V" V 7350 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7538 5700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 7500 5850 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 7500 5850 60  0001 C CNN "Shop link"
	1    7500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4450 6400 4450
Wire Wire Line
	6400 4650 6350 4650
Wire Wire Line
	5650 5850 5750 5850
Wire Wire Line
	5750 5850 5750 5950
Wire Wire Line
	5650 5750 5750 5750
Wire Wire Line
	5750 5750 5750 5650
Wire Wire Line
	6300 3800 6400 3800
Wire Wire Line
	5600 1500 5800 1500
Wire Wire Line
	4100 2200 4100 2100
Wire Wire Line
	3150 1500 4350 1500
Wire Wire Line
	4000 2550 4350 2550
Wire Wire Line
	4350 5850 4450 5850
Connection ~ 4350 5750
Wire Wire Line
	4450 5950 4350 5950
Wire Wire Line
	4350 5950 4350 6050
Wire Wire Line
	3400 2400 3400 2450
Wire Wire Line
	3400 1950 3400 2000
Wire Wire Line
	4450 5450 3750 5450
Wire Wire Line
	4450 5550 3150 5550
Wire Wire Line
	4450 5150 3750 5150
Wire Wire Line
	4450 5250 3150 5250
Wire Wire Line
	4450 4850 3750 4850
Wire Wire Line
	4450 4950 3150 4950
Wire Wire Line
	4450 4550 3750 4550
Wire Wire Line
	4450 4650 3150 4650
Wire Wire Line
	4450 4250 3750 4250
Wire Wire Line
	4450 4350 3150 4350
Wire Wire Line
	4450 3950 3750 3950
Wire Wire Line
	4450 4050 3150 4050
Wire Wire Line
	7950 1750 8600 1750
Wire Wire Line
	8600 1850 7950 1850
Wire Wire Line
	8600 1950 7950 1950
Wire Wire Line
	8600 2050 7950 2050
Wire Wire Line
	9100 1850 9750 1850
Wire Wire Line
	9100 1750 9750 1750
Wire Wire Line
	9100 2050 9750 2050
Wire Wire Line
	9100 1950 9200 1950
Wire Wire Line
	9200 1950 9200 2150
Wire Wire Line
	3750 5750 4350 5750
Wire Wire Line
	6250 4350 6400 4350
Wire Wire Line
	5850 3950 6400 3950
Wire Wire Line
	5650 4850 6150 4850
Wire Wire Line
	6400 4250 6150 4250
Wire Wire Line
	4350 5850 4350 5750
Wire Wire Line
	4450 1850 4350 1850
Wire Wire Line
	4350 1850 4350 1500
Connection ~ 4350 1500
Wire Wire Line
	4450 2900 4350 2900
Wire Wire Line
	4350 2900 4350 2550
Connection ~ 4350 2550
Wire Wire Line
	5800 2050 6300 2050
Connection ~ 5800 2050
Wire Wire Line
	2600 2200 2900 2200
Wire Wire Line
	6300 2050 6300 3800
Wire Wire Line
	6350 4650 6350 4750
Wire Wire Line
	7150 5600 7150 5700
Wire Wire Line
	7150 6000 7150 6050
Wire Wire Line
	7500 6000 7500 6050
Wire Wire Line
	7850 6000 7850 6050
Wire Wire Line
	7500 5550 7500 5650
Wire Wire Line
	7500 5650 7850 5650
Wire Wire Line
	7850 5650 7850 5700
Connection ~ 7500 5650
Wire Wire Line
	5400 1850 5400 1800
Wire Wire Line
	5800 2550 5600 2550
Wire Wire Line
	5800 1500 5800 2050
Wire Wire Line
	5400 2900 5400 2850
Wire Wire Line
	6250 4350 6250 5450
Wire Wire Line
	6250 5450 5650 5450
Wire Wire Line
	5650 3950 5750 3950
Wire Wire Line
	5750 3950 5750 4450
Wire Wire Line
	2900 3250 2900 2200
Wire Wire Line
	5850 3950 5850 4250
Wire Wire Line
	5850 4250 5650 4250
Wire Wire Line
	6400 4150 6050 4150
Wire Wire Line
	6050 4150 6050 5150
Wire Wire Line
	6050 5150 5650 5150
Wire Wire Line
	6150 4250 6150 4850
Wire Wire Line
	6400 4050 5950 4050
Wire Wire Line
	5950 4050 5950 4550
Wire Wire Line
	5950 4550 5650 4550
Wire Wire Line
	4350 5750 4450 5750
Wire Wire Line
	4100 2200 4600 2200
Wire Wire Line
	4350 1500 5200 1500
Wire Wire Line
	4350 2550 5200 2550
Wire Wire Line
	5800 2050 5800 2550
Wire Wire Line
	7500 5650 7500 5700
$Comp
L MuxPi:MMBT4403LT1 Q4
U 1 1 5A69265B
P 5400 1600
F 0 "Q4" V 5728 1600 50  0000 C CNN
F 1 "MMBT4403LT1" V 5637 1600 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5600 1525 50  0001 L CIN
F 3 "https://www.tme.eu/pl/Document/b8fb0b2a2196eb2b0100116bda4d5a47/mmbt4403.pdf" H 5400 1600 50  0001 L CNN
F 4 "https://www.tme.eu/pl/details/mmbt4403lt1g/tranzystory-pnp-smd/on-semiconductor/" V 5400 1600 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" V 5400 1600 50  0001 C CNN "Manufacturer"
F 6 "MMBT4403LT1G" V 5400 1600 50  0001 C CNN "Symbol"
	1    5400 1600
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R75
U 1 1 5A6B2F6D
P 4750 2200
F 0 "R75" V 4650 2200 50  0000 C CNN
F 1 "1K 1%" V 4850 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 2200 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 4750 2200 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 4750 2200 60  0001 C CNN "Shop link"
	1    4750 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1850 5400 1850
$Comp
L MuxPi:R R76
U 1 1 5A6B5747
P 4750 3250
F 0 "R76" V 4650 3250 50  0000 C CNN
F 1 "1K 1%" V 4850 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4680 3250 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 4750 3250 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 4750 3250 60  0001 C CNN "Shop link"
	1    4750 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 3250 5400 3250
Wire Wire Line
	5400 3250 5400 2900
Wire Wire Line
	4750 2900 5400 2900
Connection ~ 5400 2900
Wire Wire Line
	4900 2200 5400 2200
Wire Wire Line
	5400 2200 5400 1850
Connection ~ 5400 1850
$Comp
L MuxPi:MMBT4403LT1 Q5
U 1 1 5A8F3224
P 5400 2650
F 0 "Q5" V 5728 2650 50  0000 C CNN
F 1 "MMBT4403LT1" V 5637 2650 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5600 2575 50  0001 L CIN
F 3 "https://www.tme.eu/pl/Document/b8fb0b2a2196eb2b0100116bda4d5a47/mmbt4403.pdf" H 5400 2650 50  0001 L CNN
F 4 "https://www.tme.eu/pl/details/mmbt4403lt1g/tranzystory-pnp-smd/on-semiconductor/" V 5400 2650 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" V 5400 2650 50  0001 C CNN "Manufacturer"
F 6 "MMBT4403LT1G" V 5400 2650 50  0001 C CNN "Symbol"
	1    5400 2650
	0    1    -1   0   
$EndComp
Wire Wire Line
	2900 2200 3000 2200
Connection ~ 2900 2200
Wire Wire Line
	3900 2200 4100 2200
Connection ~ 4100 2200
Wire Wire Line
	2900 3250 4600 3250
$EndSCHEMATC
