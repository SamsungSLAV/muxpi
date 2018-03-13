EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
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
L MuxPi:CONN_01X04 J4
U 1 1 58DA650C
P 4300 2550
F 0 "J4" H 4378 2591 50  0000 L CNN
F 1 "CONN_01X04" H 4378 2500 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch1.27mm" H 4300 2550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cb34e048abb83f790f0df461315a2ac0/DS1065-01.pdf" H 4300 2550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ds1065-01-1x4s8bv/listwy-i-gniazda-kolkowe/connfly/ds1065-01-1_4s8bv/" H 4300 2550 60  0001 C CNN "Shop link"
F 5 "CONNFLY" H 4300 2550 50  0001 C CNN "Manufacturer"
F 6 "DS1065-01-1*4S8BV" H 4300 2550 50  0001 C CNN "Symbol"
	1    4300 2550
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0196
U 1 1 58DA8D55
P 5300 3400
F 0 "#PWR0196" H 5300 3150 50  0001 C CNN
F 1 "GND" H 5300 3250 50  0000 C CNN
F 2 "" H 5300 3400 60  0000 C CNN
F 3 "" H 5300 3400 60  0000 C CNN
	1    5300 3400
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0194
U 1 1 58DA8D5B
P 4550 2750
F 0 "#PWR0194" H 4550 2500 50  0001 C CNN
F 1 "GND" H 4550 2600 50  0000 C CNN
F 2 "" H 4550 2750 60  0000 C CNN
F 3 "" H 4550 2750 60  0000 C CNN
	1    4550 2750
	-1   0    0    -1  
$EndComp
Text Label 5150 2500 2    60   ~ 0
USB_LTHOR-
Text Label 5150 2600 2    60   ~ 0
USB_LTHOR+
NoConn ~ 4500 2400
$Comp
L MuxPi:TS3USB30EDGSR U13
U 1 1 58DA9533
P 5900 2900
F 0 "U13" H 5900 3587 60  0000 C CNN
F 1 "TS3USB30EDGSR" H 5900 3481 60  0000 C CNN
F 2 "footprints:msoic-10" H 3690 1790 60  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ts3usb30e.pdf" H 3690 1790 60  0001 C CNN
F 4 "http://pl.farnell.com/texas-instruments/ts3usb30edgsr/multiplexer-demultiplexer-1-2/dp/2335701" H 5900 2900 60  0001 C CNN "Shop link"
F 5 "TEXAS INSTRUMENTS" H 5900 2900 50  0001 C CNN "Manufacturer"
F 6 "TS3USB30EDGSR" H 5900 2900 50  0001 C CNN "Symbol"
	1    5900 2900
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0195
U 1 1 58DA9FBF
P 5300 3200
F 0 "#PWR0195" H 5300 3050 50  0001 C CNN
F 1 "+5V" H 5315 3373 50  0000 C CNN
F 2 "" H 5300 3200 50  0000 C CNN
F 3 "" H 5300 3200 50  0000 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C76
U 1 1 58DAA06C
P 1250 7150
F 0 "C76" H 1000 7250 50  0000 L CNN
F 1 "100nF/50V" H 700 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1288 7000 50  0001 C CNN
F 3 "" H 1250 7150 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 1250 7150 60  0001 C CNN "Shop link"
	1    1250 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0189
U 1 1 58DAA3D9
P 1250 7350
F 0 "#PWR0189" H 1250 7100 50  0001 C CNN
F 1 "GND" H 1250 7200 50  0000 C CNN
F 2 "" H 1250 7350 60  0000 C CNN
F 3 "" H 1250 7350 60  0000 C CNN
	1    1250 7350
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0188
U 1 1 58DAA5C4
P 1250 6950
F 0 "#PWR0188" H 1250 6800 50  0001 C CNN
F 1 "+5V" H 1265 7123 50  0000 C CNN
F 2 "" H 1250 6950 50  0000 C CNN
F 3 "" H 1250 6950 50  0000 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0198
U 1 1 58DAAA62
P 6500 3400
F 0 "#PWR0198" H 6500 3150 50  0001 C CNN
F 1 "GND" H 6500 3250 50  0000 C CNN
F 2 "" H 6500 3400 60  0000 C CNN
F 3 "" H 6500 3400 60  0000 C CNN
	1    6500 3400
	-1   0    0    -1  
$EndComp
Text Label 7750 2700 0    60   ~ 0
USB_ID
$Comp
L MuxPi:GND #PWR0201
U 1 1 58DAB56F
P 8100 2950
F 0 "#PWR0201" H 8100 2700 50  0001 C CNN
F 1 "GND" H 8100 2800 50  0000 C CNN
F 2 "" H 8100 2950 60  0000 C CNN
F 3 "" H 8100 2950 60  0000 C CNN
	1    8100 2950
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X05 J5
U 1 1 58DAB6A7
P 8350 2700
F 0 "J5" H 8428 2741 50  0000 L CNN
F 1 "CONN_01X05" H 8428 2650 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch1.27mm" H 8350 2700 50  0001 C CNN
F 3 "" H 8350 2700 50  0001 C CNN
	1    8350 2700
	1    0    0    -1  
$EndComp
Text Label 7750 2800 0    60   ~ 0
VBUS
$Comp
L MuxPi:GND #PWR0200
U 1 1 58DAC996
P 6800 5450
F 0 "#PWR0200" H 6800 5200 50  0001 C CNN
F 1 "GND" H 6800 5300 50  0000 C CNN
F 2 "" H 6800 5450 60  0000 C CNN
F 3 "" H 6800 5450 60  0000 C CNN
	1    6800 5450
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:POT RV1
U 1 1 58DAD5CC
P 6800 4800
F 0 "RV1" H 6730 4846 50  0000 R CNN
F 1 "3224W-105-1LF" H 6730 4755 50  0000 R CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3224W" H 6800 4800 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/37649/pot-53w.pdf" H 6800 4800 50  0001 C CNN
F 4 "https://www.maritex.com.pl/elementy_pasywne/potencjometry/wieloobrotowe/wieloobrotowe_smd/potencjometry_precyzyjne_wieloobrotowe_smd/pot53w105.html" H 6800 4800 60  0001 C CNN "Shop link"
F 5 "ALLCONNE" H 6800 4800 50  0001 C CNN "Manufacturer"
F 6 "POT53W105" H 6800 4800 50  0001 C CNN "Symbol"
	1    6800 4800
	1    0    0    -1  
$EndComp
Text Label 7500 4800 2    60   ~ 0
USB_ID
$Comp
L MuxPi:R R24
U 1 1 58DAF671
P 3300 5450
F 0 "R24" V 3200 5450 50  0000 C CNN
F 1 "10K" V 3400 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3230 5450 30  0001 C CNN
F 3 "" H 3300 5450 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3300 5450 60  0001 C CNN "Shop link"
	1    3300 5450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R25
U 1 1 58DAF679
P 3850 4700
F 0 "R25" V 3750 4700 50  0000 C CNN
F 1 "10K" V 3950 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3780 4700 30  0001 C CNN
F 3 "" H 3850 4700 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3850 4700 60  0001 C CNN "Shop link"
	1    3850 4700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0192
U 1 1 58DAF680
P 3850 5650
F 0 "#PWR0192" H 3850 5400 50  0001 C CNN
F 1 "GND" H 3850 5500 50  0000 C CNN
F 2 "" H 3850 5650 60  0000 C CNN
F 3 "" H 3850 5650 60  0000 C CNN
	1    3850 5650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0190
U 1 1 58DAF69C
P 3300 5650
F 0 "#PWR0190" H 3300 5400 50  0001 C CNN
F 1 "GND" H 3300 5500 50  0000 C CNN
F 2 "" H 3300 5650 60  0000 C CNN
F 3 "" H 3300 5650 60  0000 C CNN
	1    3300 5650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0193
U 1 1 58DB0303
P 4100 4500
F 0 "#PWR0193" H 4100 4350 50  0001 C CNN
F 1 "+5V" H 4115 4673 50  0000 C CNN
F 2 "" H 4100 4500 50  0000 C CNN
F 3 "" H 4100 4500 50  0000 C CNN
	1    4100 4500
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0191
U 1 1 58DB06EF
P 3850 4500
F 0 "#PWR0191" H 3850 4350 50  0001 C CNN
F 1 "+5V" H 3865 4673 50  0000 C CNN
F 2 "" H 3850 4500 50  0000 C CNN
F 3 "" H 3850 4500 50  0000 C CNN
	1    3850 4500
	1    0    0    -1  
$EndComp
Text Label 5400 4600 2    60   ~ 0
VBUS
Wire Wire Line
	4500 2500 5350 2500
Wire Wire Line
	4500 2700 4550 2700
Wire Wire Line
	4550 2700 4550 2750
Wire Wire Line
	5350 3350 5300 3350
Wire Wire Line
	5300 3350 5300 3400
Wire Wire Line
	5300 3200 5300 3250
Wire Wire Line
	5300 3250 5350 3250
Wire Wire Line
	1250 6950 1250 7000
Wire Wire Line
	1250 7300 1250 7350
Wire Wire Line
	6450 3350 6500 3350
Wire Wire Line
	6500 3350 6500 3400
Wire Wire Line
	6450 3250 7050 3250
Wire Wire Line
	6450 2500 8150 2500
Wire Wire Line
	6450 2800 6500 2800
Wire Wire Line
	6500 2800 6500 2600
Wire Wire Line
	6500 2600 8150 2600
Wire Wire Line
	8150 2700 7750 2700
Wire Wire Line
	8150 2900 8100 2900
Wire Wire Line
	8100 2900 8100 2950
Wire Wire Line
	8150 2800 7750 2800
Wire Wire Line
	6800 5400 6800 5450
Wire Wire Line
	6800 4950 6800 5000
Wire Wire Line
	6500 5250 5900 5250
Wire Wire Line
	6950 4800 7500 4800
Wire Wire Line
	4800 4600 4900 4600
Wire Wire Line
	4800 4700 4900 4700
Connection ~ 4900 4700
Wire Wire Line
	4900 4800 4800 4800
Connection ~ 4900 4800
Wire Wire Line
	4900 4900 4800 4900
Wire Wire Line
	3300 5250 3300 5300
Wire Wire Line
	4100 4800 4200 4800
Wire Wire Line
	4100 4500 4100 4600
Wire Wire Line
	4200 4700 4100 4700
Connection ~ 4100 4700
Connection ~ 3300 5250
Wire Wire Line
	3850 4950 4200 4950
Wire Wire Line
	3850 4850 3850 4950
Connection ~ 3850 4950
Wire Wire Line
	2750 5250 3300 5250
Connection ~ 4100 4600
Wire Wire Line
	4900 4600 4900 4700
Connection ~ 4900 4600
Wire Wire Line
	3300 5600 3300 5650
Wire Wire Line
	3850 5400 3850 5650
Wire Wire Line
	4100 4600 4200 4600
Wire Wire Line
	3850 4500 3850 4550
Wire Wire Line
	5350 2900 5150 2900
Wire Wire Line
	5150 2900 5150 3450
Wire Wire Line
	5150 3450 4350 3450
Wire Wire Line
	4500 2600 5150 2600
Wire Wire Line
	5150 2600 5150 2800
Wire Wire Line
	5150 2800 5350 2800
Wire Wire Line
	5350 2600 5250 2600
Wire Wire Line
	5250 2600 5250 2700
Wire Wire Line
	5250 2700 5050 2700
Wire Wire Line
	5050 2700 5050 3350
Wire Wire Line
	5050 3350 4350 3350
Text HLabel 4350 3450 0    60   Input ~ 0
DUT_RX_LS
Text HLabel 4350 3350 0    60   Input ~ 0
DUT_TX_LS
Text HLabel 2750 5250 0    60   Input ~ 0
LTHOR_VBUS
Text HLabel 5900 5250 0    60   Input ~ 0
LTHOR_ID
Text HLabel 7050 3250 2    60   Input ~ 0
LTHOR_SWITCH
Wire Wire Line
	6800 4600 6800 4650
Wire Wire Line
	4900 4700 4900 4800
Wire Wire Line
	4900 4800 4900 4900
Wire Wire Line
	4100 4700 4100 4800
Wire Wire Line
	3300 5250 3550 5250
Wire Wire Line
	3850 4950 3850 5000
Wire Wire Line
	4100 4600 4100 4700
Wire Wire Line
	4900 4600 5400 4600
$Comp
L MuxPi:2N7002 Q13
U 1 1 5A88C1DF
P 3750 5200
F 0 "Q13" H 3941 5246 50  0000 L CNN
F 1 "2N7002" H 3941 5155 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3950 5125 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 3750 5200 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 3750 5200 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 3750 5200 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 3750 5200 50  0001 C CNN "Symbol"
	1    3750 5200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:2N7002 Q14
U 1 1 5A88D4E8
P 6700 5200
F 0 "Q14" H 6891 5246 50  0000 L CNN
F 1 "2N7002" H 6891 5155 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6900 5125 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 6700 5200 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 6700 5200 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 6700 5200 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 6700 5200 50  0001 C CNN "Symbol"
	1    6700 5200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:BSO130P03S Q15
U 1 1 5A88DDE3
P 4500 4800
F 0 "Q15" H 4500 5307 50  0000 C CNN
F 1 "BSO130P03S" H 4500 5216 50  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 4500 5125 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/fde90035d9a6021d44d09086b0d9119c/BSO130P03SHXUMA1-DTE.pdf" V 4500 4800 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/bso130p03shxuma1/tranzystory-z-kanalem-p-smd/infineon-technologies/" H 4500 4800 60  0001 C CNN "Shop link"
F 5 "INFINEON TECHNOLOGIES" H 4500 4800 50  0001 C CNN "Manufacturer"
F 6 "BSO130P03SHXUMA1" H 4500 4800 50  0001 C CNN "Symbol"
	1    4500 4800
	1    0    0    -1  
$EndComp
NoConn ~ 6800 4600
$EndSCHEMATC
