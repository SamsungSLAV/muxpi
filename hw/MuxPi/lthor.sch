EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
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
Text Label 7750 2900 0    60   ~ 0
USB_ID
$Comp
L MuxPi:GND #PWR0201
U 1 1 58DAB56F
P 8450 3150
F 0 "#PWR0201" H 8450 2900 50  0001 C CNN
F 1 "GND" H 8450 3000 50  0000 C CNN
F 2 "" H 8450 3150 60  0000 C CNN
F 3 "" H 8450 3150 60  0000 C CNN
	1    8450 3150
	-1   0    0    -1  
$EndComp
Text Label 7750 2500 0    60   ~ 0
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
P 4500 4500
F 0 "#PWR0193" H 4500 4350 50  0001 C CNN
F 1 "+5V" H 4515 4673 50  0000 C CNN
F 2 "" H 4500 4500 50  0000 C CNN
F 3 "" H 4500 4500 50  0000 C CNN
	1    4500 4500
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
Text Label 5000 5350 2    60   ~ 0
VBUS
Wire Wire Line
	4500 2500 5350 2500
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
	6450 2500 6600 2500
Wire Wire Line
	8150 2900 7750 2900
Wire Wire Line
	8150 2500 7750 2500
Wire Wire Line
	6800 5400 6800 5450
Wire Wire Line
	6800 4950 6800 5000
Wire Wire Line
	6500 5250 5900 5250
Wire Wire Line
	6950 4800 7500 4800
Wire Wire Line
	3300 5250 3300 5300
Connection ~ 3300 5250
Wire Wire Line
	3850 4950 4200 4950
Wire Wire Line
	3850 4850 3850 4950
Connection ~ 3850 4950
Wire Wire Line
	2750 5250 3300 5250
Wire Wire Line
	3300 5600 3300 5650
Wire Wire Line
	3850 5400 3850 5650
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
	3300 5250 3550 5250
Wire Wire Line
	3850 4950 3850 5000
Wire Wire Line
	4500 5350 5000 5350
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
NoConn ~ 6800 4600
$Comp
L MuxPi:Q_PMOS_GSD Q6
U 1 1 5C2D9E97
P 4400 4950
F 0 "Q6" H 4606 4996 50  0000 L CNN
F 1 "DMP2035U-7" H 4606 4905 50  0000 L CNN
F 2 "MuxPi:SOT-23" H 4600 5050 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/c0089df8c5de3ea3a074034d05f63960/DMP2035U.pdf" H 4400 4950 50  0001 C CNN
F 4 "DMP2035U-7" H 4400 4950 50  0001 C CNN "Symbol"
F 5 "DIODES INCORPORATED" H 4400 4950 50  0001 C CNN "Manufacturer"
	1    4400 4950
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 4500 4500 4750
Wire Wire Line
	4500 5350 4500 5150
$Comp
L Connector:USB_B_Mini J5
U 1 1 5C2DF76E
P 8450 2700
F 0 "J5" H 8220 2689 50  0000 R CNN
F 1 "UJ2-MBH-1-SMT-TR " H 8220 2598 50  0000 R CNN
F 2 "MuxPi:USB_Mini-B_Lumberg_2486_01_Horizontal" H 8600 2650 50  0001 C CNN
F 3 "https://pl.mouser.com/datasheet/2/670/uj2-mbh-smt-1313286.pdf" H 8600 2650 50  0001 C CNN
F 4 "https://pl.mouser.com/ProductDetail/CUI/UJ2-MBH-1-SMT-TR?qs=sGAEpiMZZMulM8LPOQ%252byk%252br6FietFiXBYOK8b9%2fsuNIy0pbKqeLWLA%3d%3d" H 8450 2700 50  0001 C CNN "Shop link"
F 5 "0.492" H 8450 2700 50  0001 C CNN "Price"
F 6 "UJ2-MBH-1-SMT-TR " H 8450 2700 50  0001 C CNN "Symbol"
	1    8450 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 3100 8450 3150
Wire Wire Line
	7100 2800 8150 2800
Wire Wire Line
	6600 2500 6600 2700
Wire Wire Line
	6600 2700 6950 2700
Wire Wire Line
	6450 2800 6950 2800
Wire Wire Line
	6950 2800 7100 2700
Wire Wire Line
	6950 2700 7100 2800
Wire Wire Line
	7100 2700 8150 2700
Text HLabel 4500 2500 0    60   Input ~ 0
USB_LTHOR-
Text HLabel 4500 2600 0    60   Input ~ 0
USB_LTHOR+
$EndSCHEMATC
