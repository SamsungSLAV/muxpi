EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 12
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
L MuxPi:HDMI_A J1
U 1 1 58490AB3
P 5800 3100
F 0 "J1" H 6369 3047 60  0000 L CNN
F 1 "471511001 (HDMI)" H 6369 2941 60  0000 L CNN
F 2 "mux-footprints:HDMI" H 5300 2600 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ee89c51a17a2db3df4db584d9f4e80e/MX-47151-1001.pdf" H 5300 2600 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mx-47151-1001/zlacza-euro-hdmi/molex/471511001/" H 5800 3100 60  0001 C CNN "Shop link"
F 5 "MOLEX" H 5800 3100 50  0001 C CNN "Manufacturer"
F 6 "471511001" H 5800 3100 50  0001 C CNN "Symbol"
	1    5800 3100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR054
U 1 1 58490ABC
P 4900 4300
F 0 "#PWR054" H 4900 4050 50  0001 C CNN
F 1 "GND" H 4900 4150 50  0000 C CNN
F 2 "" H 4900 4300 60  0000 C CNN
F 3 "" H 4900 4300 60  0000 C CNN
	1    4900 4300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR053
U 1 1 58490AC2
P 4800 3750
F 0 "#PWR053" H 4800 3600 50  0001 C CNN
F 1 "VDD" H 4800 3900 50  0000 C CNN
F 2 "" H 4800 3750 60  0000 C CNN
F 3 "" H 4800 3750 60  0000 C CNN
	1    4800 3750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR055
U 1 1 58490AC9
P 5200 4950
F 0 "#PWR055" H 5200 4700 50  0001 C CNN
F 1 "GND" H 5200 4800 50  0000 C CNN
F 2 "" H 5200 4950 60  0000 C CNN
F 3 "" H 5200 4950 60  0000 C CNN
	1    5200 4950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR056
U 1 1 58490ADD
P 5600 4950
F 0 "#PWR056" H 5600 4700 50  0001 C CNN
F 1 "GND" H 5600 4800 50  0000 C CNN
F 2 "" H 5600 4950 60  0000 C CNN
F 3 "" H 5600 4950 60  0000 C CNN
	1    5600 4950
	1    0    0    -1  
$EndComp
Text Notes 600  750  0    60   ~ 0
HDMI\nEDID
NoConn ~ 5100 2000
NoConn ~ 5100 2100
NoConn ~ 5100 2200
NoConn ~ 5100 2400
NoConn ~ 5100 2500
NoConn ~ 5100 2600
NoConn ~ 5100 2800
NoConn ~ 5100 2900
NoConn ~ 5100 3000
NoConn ~ 5100 3200
NoConn ~ 5100 3300
NoConn ~ 5100 3400
NoConn ~ 5100 3600
NoConn ~ 5100 3700
$Comp
L MuxPi:GND #PWR049
U 1 1 58490AF2
P 950 7400
F 0 "#PWR049" H 950 7150 50  0001 C CNN
F 1 "GND" H 950 7250 50  0000 C CNN
F 2 "" H 950 7400 60  0000 C CNN
F 3 "" H 950 7400 60  0000 C CNN
	1    950  7400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CP C20
U 1 1 58490AFF
P 1650 7200
F 0 "C20" H 1675 7300 50  0000 L CNN
F 1 "4.7uF/16V" H 1450 6750 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 1688 7050 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/85f84849ee9dc6997647a15c8c95a9d3/taj.pdf" H 1650 7200 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/taja475k016r/kondensatory-tantalowe-smd/avx/taja475k016rnj/" H 1650 7200 60  0001 C CNN "Shop link"
	1    1650 7200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR051
U 1 1 58490B06
P 1650 7400
F 0 "#PWR051" H 1650 7150 50  0001 C CNN
F 1 "GND" H 1650 7250 50  0000 C CNN
F 2 "" H 1650 7400 60  0000 C CNN
F 3 "" H 1650 7400 60  0000 C CNN
	1    1650 7400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR048
U 1 1 58490B0C
P 950 7000
F 0 "#PWR048" H 950 6850 50  0001 C CNN
F 1 "VDD" H 950 7150 50  0000 C CNN
F 2 "" H 950 7000 60  0000 C CNN
F 3 "" H 950 7000 60  0000 C CNN
	1    950  7000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR050
U 1 1 58490B12
P 1650 7000
F 0 "#PWR050" H 1650 6850 50  0001 C CNN
F 1 "VDD" H 1650 7150 50  0000 C CNN
F 2 "" H 1650 7000 60  0000 C CNN
F 3 "" H 1650 7000 60  0000 C CNN
	1    1650 7000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR052
U 1 1 58490B26
P 4450 3200
F 0 "#PWR052" H 4450 3050 50  0001 C CNN
F 1 "VDD" H 4450 3350 50  0000 C CNN
F 2 "" H 4450 3200 60  0000 C CNN
F 3 "" H 4450 3200 60  0000 C CNN
	1    4450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3800 4350 3800
Wire Wire Line
	3650 3900 4550 3900
Wire Wire Line
	4900 4300 4900 4000
Wire Wire Line
	4900 4000 5100 4000
Wire Wire Line
	5100 4100 4800 4100
Wire Wire Line
	4800 4100 4800 3750
Wire Wire Line
	5100 4200 3650 4200
Wire Wire Line
	5200 4900 5200 4950
Wire Wire Line
	5600 4900 5600 4950
Wire Wire Line
	5200 4600 5200 4550
Wire Wire Line
	5200 4550 5400 4550
Wire Wire Line
	5600 4550 5600 4600
Wire Wire Line
	5400 4500 5400 4550
Connection ~ 5400 4550
Wire Wire Line
	950  7000 950  7050
Wire Wire Line
	950  7350 950  7400
Wire Wire Line
	1650 7000 1650 7050
Wire Wire Line
	1650 7350 1650 7400
Wire Wire Line
	4550 3600 4550 3900
Connection ~ 4550 3900
Wire Wire Line
	4350 3300 4350 3250
Wire Wire Line
	4350 3250 4450 3250
Wire Wire Line
	4550 3250 4550 3300
Wire Wire Line
	4350 3600 4350 3800
Connection ~ 4350 3800
Wire Wire Line
	4450 3250 4450 3200
Connection ~ 4450 3250
Text HLabel 3650 3800 0    60   Input ~ 0
HDMI_SCL
Text HLabel 3650 3900 0    60   Input ~ 0
HDMI_SDA
Text HLabel 3650 4200 0    60   Input ~ 0
HDMI_HOT_PLUG
$Comp
L MuxPi:C C19
U 1 1 58500BE2
P 950 7200
F 0 "C19" H 800 7350 50  0000 L CNN
F 1 "100nF/50V" H 750 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 988 7050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 950 7200 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 950 7200 60  0001 C CNN "Shop link"
	1    950  7200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C21
U 1 1 58500D22
P 5200 4750
F 0 "C21" H 4950 4850 50  0000 L CNN
F 1 "100nF/50V" H 5000 4300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5238 4600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5200 4750 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5200 4750 60  0001 C CNN "Shop link"
	1    5200 4750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R13
U 1 1 58503EB2
P 4350 3450
F 0 "R13" H 4250 3600 50  0000 C CNN
F 1 "10K" H 4200 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4280 3450 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4350 3450 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4350 3450 60  0001 C CNN "Shop link"
	1    4350 3450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R14
U 1 1 58503F4E
P 4550 3450
F 0 "R14" H 4650 3600 50  0000 C CNN
F 1 "10K" H 4700 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4480 3450 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4550 3450 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4550 3450 60  0001 C CNN "Shop link"
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R15
U 1 1 585059E2
P 5600 4750
F 0 "R15" H 5700 4800 50  0000 L CNN
F 1 "330R" H 5700 4700 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 5530 4750 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 5600 4750 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 5600 4750 60  0001 C CNN "Shop link"
	1    5600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4550 5600 4550
Wire Wire Line
	4550 3900 5100 3900
Wire Wire Line
	4350 3800 5100 3800
Wire Wire Line
	4450 3250 4550 3250
$EndSCHEMATC
