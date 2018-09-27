EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 12
Title "MuxPi"
Date "2018-04-20"
Rev "1.2"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 - 2018 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5150 2750 5150 2950
Wire Wire Line
	5150 2950 5550 2950
Wire Wire Line
	5550 2900 5550 2950
$Comp
L MuxPi:VDD #PWR077
U 1 1 58370411
P 5550 2050
F 0 "#PWR077" H 5550 1900 50  0001 C CNN
F 1 "VDD" H 5550 2200 50  0000 C CNN
F 2 "" H 5550 2050 60  0000 C CNN
F 3 "" H 5550 2050 60  0000 C CNN
	1    5550 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2450 5150 2250
Wire Wire Line
	5150 2250 5550 2250
Wire Wire Line
	5550 2050 5550 2250
$Comp
L MuxPi:IM03 K1
U 1 1 5837041A
P 5750 2600
F 0 "K1" H 6580 2646 50  0000 L CNN
F 1 "1-1462037-4" H 6580 2555 50  0000 L CNN
F 2 "mux-footprints:IM03-SMT_GULL" H 5750 2600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/3d423240524ca321875bc7f197d833ad/IM-HICDP.pdf" H 5750 2600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/im03gr/przekazniki-elektromagn-miniaturowe/te-connectivity/1-1462037-4/" H 5750 2600 60  0001 C CNN "Shop link"
F 5 "TE CONNECTIVITY" H 5750 2600 50  0001 C CNN "Manufacturer"
F 6 "1-1462037-4" H 5750 2600 50  0001 C CNN "Symbol"
F 7 "G6K-2F-Y 5VDC" H 5750 2600 50  0001 C CNN "Alt. Symbol"
F 8 "OMRON" H 5750 2600 50  0001 C CNN "Alt. Manufacturer"
	1    5750 2600
	1    0    0    -1  
$EndComp
Connection ~ 5550 2250
Connection ~ 5550 2950
NoConn ~ 5850 2300
NoConn ~ 6250 2300
Wire Wire Line
	6450 2300 6450 2150
Wire Wire Line
	6350 2900 6350 2950
Wire Wire Line
	6350 2950 6900 2950
Wire Wire Line
	6900 2950 6900 2250
Wire Wire Line
	6900 2250 7500 2250
Wire Wire Line
	6050 2300 6050 1850
Wire Wire Line
	6050 1850 7500 1850
Wire Wire Line
	5950 2900 5950 3050
Wire Wire Line
	5950 3050 7000 3050
Wire Wire Line
	7000 3050 7000 1950
Wire Wire Line
	7000 1950 7500 1950
Text HLabel 4100 3250 0    60   Input ~ 0
DYPER_1
Text HLabel 4100 5500 0    60   Input ~ 0
DYPER_2
$Comp
L MuxPi:CONN_01X02 P5
U 1 1 58638C0E
P 7700 1900
F 0 "P5" H 7777 1941 50  0000 L CNN
F 1 "NS25-W2P" H 7777 1850 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7700 1900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/f4fbc03349849389d5a444932ab1e0cf/ns25-w2p.pdf" H 7700 1900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ns25-w2p/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 1900 60  0001 C CNN "Shop link"
F 5 "NINIGI" H 7700 1900 50  0001 C CNN "Manufacturer"
F 6 "NS25-W2P" H 7700 1900 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/ns25-g2/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 1900 60  0001 C CNN "Complementary device"
F 8 "NINIGI" H 7700 1900 50  0001 C CNN "Complementary manufacturer"
F 9 "NS25-G2" H 7700 1900 50  0001 C CNN "Complementary symbol"
F 10 "http://www.tme.eu/pl/details/ns25-t/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 1900 60  0001 C CNN "Complementary device 1"
F 11 "NINIGI" H 7700 1900 50  0001 C CNN "Complementary manufacturer 1"
F 12 "NS25-T" H 7700 1900 50  0001 C CNN "Complementary symbol 1"
	1    7700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2150 7500 2150
$Comp
L MuxPi:GND #PWR078
U 1 1 585452F6
P 5550 3650
F 0 "#PWR078" H 5550 3400 50  0001 C CNN
F 1 "GND" H 5550 3500 50  0000 C CNN
F 2 "" H 5550 3650 60  0000 C CNN
F 3 "" H 5550 3650 60  0000 C CNN
	1    5550 3650
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR075
U 1 1 58545304
P 5000 3650
F 0 "#PWR075" H 5000 3400 50  0001 C CNN
F 1 "GND" H 5000 3500 50  0000 C CNN
F 2 "" H 5000 3650 60  0000 C CNN
F 3 "" H 5000 3650 60  0000 C CNN
	1    5000 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 3400 5550 3650
Wire Wire Line
	4100 3250 5000 3250
Wire Wire Line
	5000 3300 5000 3250
Connection ~ 5000 3250
Wire Wire Line
	5000 3600 5000 3650
$Comp
L MuxPi:R R16
U 1 1 58545314
P 5000 3450
F 0 "R16" V 4900 3450 50  0000 C CNN
F 1 "10K" V 5100 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 3450 30  0001 C CNN
F 3 "" H 5000 3450 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5000 3450 60  0001 C CNN "Shop link"
	1    5000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5000 5150 5200
Wire Wire Line
	5150 5200 5550 5200
Wire Wire Line
	5550 5150 5550 5200
$Comp
L MuxPi:VDD #PWR079
U 1 1 58512F0D
P 5550 4300
F 0 "#PWR079" H 5550 4150 50  0001 C CNN
F 1 "VDD" H 5550 4450 50  0000 C CNN
F 2 "" H 5550 4300 60  0000 C CNN
F 3 "" H 5550 4300 60  0000 C CNN
	1    5550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 4700 5150 4500
Wire Wire Line
	5150 4500 5550 4500
Wire Wire Line
	5550 4300 5550 4500
Connection ~ 5550 4500
Connection ~ 5550 5200
NoConn ~ 5850 4550
NoConn ~ 6250 4550
Wire Wire Line
	6450 4550 6450 4400
Wire Wire Line
	6350 5150 6350 5200
Wire Wire Line
	6350 5200 6900 5200
Wire Wire Line
	6900 5200 6900 4500
Wire Wire Line
	6900 4500 7500 4500
Wire Wire Line
	6050 4550 6050 4100
Wire Wire Line
	6050 4100 7500 4100
Wire Wire Line
	5950 5150 5950 5300
Wire Wire Line
	5950 5300 7000 5300
Wire Wire Line
	7000 5300 7000 4200
Wire Wire Line
	7000 4200 7500 4200
Wire Wire Line
	6450 4400 7500 4400
$Comp
L MuxPi:GND #PWR080
U 1 1 58512F34
P 5550 5900
F 0 "#PWR080" H 5550 5650 50  0001 C CNN
F 1 "GND" H 5550 5750 50  0000 C CNN
F 2 "" H 5550 5900 60  0000 C CNN
F 3 "" H 5550 5900 60  0000 C CNN
	1    5550 5900
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR076
U 1 1 58512F41
P 5000 5900
F 0 "#PWR076" H 5000 5650 50  0001 C CNN
F 1 "GND" H 5000 5750 50  0000 C CNN
F 2 "" H 5000 5900 60  0000 C CNN
F 3 "" H 5000 5900 60  0000 C CNN
	1    5000 5900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 5650 5550 5900
Wire Wire Line
	4100 5500 5000 5500
Wire Wire Line
	5000 5550 5000 5500
Connection ~ 5000 5500
Wire Wire Line
	5000 5850 5000 5900
$Comp
L MuxPi:R R17
U 1 1 58512F4D
P 5000 5700
F 0 "R17" V 4900 5700 50  0000 C CNN
F 1 "10K" V 5100 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4930 5700 30  0001 C CNN
F 3 "" H 5000 5700 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 5000 5700 60  0001 C CNN "Shop link"
	1    5000 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2250 5550 2300
Wire Wire Line
	5550 2950 5550 3000
Wire Wire Line
	5000 3250 5250 3250
Wire Wire Line
	5550 4500 5550 4550
Wire Wire Line
	5550 5200 5550 5250
Wire Wire Line
	5000 5500 5250 5500
$Comp
L MuxPi:2N7002 Q2
U 1 1 5A8EB0B3
P 5450 3200
F 0 "Q2" H 5641 3246 50  0000 L CNN
F 1 "2N7002" H 5641 3155 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 3125 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 5450 3200 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 5450 3200 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 5450 3200 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 5450 3200 50  0001 C CNN "Symbol"
	1    5450 3200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:2N7002 Q3
U 1 1 5A8EBD2D
P 5450 5450
F 0 "Q3" H 5641 5496 50  0000 L CNN
F 1 "2N7002" H 5641 5405 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 5650 5375 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 5450 5450 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 5450 5450 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 5450 5450 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 5450 5450 50  0001 C CNN "Symbol"
	1    5450 5450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:D D2
U 1 1 5A8EC99C
P 5150 2600
F 0 "D2" H 5150 2700 50  0000 C CNN
F 1 "ES1AL" H 5150 2500 50  0000 C CNN
F 2 "mux-footprints:Sub_SMA" H 5150 2600 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6e3ed172b8ef57eec12ad172948b8283/ES1JL-DTE.pdf" H 5150 2600 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/es1jl/diody-uniwersalne-smd/taiwan-semiconductor/" H 5150 2600 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 5150 2600 50  0001 C CNN "Manufacturer"
F 6 "ES1JL" H 5150 2600 50  0001 C CNN "Symbol"
	1    5150 2600
	0    1    1    0   
$EndComp
$Comp
L MuxPi:D D3
U 1 1 5A8EE3BF
P 5150 4850
F 0 "D3" H 5150 4950 50  0000 C CNN
F 1 "ES1AL" H 5150 4750 50  0000 C CNN
F 2 "mux-footprints:Sub_SMA" H 5150 4850 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6e3ed172b8ef57eec12ad172948b8283/ES1JL-DTE.pdf" H 5150 4850 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/es1jl/diody-uniwersalne-smd/taiwan-semiconductor/" H 5150 4850 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 5150 4850 50  0001 C CNN "Manufacturer"
F 6 "ES1JL" H 5150 4850 50  0001 C CNN "Symbol"
	1    5150 4850
	0    1    1    0   
$EndComp
$Comp
L MuxPi:IM03 K2
U 1 1 5A8EEE9D
P 5750 4850
F 0 "K2" H 6580 4896 50  0000 L CNN
F 1 "1-1462037-4" H 6580 4805 50  0000 L CNN
F 2 "mux-footprints:IM03-SMT_GULL" H 5750 4850 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/3d423240524ca321875bc7f197d833ad/IM-HICDP.pdf" H 5750 4850 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/im03gr/przekazniki-elektromagn-miniaturowe/te-connectivity/1-1462037-4/" H 5750 4850 60  0001 C CNN "Shop link"
F 5 "TE CONNECTIVITY" H 5750 4850 50  0001 C CNN "Manufacturer"
F 6 "1-1462037-4" H 5750 4850 50  0001 C CNN "Symbol"
F 7 "G6K-2F-Y 5VDC" H 5750 4850 50  0001 C CNN "Alt. Symbol"
F 8 "OMRON" H 5750 4850 50  0001 C CNN "Alt. Manufacturer"
	1    5750 4850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P6
U 1 1 5A8EF6B9
P 7700 2200
F 0 "P6" H 7777 2241 50  0000 L CNN
F 1 "NS25-W2P" H 7777 2150 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7700 2200 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/f4fbc03349849389d5a444932ab1e0cf/ns25-w2p.pdf" H 7700 2200 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ns25-w2p/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 2200 60  0001 C CNN "Shop link"
F 5 "NINIGI" H 7700 2200 50  0001 C CNN "Manufacturer"
F 6 "NS25-W2P" H 7700 2200 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/ns25-g2/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 2200 60  0001 C CNN "Complementary device"
F 8 "NINIGI" H 7700 2200 50  0001 C CNN "Complementary manufacturer"
F 9 "NS25-G2" H 7700 2200 50  0001 C CNN "Complementary symbol"
F 10 "http://www.tme.eu/pl/details/ns25-t/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 2200 60  0001 C CNN "Complementary device 1"
F 11 "NINIGI" H 7700 2200 50  0001 C CNN "Complementary manufacturer 1"
F 12 "NS25-T" H 7700 2200 50  0001 C CNN "Complementary symbol 1"
	1    7700 2200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P7
U 1 1 5A8EF880
P 7700 4150
F 0 "P7" H 7777 4191 50  0000 L CNN
F 1 "NS25-W2P" H 7777 4100 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7700 4150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/f4fbc03349849389d5a444932ab1e0cf/ns25-w2p.pdf" H 7700 4150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ns25-w2p/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4150 60  0001 C CNN "Shop link"
F 5 "NINIGI" H 7700 4150 50  0001 C CNN "Manufacturer"
F 6 "NS25-W2P" H 7700 4150 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/ns25-g2/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4150 60  0001 C CNN "Complementary device"
F 8 "NINIGI" H 7700 4150 50  0001 C CNN "Complementary manufacturer"
F 9 "NS25-G2" H 7700 4150 50  0001 C CNN "Complementary symbol"
F 10 "http://www.tme.eu/pl/details/ns25-t/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4150 60  0001 C CNN "Complementary device 1"
F 11 "NINIGI" H 7700 4150 50  0001 C CNN "Complementary manufacturer 1"
F 12 "NS25-T" H 7700 4150 50  0001 C CNN "Complementary symbol 1"
	1    7700 4150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P8
U 1 1 5A8EF912
P 7700 4450
F 0 "P8" H 7777 4491 50  0000 L CNN
F 1 "NS25-W2P" H 7777 4400 50  0000 L CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7700 4450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/f4fbc03349849389d5a444932ab1e0cf/ns25-w2p.pdf" H 7700 4450 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ns25-w2p/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4450 60  0001 C CNN "Shop link"
F 5 "NINIGI" H 7700 4450 50  0001 C CNN "Manufacturer"
F 6 "NS25-W2P" H 7700 4450 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/ns25-g2/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4450 60  0001 C CNN "Complementary device"
F 8 "NINIGI" H 7700 4450 50  0001 C CNN "Complementary manufacturer"
F 9 "NS25-G2" H 7700 4450 50  0001 C CNN "Complementary symbol"
F 10 "http://www.tme.eu/pl/details/ns25-t/zlacza-sygnalowe-raster-254mm/ninigi/" H 7700 4450 60  0001 C CNN "Complementary device 1"
F 11 "NINIGI" H 7700 4450 50  0001 C CNN "Complementary manufacturer 1"
F 12 "NS25-T" H 7700 4450 50  0001 C CNN "Complementary symbol 1"
	1    7700 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
