EESchema Schematic File Version 4
LIBS:IR_addon-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MuxPi_addon:CONN_02X08 J1
U 1 1 58DF2CFB
P 4500 1250
F 0 "J1" H 4500 1815 50  0000 C CNN
F 1 "CONN_02X08" H 4500 1724 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 4500 50  50  0001 C CNN
F 3 "" H 4500 50  50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/sl22.112.16g/listwy-i-gniazda-kolkowe/fischer-elektronik/sl-22-112-16g/" H 4500 1250 50  0001 C CNN "Shop link"
	1    4500 1250
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_02X08 J2
U 1 1 58DF2D90
P 7300 1250
F 0 "J2" H 7300 1815 50  0000 C CNN
F 1 "CONN_02X08" H 7300 1724 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 7300 50  50  0001 C CNN
F 3 "" H 7300 50  50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/sl22.112.16g/listwy-i-gniazda-kolkowe/fischer-elektronik/sl-22-112-16g/" H 7300 1250 50  0001 C CNN "Shop link"
	1    7300 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 58DF2E6B
P 4100 800
F 0 "#PWR013" H 4100 650 50  0001 C CNN
F 1 "+5V" H 4115 973 50  0000 C CNN
F 2 "" H 4100 800 50  0001 C CNN
F 3 "" H 4100 800 50  0001 C CNN
	1    4100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR017
U 1 1 58DF2F40
P 4900 800
F 0 "#PWR017" H 4900 650 50  0001 C CNN
F 1 "VDD" H 4917 973 50  0000 C CNN
F 2 "" H 4900 800 50  0001 C CNN
F 3 "" H 4900 800 50  0001 C CNN
	1    4900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR020
U 1 1 58DF2F7D
P 5100 800
F 0 "#PWR020" H 5100 650 50  0001 C CNN
F 1 "+3V3" H 5115 973 50  0000 C CNN
F 2 "" H 5100 800 50  0001 C CNN
F 3 "" H 5100 800 50  0001 C CNN
	1    5100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 58DF3037
P 4100 1700
F 0 "#PWR014" H 4100 1450 50  0001 C CNN
F 1 "GND" H 4105 1527 50  0000 C CNN
F 2 "" H 4100 1700 50  0001 C CNN
F 3 "" H 4100 1700 50  0001 C CNN
	1    4100 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 58DF3092
P 4900 1700
F 0 "#PWR018" H 4900 1450 50  0001 C CNN
F 1 "GND" H 4905 1527 50  0000 C CNN
F 2 "" H 4900 1700 50  0001 C CNN
F 3 "" H 4900 1700 50  0001 C CNN
	1    4900 1700
	1    0    0    -1  
$EndComp
NoConn ~ 4750 1600
$Comp
L power:GND #PWR029
U 1 1 58DF30BF
P 6900 1700
F 0 "#PWR029" H 6900 1450 50  0001 C CNN
F 1 "GND" H 6905 1527 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 58DF30CB
P 7700 1700
F 0 "#PWR030" H 7700 1450 50  0001 C CNN
F 1 "GND" H 7705 1527 50  0000 C CNN
F 2 "" H 7700 1700 50  0001 C CNN
F 3 "" H 7700 1700 50  0001 C CNN
	1    7700 1700
	1    0    0    -1  
$EndComp
Text Label 3700 1200 0    60   ~ 0
PI_UART_TX
Text Label 5400 1200 2    60   ~ 0
PI_UART_RX
$Comp
L MuxPi_addon:LED_ALT D4
U 1 1 58DCA1D3
P 10550 1300
F 0 "D4" H 10588 1183 50  0000 R CNN
F 1 "KPT-2012SGC" H 10800 1450 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 1300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 1300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 1300 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 1300 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 10550 1300 50  0001 C CNN "Manufacturer Part No"
	1    10550 1300
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R12
U 1 1 58DCA1DB
P 10200 1300
F 0 "R12" V 10270 1346 50  0000 L CNN
F 1 "330R" V 10100 1300 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 1300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 1300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 1300 60  0001 C CNN "Shop link"
	1    10200 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 800  4100 900 
Wire Wire Line
	4100 900  4250 900 
Wire Wire Line
	4100 1000 4250 1000
Connection ~ 4100 900 
Wire Wire Line
	4750 900  4900 900 
Wire Wire Line
	4900 900  4900 800 
Wire Wire Line
	4750 1000 5100 1000
Wire Wire Line
	5100 1000 5100 800 
Wire Wire Line
	4100 1500 4100 1600
Wire Wire Line
	4100 1500 4250 1500
Wire Wire Line
	4250 1600 4100 1600
Connection ~ 4100 1600
Wire Wire Line
	4750 1500 4900 1500
Wire Wire Line
	4900 1500 4900 1700
Wire Wire Line
	6900 1500 6900 1600
Wire Wire Line
	6900 1500 7050 1500
Wire Wire Line
	7050 1600 6900 1600
Connection ~ 6900 1600
Wire Wire Line
	7550 1500 7700 1500
Wire Wire Line
	7700 1500 7700 1600
Wire Wire Line
	7550 1600 7700 1600
Connection ~ 7700 1600
Wire Wire Line
	4250 1200 3700 1200
Wire Wire Line
	5400 1200 4750 1200
Wire Wire Line
	10800 1300 10700 1300
Wire Wire Line
	10350 1300 10400 1300
$Comp
L power:GND #PWR032
U 1 1 58DCB309
P 10800 1300
F 0 "#PWR032" H 10800 1050 50  0001 C CNN
F 1 "GND" H 10805 1127 50  0000 C CNN
F 2 "" H 10800 1300 50  0001 C CNN
F 3 "" H 10800 1300 50  0001 C CNN
	1    10800 1300
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi_addon:LED_ALT D5
U 1 1 58DCC024
P 10550 1700
F 0 "D5" H 10588 1583 50  0000 R CNN
F 1 "OSB50805C1E" H 10800 1850 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 1700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6f99baddc8b38eb1a865ea6b78250b2b/OSXX0805C1E-DTE.pdf" H 10550 1700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/osb50805c1e/diody-led-smd-kolorowe/optosupply/" V 10550 1700 60  0001 C CNN "Shop link"
F 5 "OPTOSUPPLY" H 10550 1700 50  0001 C CNN "Manufacturer"
F 6 "OSB50805C1E" H 10550 1700 50  0001 C CNN "Manufacturer Part No"
	1    10550 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 1700 10700 1700
$Comp
L power:GND #PWR033
U 1 1 58DCC82A
P 10800 1700
F 0 "#PWR033" H 10800 1450 50  0001 C CNN
F 1 "GND" H 10805 1527 50  0000 C CNN
F 2 "" H 10800 1700 50  0001 C CNN
F 3 "" H 10800 1700 50  0001 C CNN
	1    10800 1700
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi_addon:R R13
U 1 1 58DCC867
P 10200 1700
F 0 "R13" V 10270 1746 50  0000 L CNN
F 1 "330R" V 10100 1700 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 1700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 1700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 1700 60  0001 C CNN "Shop link"
	1    10200 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 1700 10400 1700
$Comp
L MuxPi_addon:LED_ALT D3
U 1 1 58DCD49A
P 10550 900
F 0 "D3" H 10588 783 50  0000 R CNN
F 1 "KPT-2012EC" H 10800 1050 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 900 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 900 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10550 900 50  0001 C CNN "Manufacturer Part No"
	1    10550 900 
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R11
U 1 1 58DCD4A1
P 10200 900
F 0 "R11" V 10270 946 50  0000 L CNN
F 1 "330R" V 10100 900 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 900 60  0001 C CNN "Shop link"
	1    10200 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 900  10700 900 
Wire Wire Line
	10350 900  10400 900 
$Comp
L power:GND #PWR031
U 1 1 58DCD4A9
P 10800 900
F 0 "#PWR031" H 10800 650 50  0001 C CNN
F 1 "GND" H 10805 727 50  0000 C CNN
F 2 "" H 10800 900 50  0001 C CNN
F 3 "" H 10800 900 50  0001 C CNN
	1    10800 900 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 900  9550 900 
Text Label 9550 900  0    60   ~ 0
PI_GPIO_1
Wire Wire Line
	10050 1300 9550 1300
Text Label 9550 1300 0    60   ~ 0
PI_GPIO_2
Wire Wire Line
	10050 1700 9550 1700
Text Label 9550 1700 0    60   ~ 0
PI_GPIO_3
$Comp
L MuxPi_addon:LED_ALT D7
U 1 1 58DCD88B
P 10550 2650
F 0 "D7" H 10588 2533 50  0000 R CNN
F 1 "KPT-2012SGC" H 10800 2800 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 2650 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 2650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 2650 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 2650 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 10550 2650 50  0001 C CNN "Manufacturer Part No"
	1    10550 2650
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R15
U 1 1 58DCD892
P 10200 2650
F 0 "R15" V 10270 2696 50  0000 L CNN
F 1 "330R" V 10100 2650 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 2650 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 2650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 2650 60  0001 C CNN "Shop link"
	1    10200 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 2650 10700 2650
Wire Wire Line
	10350 2650 10400 2650
$Comp
L power:GND #PWR035
U 1 1 58DCD89A
P 10800 2650
F 0 "#PWR035" H 10800 2400 50  0001 C CNN
F 1 "GND" H 10805 2477 50  0000 C CNN
F 2 "" H 10800 2650 50  0001 C CNN
F 3 "" H 10800 2650 50  0001 C CNN
	1    10800 2650
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi_addon:LED_ALT D8
U 1 1 58DCD8A1
P 10550 3050
F 0 "D8" H 10588 2933 50  0000 R CNN
F 1 "OSB50805C1E" H 10800 3200 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 3050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6f99baddc8b38eb1a865ea6b78250b2b/OSXX0805C1E-DTE.pdf" H 10550 3050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/osb50805c1e/diody-led-smd-kolorowe/optosupply/" V 10550 3050 60  0001 C CNN "Shop link"
F 5 "OPTOSUPPLY" H 10550 3050 50  0001 C CNN "Manufacturer"
F 6 "OSB50805C1E" H 10550 3050 50  0001 C CNN "Manufacturer Part No"
	1    10550 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	10800 3050 10700 3050
$Comp
L power:GND #PWR036
U 1 1 58DCD8A8
P 10800 3050
F 0 "#PWR036" H 10800 2800 50  0001 C CNN
F 1 "GND" H 10805 2877 50  0000 C CNN
F 2 "" H 10800 3050 50  0001 C CNN
F 3 "" H 10800 3050 50  0001 C CNN
	1    10800 3050
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi_addon:R R16
U 1 1 58DCD8AF
P 10200 3050
F 0 "R16" V 10270 3096 50  0000 L CNN
F 1 "330R" V 10100 3050 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 3050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 3050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 3050 60  0001 C CNN "Shop link"
	1    10200 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 3050 10400 3050
$Comp
L MuxPi_addon:LED_ALT D6
U 1 1 58DCD8B7
P 10550 2250
F 0 "D6" H 10588 2133 50  0000 R CNN
F 1 "KPT-2012EC" H 10800 2400 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 2250 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 2250 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 2250 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 2250 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10550 2250 50  0001 C CNN "Manufacturer Part No"
	1    10550 2250
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R14
U 1 1 58DCD8BE
P 10200 2250
F 0 "R14" V 10270 2296 50  0000 L CNN
F 1 "330R" V 10100 2250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 2250 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 2250 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 2250 60  0001 C CNN "Shop link"
	1    10200 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 2250 10700 2250
Wire Wire Line
	10350 2250 10400 2250
$Comp
L power:GND #PWR034
U 1 1 58DCD8C6
P 10800 2250
F 0 "#PWR034" H 10800 2000 50  0001 C CNN
F 1 "GND" H 10805 2077 50  0000 C CNN
F 2 "" H 10800 2250 50  0001 C CNN
F 3 "" H 10800 2250 50  0001 C CNN
	1    10800 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 2250 9550 2250
Text Label 9550 2250 0    60   ~ 0
ST_GPIO_1
Wire Wire Line
	10050 2650 9550 2650
Text Label 9550 2650 0    60   ~ 0
ST_GPIO_2
Wire Wire Line
	10050 3050 9550 3050
Text Label 9550 3050 0    60   ~ 0
ST_GPIO_3
Wire Wire Line
	6500 1100 7050 1100
Text Label 6550 1100 0    60   ~ 0
PI_GPIO_1
Wire Wire Line
	6500 1200 7050 1200
Text Label 6550 1200 0    60   ~ 0
PI_GPIO_3
Wire Wire Line
	7550 1100 8100 1100
Text Label 8050 1100 2    60   ~ 0
PI_GPIO_2
Wire Wire Line
	7550 1200 8100 1200
Text Label 8050 1200 2    60   ~ 0
ST_GPIO_1
Wire Wire Line
	7550 1300 8100 1300
Text Label 8050 1300 2    60   ~ 0
ST_GPIO_3
Wire Wire Line
	6500 1300 7050 1300
Text Label 6550 1300 0    60   ~ 0
ST_GPIO_2
Wire Wire Line
	3700 1300 4250 1300
Text Label 3700 1300 0    60   ~ 0
USB_B+
Wire Wire Line
	3700 1400 4250 1400
Text Label 3700 1400 0    60   ~ 0
USB_A+
Wire Wire Line
	4750 1300 5400 1300
Text Label 5400 1300 2    60   ~ 0
USB_B-
Wire Wire Line
	4750 1400 5400 1400
Text Label 5400 1400 2    60   ~ 0
USB_A-
$Comp
L MuxPi_addon:LED_ALT D9
U 1 1 58DBEEF2
P 10550 3950
F 0 "D9" H 10588 3833 50  0000 R CNN
F 1 "KPT-2012EC" H 10800 4100 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 3950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 3950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 3950 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 3950 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10550 3950 50  0001 C CNN "Manufacturer Part No"
	1    10550 3950
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R17
U 1 1 58DBEEF9
P 10200 3950
F 0 "R17" V 10270 3996 50  0000 L CNN
F 1 "330R" V 10100 3950 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 3950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 3950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 3950 60  0001 C CNN "Shop link"
	1    10200 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 3950 10700 3950
Wire Wire Line
	10350 3950 10400 3950
$Comp
L power:GND #PWR02
U 1 1 58DBEF01
P 10800 3950
F 0 "#PWR02" H 10800 3700 50  0001 C CNN
F 1 "GND" H 10805 3777 50  0000 C CNN
F 2 "" H 10800 3950 50  0001 C CNN
F 3 "" H 10800 3950 50  0001 C CNN
	1    10800 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 58DBF409
P 9850 3900
F 0 "#PWR01" H 9850 3750 50  0001 C CNN
F 1 "+5V" H 9865 4073 50  0000 C CNN
F 2 "" H 9850 3900 50  0001 C CNN
F 3 "" H 9850 3900 50  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R18
U 1 1 58DBFFBB
P 10200 3550
F 0 "R18" V 10270 3596 50  0000 L CNN
F 1 "330R" V 10100 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10130 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10200 3550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" H 10200 3550 60  0001 C CNN "Shop link"
	1    10200 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 3550 10700 3550
Wire Wire Line
	10350 3550 10400 3550
$Comp
L power:GND #PWR06
U 1 1 58DBFFC3
P 10800 3550
F 0 "#PWR06" H 10800 3300 50  0001 C CNN
F 1 "GND" H 10805 3377 50  0000 C CNN
F 2 "" H 10800 3550 50  0001 C CNN
F 3 "" H 10800 3550 50  0001 C CNN
	1    10800 3550
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi_addon:LED_ALT D10
U 1 1 58DC0827
P 10550 3550
F 0 "D10" H 10588 3433 50  0000 R CNN
F 1 "KPT-2012SGC" H 10800 3700 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10550 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10550 3550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 10550 3550 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10550 3550 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 10550 3550 50  0001 C CNN "Manufacturer Part No"
	1    10550 3550
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 58DC229D
P 9850 3500
F 0 "#PWR05" H 9850 3350 50  0001 C CNN
F 1 "VDD" H 9867 3673 50  0000 C CNN
F 2 "" H 9850 3500 50  0001 C CNN
F 3 "" H 9850 3500 50  0001 C CNN
	1    9850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1100 5400 1100
Text Label 5200 1100 0    60   ~ 0
SCL
Wire Wire Line
	3700 1100 4250 1100
Text Label 3700 1100 0    60   ~ 0
SDA
$Comp
L MuxPi_addon:CONN_01X01 J15
U 1 1 58DC6738
P 8300 900
F 0 "J15" H 8378 895 50  0000 L CNN
F 1 "CONN_01X01" H 8378 850 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 900 50  0001 C CNN
F 3 "" H 8300 900 50  0001 C CNN
	1    8300 900 
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J16
U 1 1 58DC67FC
P 8300 1000
F 0 "J16" H 8378 995 50  0000 L CNN
F 1 "CONN_01X01" H 8378 950 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1000 50  0001 C CNN
F 3 "" H 8300 1000 50  0001 C CNN
	1    8300 1000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J17
U 1 1 58DC686A
P 8300 1100
F 0 "J17" H 8378 1095 50  0000 L CNN
F 1 "CONN_01X01" H 8378 1050 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1100 50  0001 C CNN
F 3 "" H 8300 1100 50  0001 C CNN
	1    8300 1100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J18
U 1 1 58DC68F2
P 8300 1200
F 0 "J18" H 8378 1195 50  0000 L CNN
F 1 "CONN_01X01" H 8378 1150 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J19
U 1 1 58DC6964
P 8300 1300
F 0 "J19" H 8378 1295 50  0000 L CNN
F 1 "CONN_01X01" H 8378 1250 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1300 50  0001 C CNN
F 3 "" H 8300 1300 50  0001 C CNN
	1    8300 1300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J20
U 1 1 58DC69D8
P 8300 1400
F 0 "J20" H 8378 1395 50  0000 L CNN
F 1 "CONN_01X01" H 8378 1350 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1400 50  0001 C CNN
F 3 "" H 8300 1400 50  0001 C CNN
	1    8300 1400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J9
U 1 1 58DC6DE4
P 6300 900
F 0 "J9" H 6378 895 50  0000 L CNN
F 1 "CONN_01X01" H 6378 850 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 900 50  0001 C CNN
F 3 "" H 6300 900 50  0001 C CNN
	1    6300 900 
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J10
U 1 1 58DC73FC
P 6300 1000
F 0 "J10" H 6378 995 50  0000 L CNN
F 1 "CONN_01X01" H 6378 950 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1000 50  0001 C CNN
F 3 "" H 6300 1000 50  0001 C CNN
	1    6300 1000
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J11
U 1 1 58DC7476
P 6300 1100
F 0 "J11" H 6378 1095 50  0000 L CNN
F 1 "CONN_01X01" H 6378 1050 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1100 50  0001 C CNN
F 3 "" H 6300 1100 50  0001 C CNN
	1    6300 1100
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J12
U 1 1 58DC74F2
P 6300 1200
F 0 "J12" H 6378 1195 50  0000 L CNN
F 1 "CONN_01X01" H 6378 1150 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0001 C CNN
	1    6300 1200
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J13
U 1 1 58DC7574
P 6300 1300
F 0 "J13" H 6378 1295 50  0000 L CNN
F 1 "CONN_01X01" H 6378 1250 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J14
U 1 1 58DC75F4
P 6300 1400
F 0 "J14" H 6378 1395 50  0000 L CNN
F 1 "CONN_01X01" H 6378 1350 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1400 50  0001 C CNN
F 3 "" H 6300 1400 50  0001 C CNN
	1    6300 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6500 900  7050 900 
Wire Wire Line
	7550 900  8100 900 
Wire Wire Line
	7550 1000 8100 1000
Wire Wire Line
	6500 1000 7050 1000
Wire Wire Line
	6500 1400 7050 1400
Wire Wire Line
	7550 1400 8100 1400
Text Label 6550 900  0    60   ~ 0
SPI_CLK
Text Label 6550 1000 0    60   ~ 0
SPI_CS
Text Label 7600 900  0    60   ~ 0
SPI_MOSI
Text Label 7600 1000 0    60   ~ 0
SPI_MISO
Text Label 6550 1400 0    60   ~ 0
ADC1
Text Label 7600 1400 0    60   ~ 0
ADC2
$Comp
L MuxPi_addon:CONN_01X01 J25
U 1 1 58DD18E8
P 950 1500
F 0 "J25" H 1028 1495 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1450 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1500 50  0001 C CNN
F 3 "" H 950 1500 50  0001 C CNN
	1    950  1500
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J26
U 1 1 58DD19BE
P 950 1600
F 0 "J26" H 1028 1595 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1550 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1600 50  0001 C CNN
F 3 "" H 950 1600 50  0001 C CNN
	1    950  1600
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J27
U 1 1 58DD1A48
P 950 1700
F 0 "J27" H 1028 1695 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1650 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1700 50  0001 C CNN
F 3 "" H 950 1700 50  0001 C CNN
	1    950  1700
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J28
U 1 1 58DD1AD0
P 950 1800
F 0 "J28" H 1028 1795 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1750 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1800 50  0001 C CNN
F 3 "" H 950 1800 50  0001 C CNN
	1    950  1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 1500 1200 1500
Wire Wire Line
	1200 1500 1200 1600
Wire Wire Line
	1150 1800 1200 1800
Connection ~ 1200 1800
Wire Wire Line
	1150 1700 1200 1700
Connection ~ 1200 1700
Wire Wire Line
	1150 1600 1200 1600
Connection ~ 1200 1600
$Comp
L power:GND #PWR010
U 1 1 58DD1F19
P 1200 1900
F 0 "#PWR010" H 1200 1650 50  0001 C CNN
F 1 "GND" H 1205 1727 50  0000 C CNN
F 2 "" H 1200 1900 50  0001 C CNN
F 3 "" H 1200 1900 50  0001 C CNN
	1    1200 1900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J37
U 1 1 58DD2F17
P 950 2250
F 0 "J37" H 1028 2245 50  0000 L CNN
F 1 "CONN_01X01" H 1028 2200 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2250 50  0001 C CNN
F 3 "" H 950 2250 50  0001 C CNN
	1    950  2250
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J38
U 1 1 58DD2F1D
P 950 2350
F 0 "J38" H 1028 2345 50  0000 L CNN
F 1 "CONN_01X01" H 1028 2300 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2350 50  0001 C CNN
F 3 "" H 950 2350 50  0001 C CNN
	1    950  2350
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J39
U 1 1 58DD2F23
P 950 2450
F 0 "J39" H 1028 2445 50  0000 L CNN
F 1 "CONN_01X01" H 1028 2400 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2450 50  0001 C CNN
F 3 "" H 950 2450 50  0001 C CNN
	1    950  2450
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J40
U 1 1 58DD2F29
P 950 2550
F 0 "J40" H 1028 2545 50  0000 L CNN
F 1 "CONN_01X01" H 1028 2500 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2550 50  0001 C CNN
F 3 "" H 950 2550 50  0001 C CNN
	1    950  2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 2250 1200 2250
Wire Wire Line
	1200 2250 1200 2350
Wire Wire Line
	1150 2550 1200 2550
Connection ~ 1200 2550
Wire Wire Line
	1150 2450 1200 2450
Connection ~ 1200 2450
Wire Wire Line
	1150 2350 1200 2350
Connection ~ 1200 2350
$Comp
L power:GND #PWR028
U 1 1 58DD2F37
P 1200 2650
F 0 "#PWR028" H 1200 2400 50  0001 C CNN
F 1 "GND" H 1205 2477 50  0000 C CNN
F 2 "" H 1200 2650 50  0001 C CNN
F 3 "" H 1200 2650 50  0001 C CNN
	1    1200 2650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J21
U 1 1 58DD3C2A
P 950 950
F 0 "J21" H 1028 945 50  0000 L CNN
F 1 "CONN_01X01" H 1028 900 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 950 50  0001 C CNN
F 3 "" H 950 950 50  0001 C CNN
	1    950  950 
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J22
U 1 1 58DD3C30
P 950 1050
F 0 "J22" H 1028 1045 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1000 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1050 50  0001 C CNN
F 3 "" H 950 1050 50  0001 C CNN
	1    950  1050
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J23
U 1 1 58DD3C36
P 950 1150
F 0 "J23" H 1028 1145 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1100 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1150 50  0001 C CNN
F 3 "" H 950 1150 50  0001 C CNN
	1    950  1150
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J24
U 1 1 58DD3C3C
P 950 1250
F 0 "J24" H 1028 1245 50  0000 L CNN
F 1 "CONN_01X01" H 1028 1200 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1250 50  0001 C CNN
F 3 "" H 950 1250 50  0001 C CNN
	1    950  1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 950  1200 950 
Wire Wire Line
	1150 1250 1200 1250
Wire Wire Line
	1150 1150 1200 1150
Connection ~ 1200 1150
Wire Wire Line
	1150 1050 1200 1050
Connection ~ 1200 1050
$Comp
L power:+5V #PWR09
U 1 1 58DD4BD6
P 1200 850
F 0 "#PWR09" H 1200 700 50  0001 C CNN
F 1 "+5V" H 1215 1023 50  0000 C CNN
F 2 "" H 1200 850 50  0001 C CNN
F 3 "" H 1200 850 50  0001 C CNN
	1    1200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1250 1200 1150
Connection ~ 1200 950 
$Comp
L MuxPi_addon:CONN_01X01 J29
U 1 1 58DD54A9
P 2000 950
F 0 "J29" H 2078 945 50  0000 L CNN
F 1 "CONN_01X01" H 2078 900 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 950 50  0001 C CNN
F 3 "" H 2000 950 50  0001 C CNN
	1    2000 950 
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J30
U 1 1 58DD54AF
P 2000 1050
F 0 "J30" H 2078 1045 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1000 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1050 50  0001 C CNN
F 3 "" H 2000 1050 50  0001 C CNN
	1    2000 1050
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J31
U 1 1 58DD54B5
P 2000 1150
F 0 "J31" H 2078 1145 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1100 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1150 50  0001 C CNN
F 3 "" H 2000 1150 50  0001 C CNN
	1    2000 1150
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J32
U 1 1 58DD54BB
P 2000 1250
F 0 "J32" H 2078 1245 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1200 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1250 50  0001 C CNN
F 3 "" H 2000 1250 50  0001 C CNN
	1    2000 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 950  2250 950 
Wire Wire Line
	2200 1250 2250 1250
Wire Wire Line
	2200 1150 2250 1150
Connection ~ 2250 1150
Wire Wire Line
	2200 1050 2250 1050
Connection ~ 2250 1050
Wire Wire Line
	2250 1250 2250 1150
Connection ~ 2250 950 
$Comp
L MuxPi_addon:CONN_01X01 J33
U 1 1 58DD5A6C
P 2000 1500
F 0 "J33" H 2078 1495 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1450 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1500 50  0001 C CNN
F 3 "" H 2000 1500 50  0001 C CNN
	1    2000 1500
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J34
U 1 1 58DD5A72
P 2000 1600
F 0 "J34" H 2078 1595 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1550 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1600 50  0001 C CNN
F 3 "" H 2000 1600 50  0001 C CNN
	1    2000 1600
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J35
U 1 1 58DD5A78
P 2000 1700
F 0 "J35" H 2078 1695 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1650 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1700 50  0001 C CNN
F 3 "" H 2000 1700 50  0001 C CNN
	1    2000 1700
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X01 J36
U 1 1 58DD5A7E
P 2000 1800
F 0 "J36" H 2078 1795 50  0000 L CNN
F 1 "CONN_01X01" H 2078 1750 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1800 50  0001 C CNN
F 3 "" H 2000 1800 50  0001 C CNN
	1    2000 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 1500 2250 1500
Wire Wire Line
	2200 1800 2250 1800
Wire Wire Line
	2200 1700 2250 1700
Connection ~ 2250 1700
Wire Wire Line
	2200 1600 2250 1600
Connection ~ 2250 1600
Wire Wire Line
	2250 1800 2250 1700
Connection ~ 2250 1500
$Comp
L power:+3V3 #PWR024
U 1 1 58DD5A8C
P 2250 1400
F 0 "#PWR024" H 2250 1250 50  0001 C CNN
F 1 "+3V3" H 2400 1450 50  0000 C CNN
F 2 "" H 2250 1400 50  0001 C CNN
F 3 "" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR023
U 1 1 58DD5B2D
P 2250 850
F 0 "#PWR023" H 2250 700 50  0001 C CNN
F 1 "VDD" H 2267 1023 50  0000 C CNN
F 2 "" H 2250 850 50  0001 C CNN
F 3 "" H 2250 850 50  0001 C CNN
	1    2250 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 900  4100 1000
Wire Wire Line
	4100 1600 4100 1700
Wire Wire Line
	6900 1600 6900 1700
Wire Wire Line
	7700 1600 7700 1700
Wire Wire Line
	1200 1800 1200 1900
Wire Wire Line
	1200 1700 1200 1800
Wire Wire Line
	1200 1600 1200 1700
Wire Wire Line
	1200 2550 1200 2650
Wire Wire Line
	1200 2450 1200 2550
Wire Wire Line
	1200 2350 1200 2450
Wire Wire Line
	1200 1150 1200 1050
Wire Wire Line
	1200 1050 1200 950 
Wire Wire Line
	1200 950  1200 850 
Wire Wire Line
	2250 1150 2250 1050
Wire Wire Line
	2250 1050 2250 950 
Wire Wire Line
	2250 950  2250 850 
Wire Wire Line
	2250 1700 2250 1600
Wire Wire Line
	2250 1600 2250 1500
Wire Wire Line
	2250 1500 2250 1400
Wire Wire Line
	9850 3500 9850 3550
Wire Wire Line
	9850 3550 10050 3550
Wire Wire Line
	9850 3900 9850 3950
Wire Wire Line
	9850 3950 10050 3950
$Comp
L MuxPi_addon:ATmega328P-AU U1
U 1 1 5AC593F8
P 3700 6950
F 0 "U1" H 2950 9817 50  0000 C CNN
F 1 "ATmega328P-AU" H 2950 9726 50  0000 C CNN
F 2 "Muxpi Addon:TQFP-32_7x7mm_Pitch0.8mm" H 3800 6850 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/9d2a0f24d19320b803e2081a185f270d/ft232r.pdf" H 3800 6850 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/atmega328p-au/rodzina-avr-8-bit/microchip-atmel/" H 3700 6950 50  0001 C CNN "Shop link"
F 5 "Microchip" H 3700 6950 50  0001 C CNN "Manufacturer"
F 6 "ATMEGA328P-AU" H 3700 6950 50  0001 C CNN "Manufacturer Part No"
	1    3700 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5AC5DD56
P 2000 6950
F 0 "#PWR0101" H 2000 6700 50  0001 C CNN
F 1 "GND" H 2005 6777 50  0000 C CNN
F 2 "" H 2000 6950 50  0001 C CNN
F 3 "" H 2000 6950 50  0001 C CNN
	1    2000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 6650 2000 6650
Wire Wire Line
	2000 6650 2000 6750
Wire Wire Line
	2050 6750 2000 6750
Connection ~ 2000 6750
Wire Wire Line
	2000 6750 2000 6850
Wire Wire Line
	2050 6850 2000 6850
Connection ~ 2000 6850
Wire Wire Line
	2000 6850 2000 6950
$Comp
L power:GND #PWR0104
U 1 1 5AC6EB99
P 4650 4600
F 0 "#PWR0104" H 4650 4350 50  0001 C CNN
F 1 "GND" H 4655 4427 50  0000 C CNN
F 2 "" H 4650 4600 50  0001 C CNN
F 3 "" H 4650 4600 50  0001 C CNN
	1    4650 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5AC6EC5B
P 900 5450
F 0 "#PWR0105" H 900 5200 50  0001 C CNN
F 1 "GND" H 905 5277 50  0000 C CNN
F 2 "" H 900 5450 50  0001 C CNN
F 3 "" H 900 5450 50  0001 C CNN
	1    900  5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5AC730C3
P 1400 5450
F 0 "#PWR0106" H 1400 5200 50  0001 C CNN
F 1 "GND" H 1405 5277 50  0000 C CNN
F 2 "" H 1400 5450 50  0001 C CNN
F 3 "" H 1400 5450 50  0001 C CNN
	1    1400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5AC7752B
P 900 4450
F 0 "#PWR0107" H 900 4200 50  0001 C CNN
F 1 "GND" H 905 4277 50  0000 C CNN
F 2 "" H 900 4450 50  0001 C CNN
F 3 "" H 900 4450 50  0001 C CNN
	1    900  4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4600 3950 4600
Wire Wire Line
	3950 4600 3950 4500
Wire Wire Line
	3850 4500 3950 4500
Connection ~ 3950 4500
Wire Wire Line
	3950 4500 3950 4400
Wire Wire Line
	3850 4400 3950 4400
Connection ~ 3950 4400
$Comp
L MuxPi_addon:C C3
U 1 1 5AC8D80D
P 4300 4400
F 0 "C3" H 4415 4446 50  0000 L CNN
F 1 "0.1uF" H 4415 4355 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 4338 4250 50  0001 C CNN
F 3 "" H 4300 4400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 4300 4400 50  0001 C CNN "Shop link"
	1    4300 4400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CP CP1
U 1 1 5AC8D95F
P 4650 4400
F 0 "CP1" H 4768 4446 50  0000 L CNN
F 1 "4.7uF" H 4768 4355 50  0000 L CNN
F 2 "Muxpi Addon:C_T_0805" H 4688 4250 50  0001 C CNN
F 3 "" H 4650 4400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/tajr475k010rnj/kondensatory-tantalowe-smd/avx/" H 4650 4400 50  0001 C CNN "Shop link"
F 5 "AVX" H 4650 4400 50  0001 C CNN "Manufacturer"
F 6 "TAJR475K010RNJ" H 4650 4400 50  0001 C CNN "Manufacturer Part No"
	1    4650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4550 4650 4550
Wire Wire Line
	4650 4550 4650 4600
Wire Wire Line
	3950 4150 3950 4250
Connection ~ 3950 4250
Wire Wire Line
	3950 4250 3950 4400
$Comp
L MuxPi_addon:Crystal Y1
U 1 1 5ACF6AE9
P 1000 4900
F 0 "Y1" H 850 4632 50  0000 C CNN
F 1 "16MHz" H 850 4723 50  0000 C CNN
F 2 "Muxpi Addon:HC49USM" H 850 4750 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/f9d1782f27c3a96ae8c4e91c94d19ebc/HC49USM_Series.pdf" H 850 4750 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/hc49usm-ff3f16.00/rezonatory-kwarcowe-smd/ilsi/hc49usm-ff3f18-160000/" H 1000 4900 50  0001 C CNN "Shop link"
	1    1000 4900
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:C C1
U 1 1 5ACF6CC9
P 900 5150
F 0 "C1" H 1015 5196 50  0000 L CNN
F 1 "18pF" H 1015 5105 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 938 5000 50  0001 C CNN
F 3 "" H 900 5150 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/vj0603a180jxacw2bc/kondensatory-mlcc-smd-0603/vishay/" H 900 5150 50  0001 C CNN "Shop link"
	1    900  5150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C2
U 1 1 5ACFC09E
P 1400 5150
F 0 "C2" H 1515 5196 50  0000 L CNN
F 1 "18pF" H 1515 5105 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 1438 5000 50  0001 C CNN
F 3 "" H 1400 5150 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/vj0603a180jxacw2bc/kondensatory-mlcc-smd-0603/vishay/" H 1400 5150 50  0001 C CNN "Shop link"
	1    1400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4900 1400 4900
Wire Wire Line
	900  5000 900  4900
Wire Wire Line
	900  4700 2050 4700
Wire Wire Line
	1400 5000 1400 4900
Connection ~ 1400 4900
Wire Wire Line
	1400 4900 2050 4900
Wire Wire Line
	900  4900 1000 4900
Connection ~ 900  4900
Wire Wire Line
	900  4900 900  4700
Wire Wire Line
	1400 5450 1400 5300
Wire Wire Line
	900  5450 900  5300
$Comp
L MuxPi_addon:SwitchPush SW1
U 1 1 5AD98D34
P 1600 4400
F 0 "SW1" H 1400 4593 50  0000 C CNN
F 1 "SwitchPush" H 1050 4300 50  0001 C CNN
F 2 "Muxpi Addon:DTSM-3" H 1400 4300 50  0001 C CNN
F 3 "" H 1400 4300 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/dtsm31n/mikroprzelaczniki-tact/diptronics/" H 1600 4400 50  0001 C CNN "Shop link"
F 5 "DIPTRONICS" H 1600 4400 50  0001 C CNN "Manufacturer"
F 6 "DTSM31N " H 1600 4400 50  0001 C CNN "Manufacturer Part No"
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R6
U 1 1 5AD98E99
P 1900 4150
F 0 "R6" V 1900 4100 50  0000 L CNN
F 1 "1k1" V 2000 4100 50  0000 L CNN
F 2 "Muxpi Addon:R_0805" V 1830 4150 50  0001 C CNN
F 3 "" H 1900 4150 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-071k1l/rezystory-smd-0805/yageo/" V 1900 4150 50  0001 C CNN "Shop link"
	1    1900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4450 900  4400
Wire Wire Line
	900  4400 1200 4400
$Comp
L MuxPi_addon:R R1
U 1 1 5ADC30BA
P 4000 6900
F 0 "R1" V 4000 6850 50  0000 L CNN
F 1 "330R" V 4070 6855 50  0000 L CNN
F 2 "Muxpi Addon:R_0805" V 3930 6900 50  0001 C CNN
F 3 "" H 4000 6900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 4000 6900 50  0001 C CNN "Shop link"
	1    4000 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5ADCFC37
P 4000 7550
F 0 "#PWR0108" H 4000 7300 50  0001 C CNN
F 1 "GND" H 4005 7377 50  0000 C CNN
F 2 "" H 4000 7550 50  0001 C CNN
F 3 "" H 4000 7550 50  0001 C CNN
	1    4000 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 7150 4000 7050
Wire Wire Line
	4000 7450 4000 7550
Text Label 5250 6700 0    50   ~ 0
D12-MISO
Text Label 5250 6800 0    50   ~ 0
D13-SCK
Text Label 5250 6900 0    50   ~ 0
RESET
Text Label 6150 6800 0    50   ~ 0
D11-MOSI
Wire Wire Line
	6150 6800 6550 6800
Wire Wire Line
	5250 6700 5650 6700
Wire Wire Line
	5250 6800 5650 6800
Wire Wire Line
	5250 6900 5650 6900
$Comp
L power:+5V #PWR0109
U 1 1 5AE50A82
P 6250 6500
F 0 "#PWR0109" H 6250 6350 50  0001 C CNN
F 1 "+5V" H 6265 6673 50  0000 C CNN
F 2 "" H 6250 6500 50  0001 C CNN
F 3 "" H 6250 6500 50  0001 C CNN
	1    6250 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5AE50B74
P 6250 7050
F 0 "#PWR0110" H 6250 6800 50  0001 C CNN
F 1 "GND" H 6255 6877 50  0000 C CNN
F 2 "" H 6250 7050 50  0001 C CNN
F 3 "" H 6250 7050 50  0001 C CNN
	1    6250 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 6700 6250 6700
Wire Wire Line
	6250 6700 6250 6500
Wire Wire Line
	6150 6900 6250 6900
Wire Wire Line
	6250 6900 6250 7050
$Comp
L MuxPi_addon:CONN_02X03 J41
U 1 1 5AE67200
P 6000 6950
F 0 "J41" H 5900 7417 50  0000 C CNN
F 1 "CONN_02X03" H 5900 7326 50  0000 C CNN
F 2 "Muxpi Addon:Pin_Header_Straight_2x03_Pitch2.54mm" H 6000 6950 50  0001 C CNN
F 3 "" H 6000 6950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl202-6g/listwy-i-gniazda-kolkowe/connfly/ds1021-2_3sf1-1/" H 6000 6950 50  0001 C CNN "Shop link"
	1    6000 6950
	1    0    0    -1  
$EndComp
Text Label 4300 6450 0    50   ~ 0
D11-MOSI
Text Label 4300 6550 0    50   ~ 0
D12-MISO
Text Label 4300 6650 2    50   ~ 0
D13-SCK
Wire Wire Line
	1600 4400 1900 4400
Connection ~ 1900 4400
Wire Wire Line
	1900 4400 2050 4400
Wire Wire Line
	1900 3900 1900 4000
Wire Wire Line
	1900 4300 1900 4400
Text Label 8900 4600 2    50   ~ 0
USB_B+
Text Label 8900 4700 2    50   ~ 0
USB_B-
Wire Wire Line
	1600 5600 2050 5600
Wire Wire Line
	1600 5700 2050 5700
Wire Wire Line
	1600 5800 2050 5800
Wire Wire Line
	1600 5900 2050 5900
Wire Wire Line
	1600 6000 2050 6000
Wire Wire Line
	1600 6100 2050 6100
Wire Wire Line
	1600 6200 2050 6200
Wire Wire Line
	1600 6300 2050 6300
Wire Wire Line
	4750 5250 3850 5250
Wire Wire Line
	4750 5350 3850 5350
Wire Wire Line
	4750 5450 3850 5450
Wire Wire Line
	4750 5550 3850 5550
Wire Wire Line
	4750 5650 3850 5650
Text Label 1650 5600 0    50   ~ 0
A0
Text Label 1650 5700 0    50   ~ 0
A1
Text Label 1650 5900 0    50   ~ 0
A3
Text Label 1650 5800 0    50   ~ 0
A2
Text Label 1650 6000 0    50   ~ 0
A4
Text Label 1650 6100 0    50   ~ 0
A5
Text Label 1650 6200 0    50   ~ 0
A6
Text Label 1650 6300 0    50   ~ 0
A7
Text Label 3850 4950 0    50   ~ 0
D0-RX
Text Label 3850 5050 0    50   ~ 0
D1-TX
Text Label 4600 5150 0    50   ~ 0
D2
Text Label 4600 5250 0    50   ~ 0
D3
Text Label 4600 5350 0    50   ~ 0
D4
Text Label 4600 5450 0    50   ~ 0
D5
Text Label 4600 5550 0    50   ~ 0
D6
Text Label 4600 5650 0    50   ~ 0
D7
Text Label 4600 6150 0    50   ~ 0
D8
Text Label 4600 6250 0    50   ~ 0
D9
Text Label 4550 6350 0    50   ~ 0
D10
$Comp
L MuxPi_addon:R R2
U 1 1 5B113872
P 4350 4950
F 0 "R2" V 4350 4950 50  0000 C CNN
F 1 "1k" V 4400 4800 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 4280 4950 50  0001 C CNN
F 3 "" H 4350 4950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-071k/rezystory-smd-0805/yageo/rc0805jr-071kl/" V 4350 4950 50  0001 C CNN "Shop link"
	1    4350 4950
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:R R3
U 1 1 5B113A22
P 4350 5050
F 0 "R3" V 4350 5050 50  0000 C CNN
F 1 "1k" V 4400 4900 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 4280 5050 50  0001 C CNN
F 3 "" H 4350 5050 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-071k/rezystory-smd-0805/yageo/rc0805jr-071kl/" V 4350 5050 50  0001 C CNN "Shop link"
	1    4350 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4950 4500 4950
Wire Wire Line
	4750 5050 4500 5050
Text Label 4600 4950 0    50   ~ 0
RX
Text Label 4600 5050 0    50   ~ 0
TX
Wire Wire Line
	3850 4950 4200 4950
Wire Wire Line
	4200 5050 3850 5050
Wire Wire Line
	3850 6150 4750 6150
Wire Wire Line
	3850 6250 4750 6250
Wire Wire Line
	3850 6350 4750 6350
Wire Wire Line
	3850 6450 4750 6450
Wire Wire Line
	3850 6550 4750 6550
Wire Wire Line
	3850 6650 4000 6650
Connection ~ 4000 6650
Wire Wire Line
	4000 6650 4750 6650
Wire Wire Line
	4000 6650 4000 6750
Text Label 1650 4400 0    50   ~ 0
RESET
Text Label 1650 5400 0    50   ~ 0
AREF
Wire Wire Line
	1600 5400 2050 5400
Wire Wire Line
	4200 2100 4850 2100
Wire Wire Line
	4200 2200 4850 2200
Wire Wire Line
	4200 2300 4850 2300
Wire Wire Line
	4200 2500 4850 2500
Wire Wire Line
	4200 2600 4850 2600
Wire Wire Line
	4200 2700 4850 2700
Wire Wire Line
	4200 2800 4850 2800
Wire Wire Line
	4200 2900 4850 2900
Wire Wire Line
	4200 3000 4850 3000
Wire Wire Line
	4200 3100 4850 3100
Wire Wire Line
	4200 3200 4850 3200
Wire Wire Line
	4200 3300 4850 3300
Wire Wire Line
	4200 3400 4850 3400
Wire Wire Line
	4200 3500 4850 3500
Wire Wire Line
	6150 2100 6800 2100
Wire Wire Line
	6150 2300 6800 2300
Wire Wire Line
	6150 2500 6800 2500
Wire Wire Line
	6150 2600 6800 2600
Wire Wire Line
	6150 2700 6800 2700
Wire Wire Line
	6150 2800 6800 2800
Wire Wire Line
	6150 2900 6800 2900
Wire Wire Line
	6150 3000 6800 3000
Wire Wire Line
	6150 3100 6800 3100
Wire Wire Line
	6150 3200 6800 3200
Wire Wire Line
	6150 3300 6800 3300
Wire Wire Line
	6150 3500 6800 3500
Text Label 4250 2100 0    50   ~ 0
D1-TX
Text Label 4250 2200 0    50   ~ 0
D0-RX
Text Label 4250 2300 0    50   ~ 0
RESET
$Comp
L power:GND #PWR03
U 1 1 5B52E30E
P 3850 2500
F 0 "#PWR03" H 3850 2250 50  0001 C CNN
F 1 "GND" H 3855 2327 50  0000 C CNN
F 2 "" H 3850 2500 50  0001 C CNN
F 3 "" H 3850 2500 50  0001 C CNN
	1    3850 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2400 3850 2500
Wire Wire Line
	3850 2400 4850 2400
Text Label 4250 2500 0    50   ~ 0
D2
Text Label 4250 2600 0    50   ~ 0
D3
Text Label 4250 2700 0    50   ~ 0
D4
Text Label 4250 2800 0    50   ~ 0
D5
Text Label 4250 2900 0    50   ~ 0
D6
Text Label 4250 3000 0    50   ~ 0
D7
Text Label 4250 3100 0    50   ~ 0
D8
Text Label 4250 3200 0    50   ~ 0
D9
Text Label 4250 3300 0    50   ~ 0
D10
Text Label 4250 3400 0    50   ~ 0
D11-MOSI
Text Label 4250 3500 0    50   ~ 0
D12-MISO
$Comp
L MuxPi_addon:CONN_01X15 J42
U 1 1 5B543951
P 5100 3650
F 0 "J42" H 5130 4542 50  0000 L CNN
F 1 "CONN_01X15" H 5130 4451 50  0000 L CNN
F 2 "Muxpi Addon:Pin_Header_Straight_1x15_Pitch2.54mm" H 5050 5300 50  0001 C CNN
F 3 "" H 5050 5300 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl201-16g/listwy-i-gniazda-kolkowe/connfly/ds1021-1_16sf11/," H 5100 3650 50  0001 C CNN "Shop link"
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CONN_01X15 J43
U 1 1 5B543A8C
P 5900 3650
F 0 "J43" H 5770 5417 50  0000 C CNN
F 1 "CONN_01X15" H 5770 5326 50  0000 C CNN
F 2 "Muxpi Addon:Pin_Header_Straight_1x15_Pitch2.54mm" H 5850 5300 50  0001 C CNN
F 3 "" H 5850 5300 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl201-16g/listwy-i-gniazda-kolkowe/connfly/ds1021-1_16sf11/" H 5900 3650 50  0001 C CNN "Shop link"
	1    5900 3650
	-1   0    0    -1  
$EndComp
Text Label 4250 2300 0    50   ~ 0
RESET
Text Label 6650 2100 0    50   ~ 0
VIN
$Comp
L power:GND #PWR04
U 1 1 5B557D0E
P 7100 2500
F 0 "#PWR04" H 7100 2250 50  0001 C CNN
F 1 "GND" H 7105 2327 50  0000 C CNN
F 2 "" H 7100 2500 50  0001 C CNN
F 3 "" H 7100 2500 50  0001 C CNN
	1    7100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2200 7100 2500
Wire Wire Line
	6150 2200 7100 2200
Text Label 6550 2300 0    50   ~ 0
RESET
Text Label 6700 2500 0    50   ~ 0
A7
Text Label 6700 2600 0    50   ~ 0
A6
Text Label 6700 2700 0    50   ~ 0
A5
Text Label 6700 2800 0    50   ~ 0
A4
Text Label 6700 2900 0    50   ~ 0
A3
Text Label 6700 3000 0    50   ~ 0
A2
Text Label 6700 3100 0    50   ~ 0
A1
Wire Wire Line
	7250 2100 7250 2400
Text Label 6700 3200 0    50   ~ 0
A0
Text Label 6600 3300 0    50   ~ 0
AREF
$Comp
L power:+3.3V #PWR08
U 1 1 5B5F5141
P 7500 2100
F 0 "#PWR08" H 7500 1950 50  0001 C CNN
F 1 "+3.3V" H 7515 2273 50  0000 C CNN
F 2 "" H 7500 2100 50  0001 C CNN
F 3 "" H 7500 2100 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2100 7500 3400
Wire Wire Line
	6150 3400 7500 3400
Text Label 6450 3500 0    50   ~ 0
D13-SCK
$Comp
L MuxPi_addon:USB_B_Micro J44
U 1 1 5B622E2D
P 9700 5100
F 0 "J44" H 9471 5091 50  0000 R CNN
F 1 "USB_B_Mini" H 9471 5000 50  0000 R CNN
F 2 "Muxpi Addon:USB_Micro-B_Molex-105017-0001" H 9900 4800 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/b7989e722b05f5084c507fb3ad8f02cb/MX-105017-0001.pdf" H 9900 4800 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/mx-105017-0001/zlacza-usb-i-ieee1394/molex/1050170001/" H 9700 5100 50  0001 C CNN "Shop link"
F 5 "MOLEX" H 9700 5100 50  0001 C CNN "Manufacturer"
F 6 "1050170001" H 9700 5100 50  0001 C CNN "Manufacturer Part No"
	1    9700 5100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5B686D7A
P 9700 5600
F 0 "#PWR012" H 9700 5350 50  0001 C CNN
F 1 "GND" H 9705 5427 50  0000 C CNN
F 2 "" H 9700 5600 50  0001 C CNN
F 3 "" H 9700 5600 50  0001 C CNN
	1    9700 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4900 9400 4900
$Comp
L MuxPi_addon:CP CP2
U 1 1 5B6EB006
P 10350 4450
F 0 "CP2" H 10468 4496 50  0000 L CNN
F 1 "4.7uF" H 10468 4405 50  0000 L CNN
F 2 "Muxpi Addon:C_T_0805" H 10388 4300 50  0001 C CNN
F 3 "" H 10350 4450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/tajr475k010rnj/kondensatory-tantalowe-smd/avx/" H 10350 4450 50  0001 C CNN "Shop link"
F 5 "AVX" H 10350 4450 50  0001 C CNN "Manufacturer"
F 6 "TAJR475K010RNJ" H 10350 4450 50  0001 C CNN "Manufacturer Part No"
	1    10350 4450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C4
U 1 1 5B6EB149
P 9900 4450
F 0 "C4" H 10015 4496 50  0000 L CNN
F 1 "0.1uF" H 10015 4405 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 9938 4300 50  0001 C CNN
F 3 "0.1uF" H 9900 4450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 9900 4450 50  0001 C CNN "Shop link"
	1    9900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4250 9900 4300
Wire Wire Line
	10350 4250 10350 4300
Wire Wire Line
	10350 4250 9900 4250
$Comp
L power:GND #PWR015
U 1 1 5B713B27
P 10350 4700
F 0 "#PWR015" H 10350 4450 50  0001 C CNN
F 1 "GND" H 10355 4527 50  0000 C CNN
F 2 "" H 10350 4700 50  0001 C CNN
F 3 "" H 10350 4700 50  0001 C CNN
	1    10350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 4600 10350 4650
Wire Wire Line
	10350 4650 9900 4650
Wire Wire Line
	9900 4650 9900 4600
Connection ~ 10350 4650
Wire Wire Line
	10350 4650 10350 4700
Connection ~ 9900 4250
Wire Wire Line
	3850 5150 4750 5150
$Comp
L power:GND #PWR016
U 1 1 5B8A878B
P 1100 3650
F 0 "#PWR016" H 1100 3400 50  0001 C CNN
F 1 "GND" H 1105 3477 50  0000 C CNN
F 2 "" H 1100 3650 50  0001 C CNN
F 3 "" H 1100 3650 50  0001 C CNN
	1    1100 3650
	1    0    0    -1  
$EndComp
Text Label 1850 3100 0    50   ~ 0
D3
$Comp
L power:GND #PWR07
U 1 1 5AD76D4F
P 1300 3650
F 0 "#PWR07" H 1300 3400 50  0001 C CNN
F 1 "GND" H 1305 3477 50  0000 C CNN
F 2 "" H 1300 3650 50  0001 C CNN
F 3 "" H 1300 3650 50  0001 C CNN
	1    1300 3650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:ESD5B5.0S D_ESD1
U 1 1 5AE57637
P 1300 3400
F 0 "D_ESD1" V 1254 3488 50  0000 L CNN
F 1 "ESD5B5.0S" V 1345 3488 50  0000 L CNN
F 2 "Muxpi Addon:SOD-523" H 1300 3400 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/8ba981c25abd6ce4f7df00b12050621e/ESD5B5.0-DTE.PDF" H 1300 3400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/esd5b5.0st1g/diody-transil-smd-dwukierunkowe/on-semiconductor/" V 1300 3400 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" V 1300 3400 50  0001 C CNN "Manufacturer"
F 6 "ESD5B5.0ST1G" V 1300 3400 50  0001 C CNN "Manufacturer Part No"
	1    1300 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 3100 1300 3100
Wire Wire Line
	1300 3200 1300 3100
Connection ~ 1300 3100
Wire Wire Line
	1300 3100 2000 3100
Wire Wire Line
	1300 3650 1300 3600
$Comp
L MuxPi_addon:R R21
U 1 1 5AEA9FDB
P 8800 5100
F 0 "R21" V 8800 5100 50  0000 C CNN
F 1 "0" V 8700 5100 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 8730 5100 50  0001 C CNN
F 3 "" H 8800 5100 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-070r/rezystory-smd-0805/yageo/rc0805jr-070rl/" V 8800 5100 50  0001 C CNN "Shop link"
	1    8800 5100
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:R R22
U 1 1 5AEAA1CE
P 8800 5200
F 0 "R22" V 8800 5200 50  0000 C CNN
F 1 "0" V 8900 5200 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 8730 5200 50  0001 C CNN
F 3 "" H 8800 5200 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-070r/rezystory-smd-0805/yageo/rc0805jr-070rl/" V 8800 5200 50  0001 C CNN "Shop link"
	1    8800 5200
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:R R19
U 1 1 5AED4D1D
P 8500 4900
F 0 "R19" V 8500 4900 50  0000 C CNN
F 1 "0" V 8400 4900 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 8430 4900 50  0001 C CNN
F 3 "" H 8500 4900 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-070r/rezystory-smd-0805/yageo/rc0805jr-070rl/" V 8500 4900 50  0001 C CNN "Shop link"
	1    8500 4900
	1    0    0    1   
$EndComp
Wire Wire Line
	8600 4750 8600 4700
Wire Wire Line
	8600 4700 8900 4700
Wire Wire Line
	8500 4750 8500 4600
Wire Wire Line
	8500 4600 8900 4600
Text Label 8950 5100 0    50   ~ 0
USB_C-
Text Label 8950 5200 0    50   ~ 0
USB_C+
$Comp
L power:VDD #PWR021
U 1 1 5AF9315D
P 3950 4150
F 0 "#PWR021" H 3950 4000 50  0001 C CNN
F 1 "VDD" H 3967 4323 50  0000 C CNN
F 2 "" H 3950 4150 50  0001 C CNN
F 3 "" H 3950 4150 50  0001 C CNN
	1    3950 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR019
U 1 1 5AF932E0
P 1900 3900
F 0 "#PWR019" H 1900 3750 50  0001 C CNN
F 1 "VDD" H 1917 4073 50  0000 C CNN
F 2 "" H 1900 3900 50  0001 C CNN
F 3 "" H 1900 3900 50  0001 C CNN
	1    1900 3900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR025
U 1 1 5AF93F74
P 7250 2100
F 0 "#PWR025" H 7250 1950 50  0001 C CNN
F 1 "VDD" H 7267 2273 50  0000 C CNN
F 2 "" H 7250 2100 50  0001 C CNN
F 3 "" H 7250 2100 50  0001 C CNN
	1    7250 2100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:FT230XQ U2
U 1 1 5AFDF5E3
P 6800 5200
F 0 "U2" H 6800 6078 50  0000 C CNN
F 1 "FT230XQ" H 6800 5987 50  0000 C CNN
F 2 "Muxpi Addon:QFN-16-1EP_4x4mm_Pitch0.65mm" H 6800 5200 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/93b0911297f91fbab90e758d2cc33bdf/DS_FT230X.pdf" H 6800 5200 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/ft230xq-t/uklady-scalone-interfejs-usb/ftdi/" H 6800 5200 50  0001 C CNN "Shop link"
F 5 "FTDI" H 6800 5200 50  0001 C CNN "Manufacturer"
F 6 "FT230XQ-T" H 6800 5200 50  0001 C CNN "Manufacturer Part No"
	1    6800 5200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8950 5100 9400 5100
Wire Wire Line
	8950 5200 9400 5200
$Comp
L power:GND #PWR022
U 1 1 5B0BEACA
P 6800 6100
F 0 "#PWR022" H 6800 5850 50  0001 C CNN
F 1 "GND" H 6805 5927 50  0000 C CNN
F 2 "" H 6800 6100 50  0001 C CNN
F 3 "" H 6800 6100 50  0001 C CNN
	1    6800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5900 6700 6000
Wire Wire Line
	6700 6000 6800 6000
Wire Wire Line
	6900 6000 6900 5900
Wire Wire Line
	6800 5900 6800 6000
Connection ~ 6800 6000
Wire Wire Line
	6800 6000 6900 6000
Wire Wire Line
	6800 6100 6800 6000
$Comp
L MuxPi_addon:R R9
U 1 1 5B0F8636
P 7850 5100
F 0 "R9" V 7850 5100 50  0000 C CNN
F 1 "27R" V 7750 5100 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 7780 5100 50  0001 C CNN
F 3 "" H 7850 5100 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 7850 5100 50  0001 C CNN "Shop link"
	1    7850 5100
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:R R10
U 1 1 5B11E92B
P 7850 5200
F 0 "R10" V 7850 5200 50  0000 C CNN
F 1 "27R" V 7950 5200 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 7780 5200 50  0001 C CNN
F 3 "" H 7850 5200 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 7850 5200 50  0001 C CNN "Shop link"
	1    7850 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 5100 7500 5100
Wire Wire Line
	7700 5200 7500 5200
Wire Wire Line
	7500 5400 7600 5400
Wire Wire Line
	7600 5400 7600 4800
Wire Wire Line
	7600 4800 7500 4800
Wire Wire Line
	7600 4800 7600 4150
Connection ~ 7600 4800
$Comp
L MuxPi_addon:C C5
U 1 1 5B1BB874
P 7600 5650
F 0 "C5" H 7715 5696 50  0000 L CNN
F 1 "0.1uF" H 7715 5605 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 7638 5500 50  0001 C CNN
F 3 "" H 7600 5650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 7600 5650 50  0001 C CNN "Shop link"
	1    7600 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5B1BBB5A
P 7600 5850
F 0 "#PWR026" H 7600 5600 50  0001 C CNN
F 1 "GND" H 7605 5677 50  0000 C CNN
F 2 "" H 7600 5850 50  0001 C CNN
F 3 "" H 7600 5850 50  0001 C CNN
	1    7600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 5800 7600 5850
Text Label 5600 4800 0    50   ~ 0
RX
Text Label 5600 4900 0    50   ~ 0
TX
$Comp
L MuxPi_addon:BLM21PG221SN1D L1
U 1 1 5B2E191D
P 8550 4250
F 0 "L1" V 8325 4250 50  0000 C CNN
F 1 "BLM21PG221SN1D" V 8416 4250 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" H 8550 4250 50  0001 C CNN
F 3 "" H 8550 4250 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/blm21pg221sn1d/ferryty-koraliki/murata/" V 8550 4250 50  0001 C CNN "Shop link"
F 5 "MURATA" V 8550 4250 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG221SN1D" V 8550 4250 50  0001 C CNN "Manufacturer Part No"
	1    8550 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 4500 6900 4250
Wire Wire Line
	6900 4250 8400 4250
$Comp
L MuxPi_addon:C C6
U 1 1 5B422CBB
P 8200 5400
F 0 "C6" H 8000 5450 50  0000 L CNN
F 1 "47pF/50V" H 8000 5350 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 8238 5250 50  0001 C CNN
F 3 "" H 8200 5400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/cl21c470jbannnc/kondensatory-mlcc-smd-0805/samsung/" H 8200 5400 50  0001 C CNN "Shop link"
	1    8200 5400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C7
U 1 1 5B422DFE
P 8400 5400
F 0 "C7" H 8515 5446 50  0000 L CNN
F 1 "47pF/50V" H 8515 5355 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 8438 5250 50  0001 C CNN
F 3 "" H 8400 5400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/cl21c470jbannnc/kondensatory-mlcc-smd-0805/samsung/" H 8400 5400 50  0001 C CNN "Shop link"
	1    8400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5B4232B4
P 8200 5600
F 0 "#PWR027" H 8200 5350 50  0001 C CNN
F 1 "GND" H 8205 5427 50  0000 C CNN
F 2 "" H 8200 5600 50  0001 C CNN
F 3 "" H 8200 5600 50  0001 C CNN
	1    8200 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5B423446
P 8400 5600
F 0 "#PWR037" H 8400 5350 50  0001 C CNN
F 1 "GND" H 8405 5427 50  0000 C CNN
F 2 "" H 8400 5600 50  0001 C CNN
F 3 "" H 8400 5600 50  0001 C CNN
	1    8400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5100 8650 5100
Wire Wire Line
	8200 5550 8200 5600
Wire Wire Line
	8400 5550 8400 5600
Wire Wire Line
	8600 5050 8600 5100
Wire Wire Line
	8500 5050 8500 5200
Connection ~ 8500 5200
Wire Wire Line
	8500 5200 8650 5200
Connection ~ 8600 5100
Wire Wire Line
	8000 5200 8400 5200
Wire Wire Line
	8000 5100 8200 5100
Wire Wire Line
	8200 5250 8200 5100
Connection ~ 8200 5100
Wire Wire Line
	8200 5100 8600 5100
Wire Wire Line
	8400 5250 8400 5200
Connection ~ 8400 5200
Wire Wire Line
	8400 5200 8500 5200
Wire Wire Line
	9700 5500 9700 5600
$Comp
L MuxPi_addon:C C8
U 1 1 5B5D685A
P 9700 5950
F 0 "C8" H 9500 6000 50  0000 L CNN
F 1 "0.1uF" H 9500 5900 50  0000 L CNN
F 2 "Muxpi Addon:C_0805" H 9738 5800 50  0001 C CNN
F 3 "" H 9700 5950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 9700 5950 50  0001 C CNN "Shop link"
	1    9700 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R20
U 1 1 5AEAB77D
P 8600 4900
F 0 "R20" V 8600 4900 50  0000 C CNN
F 1 "0" V 8500 4900 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 8530 4900 50  0001 C CNN
F 3 "" H 8600 4900 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-070r/rezystory-smd-0805/yageo/rc0805jr-070rl/" V 8600 4900 50  0001 C CNN "Shop link"
	1    8600 4900
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R23
U 1 1 5B601F09
P 9900 5950
F 0 "R23" V 9900 5950 50  0000 C CNN
F 1 "10k" V 9800 5950 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 9830 5950 50  0001 C CNN
F 3 "Muxpi Addon:R_0805" H 9900 5950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 9900 5950 50  0001 C CNN "Shop link"
	1    9900 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 5800 9800 5800
Connection ~ 9800 5800
Wire Wire Line
	9800 5800 9900 5800
$Comp
L power:GND #PWR038
U 1 1 5B659C67
P 9800 6100
F 0 "#PWR038" H 9800 5850 50  0001 C CNN
F 1 "GND" H 9805 5927 50  0000 C CNN
F 2 "" H 9800 6100 50  0001 C CNN
F 3 "" H 9800 6100 50  0001 C CNN
	1    9800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 6100 9800 6100
Wire Wire Line
	9800 6100 9900 6100
Connection ~ 9800 6100
$Comp
L MuxPi_addon:R R7
U 1 1 5B6CC4FC
P 5750 4400
F 0 "R7" V 5750 4400 50  0000 C CNN
F 1 "10k" V 5650 4400 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 5680 4400 50  0001 C CNN
F 3 "" H 5750 4400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 5750 4400 50  0001 C CNN "Shop link"
	1    5750 4400
	1    0    0    1   
$EndComp
Wire Wire Line
	5850 4550 5850 4800
Wire Wire Line
	5750 4550 5750 4900
$Comp
L MuxPi_addon:R R8
U 1 1 5B6CC507
P 5850 4400
F 0 "R8" V 5850 4400 50  0000 C CNN
F 1 "10k" V 5750 4400 50  0000 C CNN
F 2 "Muxpi Addon:R_0805" V 5780 4400 50  0001 C CNN
F 3 "" H 5850 4400 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 5850 4400 50  0001 C CNN "Shop link"
	1    5850 4400
	-1   0    0    1   
$EndComp
Connection ~ 5750 4900
Wire Wire Line
	5750 4900 6100 4900
Connection ~ 5850 4800
Wire Wire Line
	5850 4800 6100 4800
Wire Wire Line
	9800 5500 9800 5800
$Comp
L MuxPi_addon:LED_ALT D11
U 1 1 5B7A1ED7
P 5800 5500
F 0 "D11" H 6050 5550 50  0000 R CNN
F 1 "KPT-2012EC" H 6050 5650 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 5800 5500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 5800 5500 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 5800 5500 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 5800 5500 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 5800 5500 50  0001 C CNN "Manufacturer Part No"
	1    5800 5500
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:R R5
U 1 1 5B7A1EDF
P 5400 4450
F 0 "R5" V 5400 4400 50  0000 L CNN
F 1 "560R" V 5500 4350 50  0000 L CNN
F 2 "Muxpi Addon:R_0805" V 5330 4450 50  0001 C CNN
F 3 "" H 5400 4450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5400 4450 50  0001 C CNN "Shop link"
	1    5400 4450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R4
U 1 1 5B7B9A75
P 5300 4450
F 0 "R4" V 5300 4400 50  0000 L CNN
F 1 "560R" V 5200 4350 50  0000 L CNN
F 2 "Muxpi Addon:R_0805" V 5230 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5300 4450 50  0001 C CNN "Shop link"
	1    5300 4450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:LED_ALT D2
U 1 1 5B7EA435
P 5600 5400
F 0 "D2" H 5638 5283 50  0000 R CNN
F 1 "KPT-2012SGC" H 5650 5200 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 5600 5400 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 5600 5400 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 5600 5400 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 5600 5400 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 5600 5400 50  0001 C CNN "Manufacturer Part No"
	1    5600 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 4800 5850 4800
Wire Wire Line
	5600 4900 5750 4900
Wire Wire Line
	5300 4600 5300 5500
Wire Wire Line
	5300 5500 5650 5500
Wire Wire Line
	5950 5500 6100 5500
Wire Wire Line
	5750 5400 6100 5400
Wire Wire Line
	6700 4150 6700 4500
Wire Wire Line
	5850 4150 5850 4250
Wire Wire Line
	5750 4150 5750 4250
Wire Wire Line
	5750 4150 5850 4150
Wire Wire Line
	5850 4150 6700 4150
Connection ~ 5850 4150
Wire Wire Line
	6700 4150 7600 4150
Connection ~ 6700 4150
Connection ~ 5750 4150
Wire Wire Line
	5400 4150 5400 4300
Wire Wire Line
	5300 4150 5400 4150
Connection ~ 5400 4150
Wire Wire Line
	5400 4150 5750 4150
Wire Wire Line
	5300 4150 5300 4300
Wire Wire Line
	5400 4600 5400 5400
Wire Wire Line
	5400 5400 5450 5400
Wire Wire Line
	7600 5400 7600 5500
Connection ~ 7600 5400
$Comp
L MuxPi_addon:LED_ALT D1
U 1 1 5BD101FF
P 4000 7300
F 0 "D1" H 4038 7183 50  0000 R CNN
F 1 "KPT-2012SGC" H 4050 7100 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 4000 7300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 4000 7300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 4000 7300 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 4000 7300 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 4000 7300 50  0001 C CNN "Manufacturer Part No"
	1    4000 7300
	0    -1   -1   0   
$EndComp
NoConn ~ 6100 5000
NoConn ~ 6100 5100
NoConn ~ 6100 5300
NoConn ~ 6100 5600
NoConn ~ 9400 5300
$Comp
L power:VDD #PWR0102
U 1 1 5AEA065B
P 9000 4200
F 0 "#PWR0102" H 9000 4050 50  0001 C CNN
F 1 "VDD" H 9017 4373 50  0000 C CNN
F 2 "" H 9000 4200 50  0001 C CNN
F 3 "" H 9000 4200 50  0001 C CNN
	1    9000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4200 9000 4250
Wire Wire Line
	8700 4250 9000 4250
Wire Wire Line
	3950 4250 4300 4250
Wire Wire Line
	6150 2400 7250 2400
Connection ~ 9000 4250
Connection ~ 4300 4250
Wire Wire Line
	4300 4250 4650 4250
$Comp
L MuxPi_addon:MBRS410L D12
U 1 1 5AEF56FC
P 9300 4500
F 0 "D12" V 9346 4412 50  0000 R CNN
F 1 "MBRS410L" V 9255 4412 50  0000 R CNN
F 2 "Muxpi Addon:403AC" H 9000 4450 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/2ae16153347ea95089a67bd43c34e690/MBRS410LT3G-DTE.PDF" H 9200 5200 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/mbrs410lt3g/diody-schottky-smd/on-semiconductor/#" H 9700 4950 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" H 9600 5000 50  0001 C CNN "Manufacturer"
F 6 "MBRS410LT3G" H 9550 5100 50  0001 C CNN "Manufacturer Part No"
	1    9300 4500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 4300 9300 4250
Connection ~ 9300 4250
Wire Wire Line
	9300 4250 9900 4250
Wire Wire Line
	9000 4250 9300 4250
Wire Wire Line
	9300 4700 9300 4900
Wire Wire Line
	1100 3200 1100 3650
$Comp
L MuxPi_addon:CONN_01X02 J3
U 1 1 5B082CA9
P 950 3150
F 0 "J3" H 920 2875 50  0000 C CNN
F 1 "CONN_01X02" H 920 2966 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1450 2550 50  0001 C CNN
F 3 "" H 1450 2550 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/mx-22-23-2021/zlacza-sygnalowe-raster-254mm/molex/022232021-a-6373-02a222/" H 1100 3400 50  0001 C CNN "Shop link"
F 5 "MOLEX" H 1200 3500 50  0001 C CNN "Manufacturer"
F 6 "022232021 A-6373-02A222" H 1300 3600 50  0001 C CNN "Manufacturer Part No"
	1    950  3150
	-1   0    0    1   
$EndComp
$EndSCHEMATC
