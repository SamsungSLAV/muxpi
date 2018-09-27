EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 12
Title "MuxPi"
Date "2018-04-20"
Rev "1.2"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 - 2018 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MuxPi:GND #PWR046
U 1 1 5849B387
P 4300 5750
F 0 "#PWR046" H 4300 5500 50  0001 C CNN
F 1 "GND" H 4300 5600 50  0000 C CNN
F 2 "" H 4300 5750 60  0000 C CNN
F 3 "" H 4300 5750 60  0000 C CNN
	1    4300 5750
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR044
U 1 1 5849B38D
P 3500 4550
F 0 "#PWR044" H 3500 4400 50  0001 C CNN
F 1 "VDD" H 3500 4700 50  0000 C CNN
F 2 "" H 3500 4550 60  0000 C CNN
F 3 "" H 3500 4550 60  0000 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:D D1
U 1 1 5849B394
P 3900 5000
F 0 "D1" H 3900 5100 50  0000 C CNN
F 1 "ES1AL" H 3900 4900 50  0000 C CNN
F 2 "mux-footprints:Sub_SMA" H 3900 5000 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6e3ed172b8ef57eec12ad172948b8283/ES1JL-DTE.pdf" H 3900 5000 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/es1jl/diody-uniwersalne-smd/taiwan-semiconductor/" H 3900 5000 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 3900 5000 50  0001 C CNN "Manufacturer"
F 6 "ES1JL" H 3900 5000 50  0001 C CNN "Symbol"
	1    3900 5000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:FUJITSU-JV-1-POLE RL1
U 1 1 5849B3A2
P 3900 4400
F 0 "RL1" V 4300 4050 50  0000 L CNN
F 1 "JV-5S-KT" H 4330 4355 50  0001 L CNN
F 2 "mux-footprints:Relay_SPST-NO_FUJITSU-JV" H 3900 4400 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/160416a7d37511bbe210dab3bc04735d/jv.pdf" H 3900 4400 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/jv-5s-kt/przekazniki-elektromagn-miniaturowe/fujitsu-takamisawa/" V 3900 4400 60  0001 C CNN "Shop link"
F 5 "FUJITSU-TAKAMISAWA" V 3900 4400 50  0001 C CNN "Manufacturer"
F 6 "JV-5S-KT" V 3900 4400 50  0001 C CNN "Symbol"
	1    3900 4400
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:GND #PWR045
U 1 1 5849B3B0
P 3750 5750
F 0 "#PWR045" H 3750 5500 50  0001 C CNN
F 1 "GND" H 3750 5600 50  0000 C CNN
F 2 "" H 3750 5750 60  0000 C CNN
F 3 "" H 3750 5750 60  0000 C CNN
	1    3750 5750
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P2
U 1 1 5849B3B6
P 2300 3900
F 0 "P2" H 2378 3941 50  0000 L CNN
F 1 "XY2500V-D(5.08)-2PIN" H 2378 3850 50  0000 L CNN
F 2 "mux-footprints:TerminalBlock_XY2500V-D(5.08)" H 2300 3900 50  0001 C CNN
F 3 "http://www.cresttech.com.au/pdf/Pluggable_connector.pdf" H 2300 3900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/tbg-5-pw-2p-gn/listwy-zaciskowe-do-druku/xinya/xy2500v-d508-2pin/" H 2300 3900 60  0001 C CNN "Shop link"
F 5 "http://www.tme.eu/pl/details/tbw-5.08-2p/listwy-zaciskowe-do-druku/xinya/xy2500f-bv508-2p/" H 2300 3900 60  0001 C CNN "Complementary device"
F 6 "XINYA" H 2300 3900 50  0001 C CNN "Complementary manufacturer"
F 7 "XY2500F-BV(5.08)-2P" H 2300 3900 50  0001 C CNN "Complementary symbol"
F 8 "XINYA" H 2300 3900 50  0001 C CNN "Manufacturer"
F 9 "XY2500V-D(5.08)-2PIN" H 2300 3900 50  0001 C CNN "Symbol"
	1    2300 3900
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:ACS712 U4
U 1 1 5849B3CB
P 3900 2800
F 0 "U4" V 3600 2450 60  0000 R CNN
F 1 "ACS712ELCTR-05B-T" V 3950 2150 60  0000 R CNN
F 2 "mux-footprints:SOIC-8" H 1690 1690 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/64754.pdf?_ga=1.192000233.291132730.1474618953" H 1690 1690 60  0001 C CNN
F 4 "http://pl.farnell.com/allegro-microsystems/acs712elctr-05b-t/ic-sensor-current-5a-soic8/dp/1329623" V 3900 2800 60  0001 C CNN "Shop link"
F 5 "ALLEGRO MICROSYSTEMS" V 3900 2800 50  0001 C CNN "Manufacturer"
F 6 "ACS712ELCTR-05B-T " V 3900 2800 50  0001 C CNN "Symbol"
	1    3900 2800
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:VDD #PWR043
U 1 1 5849B3D2
P 3500 2300
F 0 "#PWR043" H 3500 2150 50  0001 C CNN
F 1 "VDD" H 3500 2450 50  0000 C CNN
F 2 "" H 3500 2300 60  0000 C CNN
F 3 "" H 3500 2300 60  0000 C CNN
	1    3500 2300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR047
U 1 1 5849B3D8
P 4650 2400
F 0 "#PWR047" H 4650 2150 50  0001 C CNN
F 1 "GND" H 4650 2250 50  0000 C CNN
F 2 "" H 4650 2400 60  0000 C CNN
F 3 "" H 4650 2400 60  0000 C CNN
	1    4650 2400
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR040
U 1 1 5849B401
P 700 7350
F 0 "#PWR040" H 700 7100 50  0001 C CNN
F 1 "GND" H 700 7200 50  0000 C CNN
F 2 "" H 700 7350 60  0000 C CNN
F 3 "" H 700 7350 60  0000 C CNN
	1    700  7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR039
U 1 1 5849B40E
P 700 6900
F 0 "#PWR039" H 700 6750 50  0001 C CNN
F 1 "VDD" H 700 7050 50  0000 C CNN
F 2 "" H 700 6900 60  0000 C CNN
F 3 "" H 700 6900 60  0000 C CNN
	1    700  6900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR042
U 1 1 5849B414
P 1150 7350
F 0 "#PWR042" H 1150 7100 50  0001 C CNN
F 1 "GND" H 1150 7200 50  0000 C CNN
F 2 "" H 1150 7350 60  0000 C CNN
F 3 "" H 1150 7350 60  0000 C CNN
	1    1150 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR041
U 1 1 5849B421
P 1150 6900
F 0 "#PWR041" H 1150 6750 50  0001 C CNN
F 1 "VDD" H 1150 7050 50  0000 C CNN
F 2 "" H 1150 6900 60  0000 C CNN
F 3 "" H 1150 6900 60  0000 C CNN
	1    1150 6900
	1    0    0    -1  
$EndComp
Text Notes 650  750  0    60   ~ 0
DUT PWR CTRL
Text Notes 4450 3650 0    60   Italic 12
* DNP
Wire Wire Line
	4300 5500 4300 5750
Wire Wire Line
	4300 4600 4300 5000
Wire Wire Line
	2850 5350 3750 5350
Wire Wire Line
	3750 5400 3750 5350
Connection ~ 3750 5350
Wire Wire Line
	3750 5700 3750 5750
Wire Wire Line
	3500 4550 3500 4600
Wire Wire Line
	3500 4600 3600 4600
Wire Wire Line
	3500 5000 3750 5000
Connection ~ 3500 4600
Wire Wire Line
	4050 5000 4300 5000
Wire Wire Line
	4200 4600 4300 4600
Connection ~ 4300 5000
Wire Wire Line
	2500 3950 3250 3950
Wire Wire Line
	3250 3950 3250 4100
Wire Wire Line
	3250 4100 3600 4100
Wire Wire Line
	3950 2450 3950 2250
Wire Wire Line
	3950 2250 4000 2250
Wire Wire Line
	4300 2250 4350 2250
Wire Wire Line
	4350 2250 4350 2450
Wire Wire Line
	3500 2300 3500 2450
Wire Wire Line
	3650 3150 3650 3200
Wire Wire Line
	3650 3200 3700 3200
Wire Wire Line
	3750 3200 3750 3150
Wire Wire Line
	4050 3150 4050 3200
Wire Wire Line
	4050 3200 4100 3200
Wire Wire Line
	4150 3200 4150 3150
Wire Wire Line
	2500 3850 3700 3850
Wire Wire Line
	3700 3200 3700 3450
Connection ~ 3700 3200
Wire Wire Line
	4050 3850 4100 3850
Wire Wire Line
	4100 3200 4100 3450
Connection ~ 4100 3200
Wire Wire Line
	3850 2450 3850 1950
Wire Wire Line
	3850 1950 5000 1950
Wire Wire Line
	4650 2250 4650 2400
Connection ~ 4350 2250
Wire Wire Line
	4600 4200 4200 4200
Wire Wire Line
	700  6900 700  7000
Wire Wire Line
	700  7300 700  7350
Wire Wire Line
	1150 6900 1150 7000
Wire Wire Line
	1150 7300 1150 7350
Text HLabel 10150 1950 2    60   Input ~ 0
DUT_PWR_CURRENT
Text HLabel 2850 5350 0    60   Input ~ 0
POWER_SW_ON
Wire Wire Line
	4600 3950 4600 4200
Wire Wire Line
	3750 3450 3700 3450
Connection ~ 3700 3450
Connection ~ 3700 3650
Connection ~ 4100 3650
Wire Wire Line
	4050 3450 4100 3450
Connection ~ 4100 3450
Wire Wire Line
	3700 3650 3750 3650
Wire Wire Line
	4050 3650 4100 3650
Connection ~ 4100 3850
Connection ~ 3700 3850
Wire Notes Line
	3500 3300 4350 3300
Wire Notes Line
	4350 3300 4350 3950
Wire Notes Line
	4350 3950 3500 3950
Wire Notes Line
	3500 3950 3500 3300
Text Notes 3550 3450 0    60   Italic 12
*
$Comp
L MuxPi:C C16
U 1 1 584EE8D8
P 700 7150
F 0 "C16" H 750 7250 50  0000 L CNN
F 1 "100nF/50V" V 550 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 738 7000 50  0001 C CNN
F 3 "" H 700 7150 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 700 7150 60  0001 C CNN "Shop link"
	1    700  7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C17
U 1 1 584EE9B5
P 1150 7150
F 0 "C17" H 1200 7250 50  0000 L CNN
F 1 "100nF/50V" V 1000 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1188 7000 50  0001 C CNN
F 3 "" H 1150 7150 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 1150 7150 60  0001 C CNN "Shop link"
	1    1150 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C18
U 1 1 584EEDA8
P 4150 2250
F 0 "C18" V 4300 2200 50  0000 L CNN
F 1 "100nF/50V" V 4000 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4188 2100 50  0001 C CNN
F 3 "" H 4150 2250 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 4150 2250 60  0001 C CNN "Shop link"
	1    4150 2250
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R9
U 1 1 584F0A75
P 3750 5550
F 0 "R9" V 3650 5550 50  0000 C CNN
F 1 "10K" V 3850 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3680 5550 30  0001 C CNN
F 3 "" H 3750 5550 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3750 5550 60  0001 C CNN "Shop link"
	1    3750 5550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R10
U 1 1 584F178E
P 3900 3450
F 0 "R10" V 3800 3450 50  0000 C CNN
F 1 "0R" V 3900 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3830 3450 30  0001 C CNN
F 3 "" H 3900 3450 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3900 3450 60  0001 C CNN "Shop link"
	1    3900 3450
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R11
U 1 1 584F18AF
P 3900 3650
F 0 "R11" V 3800 3650 50  0000 C CNN
F 1 "0R" V 3900 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3830 3650 30  0001 C CNN
F 3 "" H 3900 3650 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3900 3650 60  0001 C CNN "Shop link"
	1    3900 3650
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R12
U 1 1 584F18E9
P 3900 3850
F 0 "R12" V 3800 3850 50  0000 C CNN
F 1 "0R" V 3900 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3830 3850 30  0001 C CNN
F 3 "" H 3900 3850 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3900 3850 60  0001 C CNN "Shop link"
	1    3900 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3950 5050 3950
Wire Wire Line
	5050 3950 5150 3850
Wire Wire Line
	5150 3850 5750 3850
Wire Wire Line
	5050 3850 5150 3950
Wire Wire Line
	5150 3950 5750 3950
Wire Wire Line
	3750 5350 4000 5350
Wire Wire Line
	3500 4600 3500 5000
Wire Wire Line
	4300 5000 4300 5100
Wire Wire Line
	3700 3200 3750 3200
Wire Wire Line
	4100 3200 4150 3200
Wire Wire Line
	4350 2250 4650 2250
Wire Wire Line
	3700 3450 3700 3650
Wire Wire Line
	3700 3650 3700 3850
Wire Wire Line
	4100 3650 4100 3850
Wire Wire Line
	4100 3450 4100 3650
Wire Wire Line
	4100 3850 5050 3850
Wire Wire Line
	3700 3850 3750 3850
$Comp
L MuxPi:R R69
U 1 1 5A9583C4
P 5450 2200
F 0 "R69" V 5350 2200 50  0000 C CNN
F 1 "10K 1%" V 5550 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5380 2200 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/55d4466939032306fcda2f2a67f6c9bb/rezystor-smd.pdf" H 5450 2200 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-10k/rezystory-smd-0805/royal-ohm/0805s8j0103t5e/" V 5450 2200 60  0001 C CNN "Shop link"
	1    5450 2200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R68
U 1 1 5A9590D4
P 5150 1950
F 0 "R68" V 5050 1950 50  0000 C CNN
F 1 "2K 1%" V 5250 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5080 1950 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 5150 1950 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-072k/rezystory-smd-0805/yageo/rc0805jr-072kl/" V 5150 1950 60  0001 C CNN "Shop link"
	1    5150 1950
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0210
U 1 1 5A95B2F5
P 5450 2400
F 0 "#PWR0210" H 5450 2150 50  0001 C CNN
F 1 "GND" H 5450 2250 50  0000 C CNN
F 2 "" H 5450 2400 60  0000 C CNN
F 3 "" H 5450 2400 60  0000 C CNN
	1    5450 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2350 5450 2400
$Comp
L MuxPi:C C80
U 1 1 5A95C02A
P 6050 2200
F 0 "C80" V 6200 2150 50  0000 L CNN
F 1 "100nF/50V" V 5900 2000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6088 2050 50  0001 C CNN
F 3 "" H 6050 2200 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 6050 2200 60  0001 C CNN "Shop link"
	1    6050 2200
	-1   0    0    1   
$EndComp
$Comp
L MuxPi:GND #PWR0211
U 1 1 5A95C0ED
P 6050 2400
F 0 "#PWR0211" H 6050 2150 50  0001 C CNN
F 1 "GND" H 6050 2250 50  0000 C CNN
F 2 "" H 6050 2400 60  0000 C CNN
F 3 "" H 6050 2400 60  0000 C CNN
	1    6050 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 2350 6050 2400
$Comp
L MuxPi:D D12
U 1 1 5A95CF51
P 5750 1950
F 0 "D12" H 5750 1734 50  0000 C CNN
F 1 "1N4448WS" H 5750 1825 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323F" H 5750 1826 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/092852c2250de492ce82b1b9e9d241c4/1N4148WS.pdf" H 5750 1950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/1n4448ws/diody-uniwersalne-smd/on-semiconductor-fairchild/" H 5750 1950 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 5750 1950 50  0001 C CNN "Manufacturer"
F 6 "1N4448WS" H 5750 1950 50  0001 C CNN "Symbol"
	1    5750 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 1950 6050 1950
Wire Wire Line
	6050 2050 6050 1950
Connection ~ 6050 1950
Wire Wire Line
	5300 1950 5450 1950
Wire Wire Line
	5450 2050 5450 1950
Connection ~ 5450 1950
Wire Wire Line
	5450 1950 5600 1950
Wire Wire Line
	8100 2900 8250 2900
Wire Wire Line
	7700 2550 7700 2600
$Comp
L MuxPi:R R74
U 1 1 5A9F2C03
P 8250 3200
F 0 "R74" V 8150 3200 50  0000 C CNN
F 1 "10K 1%" V 8350 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8180 3200 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 8250 3200 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-073k3/rezystory-smd-0805/yageo/rc0805fr-073k3l/" V 8250 3200 60  0001 C CNN "Shop link"
	1    8250 3200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R70
U 1 1 5A9F2C0B
P 6800 3500
F 0 "R70" V 6700 3500 50  0000 C CNN
F 1 "10K 1%" V 6900 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6730 3500 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 6800 3500 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 6800 3500 60  0001 C CNN "Shop link"
	1    6800 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3000 7400 3500
Wire Wire Line
	7400 3000 7500 3000
Wire Wire Line
	8250 3350 8250 3500
Wire Wire Line
	8250 3500 7400 3500
Wire Wire Line
	8250 3050 8250 2900
Wire Wire Line
	8620 3100 8600 3100
Wire Wire Line
	8820 2650 8820 2700
$Comp
L MuxPi:R R71
U 1 1 5AA00267
P 7100 2600
F 0 "R71" V 7000 2600 50  0000 C CNN
F 1 "30K 1%" V 7200 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 2600 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7100 2600 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-07100k/rezystory-smd-0805/yageo/rc0805fr-07100kl/" V 7100 2600 60  0001 C CNN "Shop link"
	1    7100 2600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R72
U 1 1 5AA01B90
P 7100 3000
F 0 "R72" V 7000 3000 50  0000 C CNN
F 1 "10K 1%" V 7200 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7030 3000 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7100 3000 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07100k/rezystory-smd-0805/yageo/rc0805jr-07100kl/" V 7100 3000 60  0001 C CNN "Shop link"
	1    7100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2750 7100 2800
Wire Wire Line
	7100 2800 7500 2800
Connection ~ 7100 2800
Wire Wire Line
	7100 2800 7100 2850
$Comp
L MuxPi:GND #PWR0213
U 1 1 5AA04F80
P 7100 3200
F 0 "#PWR0213" H 7100 2950 50  0001 C CNN
F 1 "GND" H 7100 3050 50  0000 C CNN
F 2 "" H 7100 3200 60  0000 C CNN
F 3 "" H 7100 3200 60  0000 C CNN
	1    7100 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3150 7100 3200
Wire Wire Line
	7400 3500 6950 3500
Connection ~ 7400 3500
Wire Wire Line
	6400 3500 6650 3500
$Comp
L MuxPi:R R73
U 1 1 5AA102F9
P 8150 1950
F 0 "R73" V 8050 1950 50  0000 C CNN
F 1 "0R" V 8150 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8080 1950 30  0001 C CNN
F 3 "" H 8150 1950 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 8150 1950 60  0001 C CNN "Shop link"
	1    8150 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1950 6400 1950
Wire Wire Line
	6400 3500 6400 1950
Connection ~ 6400 1950
Wire Wire Line
	6400 1950 8000 1950
$Comp
L MuxPi:2N7002 Q1
U 1 1 5A8B550D
P 4200 5300
F 0 "Q1" H 4391 5346 50  0000 L CNN
F 1 "2N7002" H 4391 5255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4400 5225 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 4200 5300 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 4200 5300 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 4200 5300 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 4200 5300 50  0001 C CNN "Symbol"
	1    4200 5300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P3
U 1 1 5A8B8B5B
P 5950 3900
F 0 "P3" H 6028 3941 50  0000 L CNN
F 1 "XY2500V-D(5.08)-2PIN" H 6028 3850 50  0000 L CNN
F 2 "mux-footprints:TerminalBlock_XY2500V-D(5.08)" H 5950 3900 50  0001 C CNN
F 3 "http://www.cresttech.com.au/pdf/Pluggable_connector.pdf" H 5950 3900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/tbg-5-pw-2p-gn/listwy-zaciskowe-do-druku/xinya/xy2500v-d508-2pin/" H 5950 3900 60  0001 C CNN "Shop link"
F 5 "http://www.tme.eu/pl/details/tbw-5.08-2p/listwy-zaciskowe-do-druku/xinya/xy2500f-bv508-2p/" H 5950 3900 60  0001 C CNN "Complementary device"
F 6 "XINYA" H 5950 3900 50  0001 C CNN "Complementary manufacturer"
F 7 "XY2500F-BV(5.08)-2P" H 5950 3900 50  0001 C CNN "Complementary symbol"
F 8 "XINYA" H 5950 3900 50  0001 C CNN "Manufacturer"
F 9 "XY2500V-D(5.08)-2PIN" H 5950 3900 50  0001 C CNN "Symbol"
	1    5950 3900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:MCP6002 U15
U 1 1 5A8BCDE3
P 7800 2900
F 0 "U15" H 7800 3100 50  0000 L CNN
F 1 "MCP6002-E/SN" H 7450 2600 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 7700 2950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 7800 3050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 7800 2900 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 7800 2900 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 7800 2900 50  0001 C CNN "Symbol"
	1    7800 2900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:MCP6002 U15
U 2 1 5A8BF6A4
P 8920 3000
F 0 "U15" H 8920 3200 50  0000 L CNN
F 1 "MCP6002-E/SN" H 8570 2700 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 8820 3050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 8920 3150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 8920 3000 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 8920 3000 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 8920 3000 50  0001 C CNN "Symbol"
	2    8920 3000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR0199
U 1 1 5AE406E3
P 7100 2400
F 0 "#PWR0199" H 7100 2250 50  0001 C CNN
F 1 "VDD" H 7100 2550 50  0000 C CNN
F 2 "" H 7100 2400 60  0000 C CNN
F 3 "" H 7100 2400 60  0000 C CNN
	1    7100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2400 7100 2450
$Comp
L MuxPi:VDD #PWR0212
U 1 1 5AE44466
P 7700 2550
F 0 "#PWR0212" H 7700 2400 50  0001 C CNN
F 1 "VDD" H 7700 2700 50  0000 C CNN
F 2 "" H 7700 2550 60  0000 C CNN
F 3 "" H 7700 2550 60  0000 C CNN
	1    7700 2550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR0214
U 1 1 5AE46727
P 8820 2650
F 0 "#PWR0214" H 8820 2500 50  0001 C CNN
F 1 "VDD" H 8820 2800 50  0000 C CNN
F 2 "" H 8820 2650 60  0000 C CNN
F 3 "" H 8820 2650 60  0000 C CNN
	1    8820 2650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R79
U 1 1 5AE808D4
P 8820 3730
F 0 "R79" V 8720 3730 50  0000 C CNN
F 1 "3.3K 1%" V 8920 3730 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8750 3730 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 8820 3730 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 8820 3730 60  0001 C CNN "Shop link"
	1    8820 3730
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1950 9470 1950
$Comp
L MuxPi:R R78
U 1 1 5AE828B8
P 8600 3980
F 0 "R78" V 8500 3980 50  0000 C CNN
F 1 "1.1K 1%" V 8700 3980 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8530 3980 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 8600 3980 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 8600 3980 60  0001 C CNN "Shop link"
	1    8600 3980
	-1   0    0    1   
$EndComp
Connection ~ 8250 2900
Wire Wire Line
	9220 3000 9280 3000
Wire Wire Line
	8600 3100 8600 3730
Wire Wire Line
	8670 3730 8600 3730
Connection ~ 8600 3730
Wire Wire Line
	8600 3730 8600 3830
Wire Wire Line
	8970 3730 9280 3730
Wire Wire Line
	9280 3730 9280 3000
Connection ~ 9280 3000
Wire Wire Line
	9280 3000 9470 3000
$Comp
L MuxPi:GND #PWR0216
U 1 1 5AE9BB47
P 8600 4200
F 0 "#PWR0216" H 8600 3950 50  0001 C CNN
F 1 "GND" H 8600 4050 50  0000 C CNN
F 2 "" H 8600 4200 60  0000 C CNN
F 3 "" H 8600 4200 60  0000 C CNN
	1    8600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4130 8600 4200
Wire Wire Line
	8250 2900 8620 2900
Wire Wire Line
	9470 3000 9470 1950
Connection ~ 9470 1950
Wire Wire Line
	9470 1950 9840 1950
$Comp
L MuxPi:D D13
U 1 1 5AEA63A0
P 9840 2340
F 0 "D13" H 9840 2440 50  0000 C CNN
F 1 "STPS1L30A" H 9840 2240 50  0000 C CNN
F 2 "mux-footprints:Sub_SMA" H 9840 2340 60  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/db6e659bbdb403bb0467e7bdd05bc1d0/STPS1L30A.pdf" H 9840 2340 60  0001 C CNN
F 4 "https://www.tme.eu/pl/details/stps1l30a/diody-schottky-smd/st-microelectronics/" H 9840 2340 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 9840 2340 50  0001 C CNN "Manufacturer"
F 6 "STPS1L30A" H 9840 2340 50  0001 C CNN "Symbol"
	1    9840 2340
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0218
U 1 1 5AEA854F
P 9840 2560
F 0 "#PWR0218" H 9840 2310 50  0001 C CNN
F 1 "GND" H 9840 2410 50  0000 C CNN
F 2 "" H 9840 2560 60  0000 C CNN
F 3 "" H 9840 2560 60  0000 C CNN
	1    9840 2560
	1    0    0    -1  
$EndComp
Wire Wire Line
	9840 2490 9840 2560
Wire Wire Line
	9840 2190 9840 1950
Connection ~ 9840 1950
Wire Wire Line
	9840 1950 10150 1950
$Comp
L MuxPi:ICL7660 U16
U 1 1 5AEB2061
P 7690 4870
F 0 "U16" H 7715 5267 60  0000 C CNN
F 1 "ICL7660" H 7715 5161 60  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 7440 4820 60  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/a0cf339e6d3a59b4335a12ffe0a88af6/ICL7660x-DTE.pdf" H 7440 4820 60  0001 C CNN
	1    7690 4870
	1    0    0    -1  
$EndComp
NoConn ~ 7240 4720
NoConn ~ 8190 4820
NoConn ~ 8190 4920
$Comp
L MuxPi:GND #PWR0215
U 1 1 5AEB91A2
P 7160 5090
F 0 "#PWR0215" H 7160 4840 50  0001 C CNN
F 1 "GND" H 7160 4940 50  0000 C CNN
F 2 "" H 7160 5090 60  0000 C CNN
F 3 "" H 7160 5090 60  0000 C CNN
	1    7160 5090
	1    0    0    -1  
$EndComp
Wire Wire Line
	7160 5090 7160 4920
Wire Wire Line
	7160 4920 7240 4920
$Comp
L MuxPi:VDD #PWR0217
U 1 1 5AEBB4DD
P 8280 4620
F 0 "#PWR0217" H 8280 4470 50  0001 C CNN
F 1 "VDD" H 8280 4770 50  0000 C CNN
F 2 "" H 8280 4620 60  0000 C CNN
F 3 "" H 8280 4620 60  0000 C CNN
	1    8280 4620
	1    0    0    -1  
$EndComp
Wire Wire Line
	8280 4620 8280 4720
Wire Wire Line
	8280 4720 8190 4720
$Comp
L MuxPi:CP C81
U 1 1 5AEBFEEE
P 6870 4820
F 0 "C81" V 6710 4780 50  0000 L CNN
F 1 "10uF/10V" V 7000 4660 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 6908 4670 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 6870 4820 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 6870 4820 60  0001 C CNN "Shop link"
F 5 "KEMET" H 6870 4820 50  0001 C CNN "Manufacturer"
F 6 "T491A106M016AT" H 6870 4820 50  0001 C CNN "Symbol"
	1    6870 4820
	0    1    1    0   
$EndComp
Wire Wire Line
	7020 4820 7240 4820
Wire Wire Line
	7240 5020 6650 5020
Wire Wire Line
	6650 5020 6650 4820
Wire Wire Line
	6650 4820 6720 4820
Wire Wire Line
	8190 5020 8290 5020
$Comp
L MuxPi:CP C82
U 1 1 5AECFCE5
P 8290 5230
F 0 "C82" V 8130 5190 50  0000 L CNN
F 1 "10uF/10V" V 8420 5070 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 8328 5080 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 8290 5230 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 8290 5230 60  0001 C CNN "Shop link"
F 5 "KEMET" H 8290 5230 50  0001 C CNN "Manufacturer"
F 6 "T491A106M016AT" H 8290 5230 50  0001 C CNN "Symbol"
	1    8290 5230
	-1   0    0    1   
$EndComp
$Comp
L MuxPi:GND #PWR0219
U 1 1 5AECFE4C
P 8290 5450
F 0 "#PWR0219" H 8290 5200 50  0001 C CNN
F 1 "GND" H 8290 5300 50  0000 C CNN
F 2 "" H 8290 5450 60  0000 C CNN
F 3 "" H 8290 5450 60  0000 C CNN
	1    8290 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8290 5380 8290 5450
Wire Wire Line
	8290 5080 8290 5020
Connection ~ 8290 5020
Wire Wire Line
	8290 5020 9170 5020
Text Label 9170 5020 2    60   ~ 0
-VDD
Wire Wire Line
	8820 3410 7700 3410
Wire Wire Line
	7700 3200 7700 3410
Wire Wire Line
	8820 3300 8820 3410
Text Label 8040 3410 2    60   ~ 0
-VDD
Wire Notes Line
	3250 1600 10050 1600
Wire Notes Line
	10050 1600 10050 5800
Wire Notes Line
	10050 5800 6150 5800
Wire Notes Line
	6150 5800 6150 3250
Wire Notes Line
	6150 3250 3250 3250
Wire Notes Line
	3250 3250 3250 1600
Text Notes 6300 5700 0    60   Italic 12
* CMC  (Current Measurement Circuitry)
Text Notes 900  6350 0    60   Italic 12
NOTE:
Text Notes 1200 6350 0    60   ~ 0
If you don't want current measurement functionality then populate DNP resistors and do not populate component marked as CMC.
Text Notes 650  1150 0    60   ~ 0
Although power switching and current measurement is galvanically isolated from the rest of MuxPi's components,
Text Notes 650  1000 0    60   Italic 12
NOTE:
Text Notes 650  1250 0    60   ~ 0
it is recommended to connect power supply for DUT to P3 connector with positive to its pin #1.
Text Notes 650  1350 0    60   ~ 0
This way you will still be able to power off the DUT even if its GND is somwhere else connected to MixPi's GND.
Text Notes 650  1450 0    60   ~ 0
Also it will make possible to measure current as CMC measures current flowing only in one direction.
Text Notes 650  1700 0    60   Italic 12
NOTE:
Text Notes 650  1850 0    60   ~ 0
U4 can be changed to ACS723* to increase acuracy
Text Notes 650  1950 0    60   ~ 0
of small value current measurement.
Text Notes 650  2050 0    60   ~ 0
If ACS723 is used then value of R78 and R79 
Text Notes 650  2150 0    60   ~ 0
should be changed according to desired gain.
Text Notes 650  2400 0    60   Italic 12
NOTE FROM THE FUTURE:\n
Text Notes 650  2550 0    60   ~ 0
CMC design is wrong thus not usable at all.\n
Text Notes 650  2700 0    60   ~ 12
DO NOT build this verison of MuxP
Text Notes 650  2800 0    60   ~ 12
if you want measure current drawn by DUT!!!
$EndSCHEMATC
