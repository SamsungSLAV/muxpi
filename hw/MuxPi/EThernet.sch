EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
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
L MuxPi:LAN9500A U12
U 1 1 585DAC2D
P 4200 2500
F 0 "U12" H 4400 3818 50  0000 C CNN
F 1 "LAN9500A-ABZJ" H 4400 3727 50  0000 C CNN
F 2 "mux-footprints:QFN_56" H 6150 2250 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1907741.pdf?_ga=1.91944537.291132730.1474618953" H 6150 2250 50  0001 C CNN
F 4 "http://pl.farnell.com/microchip/lan9500a-abzj/ic-usb2-0-10-100-enet-cntrl-56vqfn/dp/2292585" H 4200 2500 60  0001 C CNN "Shop link"
F 5 "LAN9500A-ABZJ" H 4200 2500 50  0001 C CNN "Symbol"
F 6 "MICROCHIP" H 4200 2500 50  0001 C CNN "Manufacturer"
	1    4200 2500
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:LAN9500A U12
U 2 1 585DACB3
P 3850 6250
F 0 "U12" H 3850 7615 50  0000 C CNN
F 1 "LAN9500A-ABZJ" H 3850 7524 50  0000 C CNN
F 2 "mux-footprints:QFN_56" H 5800 6000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1907741.pdf?_ga=1.91944537.291132730.1474618953" H 5800 6000 50  0001 C CNN
F 4 "http://pl.farnell.com/microchip/lan9500a-abzj/ic-usb2-0-10-100-enet-cntrl-56vqfn/dp/2292585" H 3850 6250 60  0001 C CNN "Shop link"
F 5 "MICROCHIP" H 3850 6250 50  0001 C CNN "Manufacturer"
F 6 "LAN9500A-ABZJ" H 3850 6250 50  0001 C CNN "Symbol"
	2    3850 6250
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0168
U 1 1 585DAE6F
P 3000 7300
F 0 "#PWR0168" H 3000 7050 50  0001 C CNN
F 1 "GND" H 3005 7127 50  0001 C CNN
F 2 "" H 3000 7300 50  0000 C CNN
F 3 "" H 3000 7300 50  0000 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0181
U 1 1 585DB287
P 6500 6150
F 0 "#PWR0181" H 6500 6000 50  0001 C CNN
F 1 "+3V3" H 6515 6323 50  0000 C CNN
F 2 "" H 6500 6150 50  0000 C CNN
F 3 "" H 6500 6150 50  0000 C CNN
	1    6500 6150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0171
U 1 1 585E2006
P 4950 6800
F 0 "#PWR0171" H 4950 6550 50  0001 C CNN
F 1 "GND" H 4955 6627 50  0001 C CNN
F 2 "" H 4950 6800 50  0000 C CNN
F 3 "" H 4950 6800 50  0000 C CNN
	1    4950 6800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0173
U 1 1 585E2105
P 5250 6800
F 0 "#PWR0173" H 5250 6550 50  0001 C CNN
F 1 "GND" H 5255 6627 50  0001 C CNN
F 2 "" H 5250 6800 50  0000 C CNN
F 3 "" H 5250 6800 50  0000 C CNN
	1    5250 6800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0175
U 1 1 585E2129
P 5550 6800
F 0 "#PWR0175" H 5550 6550 50  0001 C CNN
F 1 "GND" H 5555 6627 50  0001 C CNN
F 2 "" H 5550 6800 50  0000 C CNN
F 3 "" H 5550 6800 50  0000 C CNN
	1    5550 6800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0172
U 1 1 585E300A
P 4950 7300
F 0 "#PWR0172" H 4950 7050 50  0001 C CNN
F 1 "GND" H 4955 7127 50  0001 C CNN
F 2 "" H 4950 7300 50  0000 C CNN
F 3 "" H 4950 7300 50  0000 C CNN
	1    4950 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0174
U 1 1 585E3030
P 5250 7300
F 0 "#PWR0174" H 5250 7050 50  0001 C CNN
F 1 "GND" H 5255 7127 50  0001 C CNN
F 2 "" H 5250 7300 50  0000 C CNN
F 3 "" H 5250 7300 50  0000 C CNN
	1    5250 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0176
U 1 1 585E3059
P 5550 7300
F 0 "#PWR0176" H 5550 7050 50  0001 C CNN
F 1 "GND" H 5555 7127 50  0001 C CNN
F 2 "" H 5550 7300 50  0000 C CNN
F 3 "" H 5550 7300 50  0000 C CNN
	1    5550 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0178
U 1 1 585E3089
P 5900 7300
F 0 "#PWR0178" H 5900 7050 50  0001 C CNN
F 1 "GND" H 5905 7127 50  0001 C CNN
F 2 "" H 5900 7300 50  0000 C CNN
F 3 "" H 5900 7300 50  0000 C CNN
	1    5900 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0180
U 1 1 585E30B6
P 6250 7300
F 0 "#PWR0180" H 6250 7050 50  0001 C CNN
F 1 "GND" H 6255 7127 50  0001 C CNN
F 2 "" H 6250 7300 50  0000 C CNN
F 3 "" H 6250 7300 50  0000 C CNN
	1    6250 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0165
U 1 1 585E3BDA
P 2700 7300
F 0 "#PWR0165" H 2700 7050 50  0001 C CNN
F 1 "GND" H 2705 7127 50  0001 C CNN
F 2 "" H 2700 7300 50  0000 C CNN
F 3 "" H 2700 7300 50  0000 C CNN
	1    2700 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:Ferrite_Bead_Small L3
U 1 1 585E3D32
P 2000 6450
F 0 "L3" V 2050 6550 50  0000 C CNN
F 1 "BLM21PG121SN1D" V 1854 6450 50  0001 C CNN
F 2 "Resistors_SMD:R_0805" H 2100 6359 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 2100 6359 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg121sn1d/ferryty-koraliki/murata/" H 2000 6450 60  0001 C CNN "Shop link"
F 5 "MURATA" V 2000 6450 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG121SN1D" V 2000 6450 50  0001 C CNN "Symbol"
	1    2000 6450
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0162
U 1 1 585E3EB4
P 2250 7300
F 0 "#PWR0162" H 2250 7050 50  0001 C CNN
F 1 "GND" H 2255 7127 50  0001 C CNN
F 2 "" H 2250 7300 50  0000 C CNN
F 3 "" H 2250 7300 50  0000 C CNN
	1    2250 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0159
U 1 1 585E40EA
P 1800 7300
F 0 "#PWR0159" H 1800 7050 50  0001 C CNN
F 1 "GND" H 1805 7127 50  0001 C CNN
F 2 "" H 1800 7300 50  0000 C CNN
F 3 "" H 1800 7300 50  0000 C CNN
	1    1800 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0158
U 1 1 585E45CE
P 1500 7300
F 0 "#PWR0158" H 1500 7050 50  0001 C CNN
F 1 "GND" H 1505 7127 50  0001 C CNN
F 2 "" H 1500 7300 50  0000 C CNN
F 3 "" H 1500 7300 50  0000 C CNN
	1    1500 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0157
U 1 1 585E465C
P 1200 7300
F 0 "#PWR0157" H 1200 7050 50  0001 C CNN
F 1 "GND" H 1205 7127 50  0001 C CNN
F 2 "" H 1200 7300 50  0000 C CNN
F 3 "" H 1200 7300 50  0000 C CNN
	1    1200 7300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0164
U 1 1 585EAE1C
P 2500 5600
F 0 "#PWR0164" H 2500 5350 50  0001 C CNN
F 1 "GND" H 2505 5427 50  0001 C CNN
F 2 "" H 2500 5600 50  0000 C CNN
F 3 "" H 2500 5600 50  0000 C CNN
	1    2500 5600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0163
U 1 1 585EB2E5
P 2500 4800
F 0 "#PWR0163" H 2500 4650 50  0001 C CNN
F 1 "+3V3" H 2515 4973 50  0000 C CNN
F 2 "" H 2500 4800 50  0000 C CNN
F 3 "" H 2500 4800 50  0000 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0167
U 1 1 585ECAE3
P 2950 5850
F 0 "#PWR0167" H 2950 5600 50  0001 C CNN
F 1 "GND" H 2955 5677 50  0001 C CNN
F 2 "" H 2950 5850 50  0000 C CNN
F 3 "" H 2950 5850 50  0000 C CNN
	1    2950 5850
	1    0    0    -1  
$EndComp
NoConn ~ 3050 5800
$Comp
L MuxPi:+3V3 #PWR0166
U 1 1 585ED000
P 2950 5050
F 0 "#PWR0166" H 2950 4900 50  0001 C CNN
F 1 "+3V3" H 2965 5223 50  0000 C CNN
F 2 "" H 2950 5050 50  0000 C CNN
F 3 "" H 2950 5050 50  0000 C CNN
	1    2950 5050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0156
U 1 1 585EE4B2
P 1200 6450
F 0 "#PWR0156" H 1200 6200 50  0001 C CNN
F 1 "GND" H 1200 6300 50  0000 C CNN
F 2 "" H 1200 6450 60  0000 C CNN
F 3 "" H 1200 6450 60  0000 C CNN
	1    1200 6450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C54
U 1 1 585EE4BF
P 1450 5850
F 0 "C54" V 1300 5800 50  0000 L CNN
F 1 "33pF/50V" V 1600 5700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1488 5700 30  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2340522.pdf" H 1450 5850 60  0001 C CNN
F 4 "https://pl.farnell.com/walsin/0805n330j500ct/cap-33pf-50v-5-c0g-np0-0805-reel/dp/2495530" V 1450 5850 60  0001 C CNN "Shop link"
	1    1450 5850
	0    1    1    0   
$EndComp
$Comp
L MuxPi:+3V3 #PWR0170
U 1 1 585F2991
P 4750 5050
F 0 "#PWR0170" H 4750 4900 50  0001 C CNN
F 1 "+3V3" H 4765 5223 50  0000 C CNN
F 2 "" H 4750 5050 50  0000 C CNN
F 3 "" H 4750 5050 50  0000 C CNN
	1    4750 5050
	1    0    0    -1  
$EndComp
NoConn ~ 4650 5300
NoConn ~ 4650 5800
$Comp
L MuxPi:GND #PWR0177
U 1 1 585F4A8F
P 5750 6100
F 0 "#PWR0177" H 5750 5850 50  0001 C CNN
F 1 "GND" H 5755 5927 50  0001 C CNN
F 2 "" H 5750 6100 50  0000 C CNN
F 3 "" H 5750 6100 50  0000 C CNN
	1    5750 6100
	1    0    0    -1  
$EndComp
NoConn ~ 5400 2450
NoConn ~ 5400 2550
NoConn ~ 5400 2650
NoConn ~ 5400 2750
NoConn ~ 5400 2850
NoConn ~ 5400 2950
NoConn ~ 5400 3050
NoConn ~ 5400 3150
NoConn ~ 5400 3250
NoConn ~ 5400 3350
NoConn ~ 5400 3450
NoConn ~ 5400 3550
NoConn ~ 5400 3650
$Comp
L MuxPi:+3V3 #PWR0169
U 1 1 585F7B8A
P 3300 1350
F 0 "#PWR0169" H 3300 1200 50  0001 C CNN
F 1 "+3V3" H 3315 1523 50  0000 C CNN
F 2 "" H 3300 1350 50  0000 C CNN
F 3 "" H 3300 1350 50  0000 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Text HLabel 2900 1750 0    60   Input ~ 0
USB_ETH+
Text HLabel 2900 1850 0    60   Input ~ 0
USB_ETH-
$Comp
L MuxPi:93AA56-OT U11
U 1 1 58616092
P 2450 2600
F 0 "U11" H 2450 3017 50  0000 C CNN
F 1 "93AA56AT-I/OT" H 2450 2926 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 2350 2600 50  0001 C CIN
F 3 "http://www.farnell.com/datasheets/1669363.pdf?_ga=1.23852537.291132730.1474618953" H 2350 2600 50  0001 C CNN
F 4 "http://pl.farnell.com/microchip/93aa56at-i-ot/serial-eeprom-2kbit-2mhz-sot-23/dp/1331419" H 2450 2600 60  0001 C CNN "Shop link"
F 5 "MICROCHIP" H 2450 2600 50  0001 C CNN "Manufacturer"
F 6 "93AA56AT-I/OT" H 2450 2600 50  0001 C CNN "Symbol"
F 7 "DNP" H 2450 2300 50  0000 C CIB "Assembly"
	1    2450 2600
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0161
U 1 1 58616FAD
P 1950 2850
F 0 "#PWR0161" H 1950 2600 50  0001 C CNN
F 1 "GND" H 1955 2677 50  0001 C CNN
F 2 "" H 1950 2850 50  0000 C CNN
F 3 "" H 1950 2850 50  0000 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0160
U 1 1 586183FC
P 1950 2350
F 0 "#PWR0160" H 1950 2200 50  0001 C CNN
F 1 "+3V3" H 1965 2523 50  0000 C CNN
F 2 "" H 1950 2350 50  0000 C CNN
F 3 "" H 1950 2350 50  0000 C CNN
	1    1950 2350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0155
U 1 1 5861902C
P 1150 2850
F 0 "#PWR0155" H 1150 2600 50  0001 C CNN
F 1 "GND" H 1155 2677 50  0001 C CNN
F 2 "" H 1150 2850 50  0000 C CNN
F 3 "" H 1150 2850 50  0000 C CNN
	1    1150 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0154
U 1 1 586191BC
P 1150 2450
F 0 "#PWR0154" H 1150 2300 50  0001 C CNN
F 1 "+3V3" H 1165 2623 50  0000 C CNN
F 2 "" H 1150 2450 50  0000 C CNN
F 3 "" H 1150 2450 50  0000 C CNN
	1    1150 2450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:RJ45-TRANSFO J3
U 1 1 58619F7B
P 9300 1900
F 0 "J3" H 9050 2615 50  0000 C CNN
F 1 "TJACKCFL8P8CSR06M1" H 9050 2524 50  0000 C CNN
F 2 "mux-footprints:RJ45_TRAFO_LEDS" H 9300 1900 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/41725/TJACKCFL8P8CSB06-MAG1_new.pdf" H 9050 2523 50  0001 C CNN
F 4 "https://www.maritex.com.pl/zlacza/zlacza_rj_modularne/zlacza_rj_1_x_port/zlacza_rj_gniazda_modularne_ekranowane_diody_led_transformator_separujacy/tjackcfl8p8csr06m1.html" H 9300 1900 60  0001 C CNN "Shop link"
F 5 "CZT" H 9300 1900 50  0001 C CNN "Manufacturer"
F 6 "JDFD10141104 TS-10014-11(6U)" H 9300 1900 50  0001 C CNN "Symbol"
	1    9300 1900
	1    0    0    -1  
$EndComp
NoConn ~ 5400 1950
$Comp
L MuxPi:+3V3 #PWR0183
U 1 1 5861DFF7
P 6850 2050
F 0 "#PWR0183" H 6850 1900 50  0001 C CNN
F 1 "+3V3" H 6865 2223 50  0000 C CNN
F 2 "" H 6850 2050 50  0000 C CNN
F 3 "" H 6850 2050 50  0000 C CNN
	1    6850 2050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0186
U 1 1 58621416
P 8100 2000
F 0 "#PWR0186" H 8100 1750 50  0001 C CNN
F 1 "GND" H 8105 1827 50  0001 C CNN
F 2 "" H 8100 2000 50  0000 C CNN
F 3 "" H 8100 2000 50  0000 C CNN
	1    8100 2000
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C69
U 1 1 5862388F
P 7800 2650
F 0 "C69" H 7900 2750 50  0000 L CNN
F 1 "22nF/50V" H 7900 2600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7838 2500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/b4dafe2be75e8e02f2f5bf31efbc9903/cc_x7r_yageo.pdf" H 7800 2650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805krx7r9223/kondensatory-mlcc-smd-0805/yageo/cc0805krx7r9bb223/" H 7800 2650 60  0001 C CNN "Shop link"
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0185
U 1 1 58623895
P 7800 2850
F 0 "#PWR0185" H 7800 2600 50  0001 C CNN
F 1 "GND" H 7805 2677 50  0001 C CNN
F 2 "" H 7800 2850 50  0000 C CNN
F 3 "" H 7800 2850 50  0000 C CNN
	1    7800 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3.3VA #PWR0179
U 1 1 58625178
P 5950 6400
F 0 "#PWR0179" H 5950 6250 50  0001 C CNN
F 1 "+3.3VA" H 5965 6573 50  0000 C CNN
F 2 "" H 5950 6400 50  0000 C CNN
F 3 "" H 5950 6400 50  0000 C CNN
	1    5950 6400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3.3VA #PWR0184
U 1 1 586254C0
P 7800 850
F 0 "#PWR0184" H 7800 700 50  0001 C CNN
F 1 "+3.3VA" H 7815 1023 50  0000 C CNN
F 2 "" H 7800 850 50  0000 C CNN
F 3 "" H 7800 850 50  0000 C CNN
	1    7800 850 
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R50
U 1 1 58628A1D
P 6550 1150
F 0 "R50" V 6550 1050 50  0000 L CNN
F 1 "49.9R 1%" V 6450 1000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6480 1150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 6550 1150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0749r9/rezystory-smd-0805/yageo/rc0805fr-0749r9l/" H 6550 1150 60  0001 C CNN "Shop link"
	1    6550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7300 3000 7250
Wire Wire Line
	3000 7250 3050 7250
Wire Wire Line
	4650 6450 4700 6450
Wire Wire Line
	4700 6450 4700 6650
Wire Wire Line
	4700 6750 4650 6750
Wire Wire Line
	4650 6650 4700 6650
Connection ~ 4700 6650
Wire Wire Line
	6500 6950 6250 6950
Wire Wire Line
	4700 6950 4700 7050
Wire Wire Line
	4700 7350 4650 7350
Wire Wire Line
	4650 7050 4700 7050
Connection ~ 4700 7050
Wire Wire Line
	4650 7150 4700 7150
Connection ~ 4700 7150
Wire Wire Line
	4650 7250 4700 7250
Connection ~ 4700 7250
Wire Wire Line
	3000 6800 3000 6900
Wire Wire Line
	3000 6900 3050 6900
Connection ~ 4700 6450
Connection ~ 4950 6450
Wire Wire Line
	4950 6500 4950 6450
Wire Wire Line
	5250 6500 5250 6450
Wire Wire Line
	5550 6500 5550 6450
Connection ~ 5250 6450
Connection ~ 5550 6450
Wire Wire Line
	6350 6450 6500 6450
Wire Wire Line
	6500 6150 6500 6450
Connection ~ 6500 6450
Connection ~ 4700 6950
Wire Wire Line
	4950 7000 4950 6950
Wire Wire Line
	5250 7000 5250 6950
Wire Wire Line
	5550 7000 5550 6950
Wire Wire Line
	5900 7000 5900 6950
Wire Wire Line
	6250 7000 6250 6950
Connection ~ 4950 6950
Connection ~ 5250 6950
Connection ~ 5550 6950
Connection ~ 5900 6950
Connection ~ 6250 6950
Wire Wire Line
	2550 6550 2700 6550
Connection ~ 3000 6800
Wire Wire Line
	2700 6900 2700 6550
Connection ~ 2700 6550
Wire Wire Line
	2700 7200 2700 7300
Wire Wire Line
	2100 6450 2250 6450
Wire Wire Line
	2250 6900 2250 6450
Wire Wire Line
	2250 7200 2250 7300
Connection ~ 2250 6450
Wire Wire Line
	2350 6550 1800 6550
Wire Wire Line
	1800 6450 1800 6550
Wire Wire Line
	1800 6450 1900 6450
Connection ~ 1800 6550
Wire Wire Line
	1800 7200 1800 7300
Connection ~ 1800 6800
Wire Wire Line
	1500 7200 1500 7300
Wire Wire Line
	1500 6900 1500 6800
Wire Wire Line
	1200 7200 1200 7300
Wire Wire Line
	1200 6900 1200 6800
Connection ~ 1500 6800
Wire Wire Line
	1200 6800 1500 6800
Wire Wire Line
	2500 5550 2500 5600
Wire Wire Line
	2500 5150 2500 5200
Wire Wire Line
	2500 4800 2500 4850
Wire Wire Line
	3050 5200 2500 5200
Connection ~ 2500 5200
Wire Wire Line
	3050 5350 2950 5350
Wire Wire Line
	2950 5350 2950 5050
Wire Wire Line
	2950 5450 2950 5550
Wire Wire Line
	2950 5450 3050 5450
Wire Wire Line
	3050 5550 2950 5550
Connection ~ 2950 5550
Wire Wire Line
	3050 5700 2950 5700
Connection ~ 2950 5700
Wire Wire Line
	1200 6350 1300 6350
Wire Wire Line
	1200 5850 1300 5850
Wire Wire Line
	1600 5850 1900 5850
Wire Wire Line
	1600 6350 1900 6350
Wire Wire Line
	1900 5950 1900 5850
Connection ~ 1900 5850
Wire Wire Line
	1900 6250 1900 6350
Connection ~ 1900 6350
Wire Wire Line
	3050 6050 2200 6050
Wire Wire Line
	2200 6050 2200 5850
Wire Wire Line
	3050 6150 2200 6150
Wire Wire Line
	2200 6150 2200 6350
Wire Wire Line
	1200 5850 1200 6100
Connection ~ 1200 6350
Wire Wire Line
	4750 5050 4750 5200
Wire Wire Line
	4750 5600 4650 5600
Wire Wire Line
	4650 5200 4750 5200
Connection ~ 4750 5200
Wire Wire Line
	4650 5400 4750 5400
Connection ~ 4750 5400
Wire Wire Line
	4650 5500 4750 5500
Connection ~ 4750 5500
Wire Wire Line
	4650 5950 4800 5950
Wire Wire Line
	4650 6050 5100 6050
Wire Wire Line
	5100 5950 5750 5950
Wire Wire Line
	5750 5950 5750 6050
Wire Wire Line
	5750 6050 5400 6050
Connection ~ 5750 6050
Wire Wire Line
	3300 1350 3300 1550
Wire Wire Line
	3300 1550 3400 1550
Wire Wire Line
	3400 1750 2900 1750
Wire Wire Line
	3400 1850 2900 1850
Wire Wire Line
	2000 2550 1850 2550
Wire Wire Line
	1850 2550 1850 3000
Wire Wire Line
	1850 3000 3300 3000
Wire Wire Line
	3300 3000 3300 2750
Wire Wire Line
	3300 2750 3400 2750
Wire Wire Line
	1950 2850 1950 2800
Wire Wire Line
	1950 2800 2000 2800
Wire Wire Line
	2900 2600 3100 2600
Wire Wire Line
	3100 2600 3100 2450
Wire Wire Line
	3100 2450 3400 2450
Wire Wire Line
	2900 2750 3200 2750
Wire Wire Line
	3200 2750 3200 2550
Wire Wire Line
	3200 2550 3400 2550
Wire Wire Line
	2900 2450 3000 2450
Wire Wire Line
	3000 2450 3000 2650
Wire Wire Line
	3000 2650 3400 2650
Wire Wire Line
	1950 2350 1950 2450
Wire Wire Line
	1950 2450 2000 2450
Wire Wire Line
	1150 2800 1150 2850
Wire Wire Line
	1150 2450 1150 2500
Wire Wire Line
	5400 2050 5950 2050
Wire Wire Line
	5950 2050 5950 2200
Wire Wire Line
	5400 2150 5850 2150
Wire Wire Line
	5850 2150 5850 2400
Wire Wire Line
	5850 2400 8200 2400
Wire Wire Line
	7250 2100 8200 2100
Wire Wire Line
	7250 2300 8200 2300
Wire Wire Line
	6850 2300 6950 2300
Wire Wire Line
	6850 2050 6850 2100
Wire Wire Line
	6850 2100 6950 2100
Connection ~ 6850 2100
Wire Wire Line
	5400 1450 6550 1450
Wire Wire Line
	7450 1450 7450 1400
Wire Wire Line
	7450 1400 8200 1400
Wire Wire Line
	5400 1550 6750 1550
Wire Wire Line
	7450 1550 7450 1600
Wire Wire Line
	7450 1600 8200 1600
Wire Wire Line
	5400 1700 6950 1700
Wire Wire Line
	5400 1800 7150 1800
Wire Wire Line
	7450 1800 7450 1900
Wire Wire Line
	7450 1900 8200 1900
Wire Wire Line
	8200 2000 8100 2000
Wire Wire Line
	7800 850  7800 1500
Wire Wire Line
	7800 2800 7800 2850
Wire Wire Line
	7800 1500 8200 1500
Wire Wire Line
	8200 1800 7800 1800
Connection ~ 7800 1800
Connection ~ 7800 1500
Wire Wire Line
	5950 6400 5950 6450
Connection ~ 5950 6450
Wire Wire Line
	7150 1300 7150 1800
Connection ~ 7150 1800
Wire Wire Line
	6950 1300 6950 1700
Connection ~ 6950 1700
Wire Wire Line
	6750 1300 6750 1550
Connection ~ 6750 1550
Wire Wire Line
	6550 1300 6550 1450
Connection ~ 6550 1450
Wire Wire Line
	6550 1000 6550 900 
Wire Wire Line
	6550 900  6750 900 
Wire Wire Line
	7150 900  7150 1000
$Comp
L MuxPi:+3.3VA #PWR0182
U 1 1 586290B1
P 6850 850
F 0 "#PWR0182" H 6850 700 50  0001 C CNN
F 1 "+3.3VA" H 6865 1023 50  0000 C CNN
F 2 "" H 6850 850 50  0000 C CNN
F 3 "" H 6850 850 50  0000 C CNN
	1    6850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 900  6750 1000
Connection ~ 6750 900 
Wire Wire Line
	6950 900  6950 1000
Connection ~ 6950 900 
Wire Wire Line
	6850 850  6850 900 
Connection ~ 6850 900 
Wire Wire Line
	5950 2200 8200 2200
$Comp
L MuxPi:GND #PWR0187
U 1 1 5862A3D5
P 9950 3100
F 0 "#PWR0187" H 9950 2850 50  0001 C CNN
F 1 "GND" H 9955 2927 50  0001 C CNN
F 2 "" H 9950 3100 50  0000 C CNN
F 3 "" H 9950 3100 50  0000 C CNN
	1    9950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3050 10100 3000
Wire Wire Line
	9800 3000 9800 3050
Wire Wire Line
	9800 3050 9950 3050
Wire Wire Line
	9950 3100 9950 3050
Connection ~ 9950 3050
Wire Wire Line
	9800 2700 9800 2650
Wire Wire Line
	9800 2650 9950 2650
Wire Wire Line
	10100 2650 10100 2700
Wire Wire Line
	9900 2300 9950 2300
Wire Wire Line
	9950 2300 9950 2650
Connection ~ 9950 2650
$Comp
L MuxPi:C C53
U 1 1 5851AD78
P 1200 7050
F 0 "C53" H 1250 7200 50  0000 L CNN
F 1 "1uF/16V" V 1050 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1238 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/32984189c4d768a78678b27c1f034139/C0805C105Z4VACTU.pdf" H 1200 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/c0805c105z4vac/kondensatory-mlcc-smd-0805/kemet/c0805c105z4vactu/" H 1200 7050 60  0001 C CNN "Shop link"
	1    1200 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C52
U 1 1 5851D96A
P 1150 2650
F 0 "C52" H 1000 2800 50  0000 L CNN
F 1 "100nF/50V" H 950 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1188 2500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1150 2650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1150 2650 60  0001 C CNN "Shop link"
	1    1150 2650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C70
U 1 1 5851DC56
P 10100 2850
F 0 "C70" H 10150 3000 50  0000 L CNN
F 1 "100nF/50V" H 10150 2650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10138 2700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 10100 2850 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 10100 2850 60  0001 C CNN "Shop link"
	1    10100 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C59
U 1 1 5851E77A
P 2500 5400
F 0 "C59" H 2350 5550 50  0000 L CNN
F 1 "100nF/50V" H 2300 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2538 5250 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2500 5400 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2500 5400 60  0001 C CNN "Shop link"
	1    2500 5400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C56
U 1 1 5851EFF6
P 1500 7050
F 0 "C56" H 1550 7200 50  0000 L CNN
F 1 "100nF/50V" H 1300 7350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1538 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1500 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1500 7050 60  0001 C CNN "Shop link"
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C57
U 1 1 5851F7CD
P 1800 7050
F 0 "C57" H 1850 7200 50  0000 L CNN
F 1 "100nF/50V" H 1600 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1838 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1800 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1800 7050 60  0001 C CNN "Shop link"
	1    1800 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C58
U 1 1 5851FE3F
P 2250 7050
F 0 "C58" H 2300 7200 50  0000 L CNN
F 1 "100nF/50V" H 2050 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2288 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2250 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2250 7050 60  0001 C CNN "Shop link"
	1    2250 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C60
U 1 1 585204F8
P 2700 7050
F 0 "C60" H 2750 7200 50  0000 L CNN
F 1 "100nF/50V" H 2500 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2738 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2700 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2700 7050 60  0001 C CNN "Shop link"
	1    2700 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C62
U 1 1 58521D09
P 4950 7150
F 0 "C62" H 4900 6850 50  0000 L CNN
F 1 "100nF/50V" V 4800 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4988 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4950 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4950 7150 60  0001 C CNN "Shop link"
	1    4950 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C64
U 1 1 58521E86
P 5250 7150
F 0 "C64" H 5200 6850 50  0000 L CNN
F 1 "100nF/50V" V 5100 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5288 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5250 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5250 7150 60  0001 C CNN "Shop link"
	1    5250 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C66
U 1 1 5852200E
P 5550 7150
F 0 "C66" H 5500 6850 50  0000 L CNN
F 1 "100nF/50V" V 5400 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5588 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5550 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5550 7150 60  0001 C CNN "Shop link"
	1    5550 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C67
U 1 1 5852208B
P 5900 7150
F 0 "C67" H 5850 6850 50  0000 L CNN
F 1 "100nF/50V" V 5750 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5938 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5900 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5900 7150 60  0001 C CNN "Shop link"
	1    5900 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C68
U 1 1 5852210D
P 6250 7150
F 0 "C68" H 6200 6850 50  0000 L CNN
F 1 "100nF/50V" V 6100 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 6288 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 6250 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 6250 7150 60  0001 C CNN "Shop link"
	1    6250 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C61
U 1 1 58522796
P 4950 6650
F 0 "C61" H 4900 6950 50  0000 L CNN
F 1 "100nF/50V" V 4800 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4988 6500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4950 6650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4950 6650 60  0001 C CNN "Shop link"
	1    4950 6650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C63
U 1 1 58522828
P 5250 6650
F 0 "C63" H 5200 6950 50  0000 L CNN
F 1 "100nF/50V" V 5100 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5288 6500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5250 6650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5250 6650 60  0001 C CNN "Shop link"
	1    5250 6650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C65
U 1 1 585229E5
P 5550 6650
F 0 "C65" H 5500 6950 50  0000 L CNN
F 1 "100nF/50V" V 5400 6400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5588 6500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5550 6650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5550 6650 60  0001 C CNN "Shop link"
	1    5550 6650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R48
U 1 1 5852CA93
P 4950 5950
F 0 "R48" V 4850 5900 50  0000 C CNN
F 1 "12k 1%" V 4850 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4880 5950 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4950 5950 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0712k/rezystory-smd-0805/yageo/rc0805fr-0712kl/" V 4950 5950 60  0001 C CNN "Shop link"
	1    4950 5950
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R49
U 1 1 5852CBA3
P 5250 6050
F 0 "R49" V 5350 6000 50  0000 C CNN
F 1 "12k 1%" V 5350 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5180 6050 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 5250 6050 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0712k/rezystory-smd-0805/yageo/rc0805fr-0712kl/" V 5250 6050 60  0001 C CNN "Shop link"
	1    5250 6050
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R47
U 1 1 5852DF3C
P 2500 5000
F 0 "R47" H 2650 5100 50  0000 C CNN
F 1 "10K" H 2650 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2430 5000 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 2500 5000 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 2500 5000 60  0001 C CNN "Shop link"
	1    2500 5000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R56
U 1 1 58533746
P 9800 2850
F 0 "R56" H 9600 2900 50  0000 L CNN
F 1 "10K" H 9500 2800 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 9730 2850 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 9800 2850 50  0001 C CNN
	1    9800 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R53
U 1 1 585344B5
P 7100 2100
F 0 "R53" V 7000 2050 50  0000 L CNN
F 1 "560R" V 7050 2250 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7030 2100 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7100 2100 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-07560r/rezystory-smd-0805/yageo/rc0805jr-07560rl/" V 7100 2100 60  0001 C CNN "Shop link"
	1    7100 2100
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R54
U 1 1 58534829
P 7100 2300
F 0 "R54" V 7250 2250 50  0000 L CNN
F 1 "560R" V 7050 2450 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7030 2300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7100 2300 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-07560r/rezystory-smd-0805/yageo/rc0805jr-07560rl/" V 7100 2300 60  0001 C CNN "Shop link"
	1    7100 2300
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R51
U 1 1 58536803
P 6750 1150
F 0 "R51" V 6750 1050 50  0000 L CNN
F 1 "49.9R 1%" V 6650 1000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6680 1150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 6750 1150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0749r9/rezystory-smd-0805/yageo/rc0805fr-0749r9l/" H 6750 1150 60  0001 C CNN "Shop link"
	1    6750 1150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R52
U 1 1 58537CDA
P 6950 1150
F 0 "R52" V 6950 1050 50  0000 L CNN
F 1 "49.9R 1%" V 6850 1000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6880 1150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 6950 1150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0749r9/rezystory-smd-0805/yageo/rc0805fr-0749r9l/" H 6950 1150 60  0001 C CNN "Shop link"
	1    6950 1150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R55
U 1 1 58537D5C
P 7150 1150
F 0 "R55" V 7150 1050 50  0000 L CNN
F 1 "49.9R 1%" V 7050 1000 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 7080 1150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7150 1150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0749r9/rezystory-smd-0805/yageo/rc0805fr-0749r9l/" H 7150 1150 60  0001 C CNN "Shop link"
	1    7150 1150
	1    0    0    -1  
$EndComp
Text Label 5550 1450 0    60   ~ 0
TX+
Text Label 5550 1550 0    60   ~ 0
TX-
Text Label 5550 1700 0    60   ~ 0
RX+
Text Label 5550 1800 0    60   ~ 0
RX-
NoConn ~ 4650 6550
Wire Wire Line
	4700 6650 4700 6750
Wire Wire Line
	4700 7050 4700 7150
Wire Wire Line
	4700 7150 4700 7250
Wire Wire Line
	4700 7250 4700 7350
Wire Wire Line
	4700 6450 4950 6450
Wire Wire Line
	4950 6450 5250 6450
Wire Wire Line
	5250 6450 5550 6450
Wire Wire Line
	5550 6450 5950 6450
Wire Wire Line
	6500 6450 6500 6950
Wire Wire Line
	4700 6950 4650 6950
Wire Wire Line
	4950 6950 4700 6950
Wire Wire Line
	5250 6950 4950 6950
Wire Wire Line
	5550 6950 5250 6950
Wire Wire Line
	5900 6950 5550 6950
Wire Wire Line
	6250 6950 5900 6950
Wire Wire Line
	3000 6800 3050 6800
Wire Wire Line
	2700 6550 3050 6550
Wire Wire Line
	2250 6450 3050 6450
Wire Wire Line
	1800 6550 1800 6800
Wire Wire Line
	1800 6800 3000 6800
Wire Wire Line
	1800 6800 1800 6900
Wire Wire Line
	1500 6800 1800 6800
Wire Wire Line
	2500 5200 2500 5250
Wire Wire Line
	2950 5550 2950 5700
Wire Wire Line
	2950 5700 2950 5850
Wire Wire Line
	1900 5850 2200 5850
Wire Wire Line
	1900 6350 2200 6350
Wire Wire Line
	1200 6350 1200 6450
Wire Wire Line
	4750 5200 4750 5400
Wire Wire Line
	4750 5400 4750 5500
Wire Wire Line
	4750 5500 4750 5600
Wire Wire Line
	5750 6050 5750 6100
Wire Wire Line
	6850 2100 6850 2300
Wire Wire Line
	7800 1800 7800 2500
Wire Wire Line
	7800 1500 7800 1800
Wire Wire Line
	5950 6450 6150 6450
Wire Wire Line
	7150 1800 7450 1800
Wire Wire Line
	6950 1700 8200 1700
Wire Wire Line
	6750 1550 7450 1550
Wire Wire Line
	6550 1450 7450 1450
Wire Wire Line
	6750 900  6850 900 
Wire Wire Line
	6950 900  7150 900 
Wire Wire Line
	6850 900  6950 900 
Wire Wire Line
	9950 3050 10100 3050
Wire Wire Line
	9950 2650 10100 2650
$Comp
L MuxPi:Ferrite_Bead_Small L4
U 1 1 5A8E75C9
P 2450 6550
F 0 "L4" V 2500 6650 50  0000 C CNN
F 1 "BLM21PG121SN1D" V 2304 6550 50  0001 C CNN
F 2 "Resistors_SMD:R_0805" H 2550 6459 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 2550 6459 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg121sn1d/ferryty-koraliki/murata/" H 2450 6550 60  0001 C CNN "Shop link"
F 5 "MURATA" V 2450 6550 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG121SN1D" V 2450 6550 50  0001 C CNN "Symbol"
	1    2450 6550
	0    1    1    0   
$EndComp
$Comp
L MuxPi:Ferrite_Bead_Small L5
U 1 1 5A8E7FF7
P 6250 6450
F 0 "L5" V 6300 6550 50  0000 C CNN
F 1 "BLM21PG121SN1D" V 6104 6450 50  0001 C CNN
F 2 "Resistors_SMD:R_0805" H 6350 6359 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 6350 6359 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg121sn1d/ferryty-koraliki/murata/" H 6250 6450 60  0001 C CNN "Shop link"
F 5 "MURATA" V 6250 6450 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG121SN1D" V 6250 6450 50  0001 C CNN "Symbol"
	1    6250 6450
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C55
U 1 1 5BEDDA2A
P 1450 6350
F 0 "C55" V 1300 6300 50  0000 L CNN
F 1 "33pF/50V" V 1600 6200 50  0000 L CNN
F 2 "MuxPi:C_0805" H 1488 6200 30  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2340522.pdf" H 1450 6350 60  0001 C CNN
F 4 "https://pl.farnell.com/walsin/0805n330j500ct/cap-33pf-50v-5-c0g-np0-0805-reel/dp/2495530" V 1450 6350 60  0001 C CNN "Shop link"
	1    1450 6350
	0    1    1    0   
$EndComp
$Comp
L Device:Crystal_GND24 Y?
U 1 1 5BF5EFA3
P 1900 6100
AR Path="/584D6534/5BF5EFA3" Ref="Y?"  Part="1" 
AR Path="/584BEF7D/5BF5EFA3" Ref="Y3"  Part="1" 
F 0 "Y3" V 1700 6150 50  0000 L CNN
F 1 "25.00M-CFPX218" V 1300 5600 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_2520-4Pin_2.5x2.0mm" H 1900 6100 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/43d4b8b2418f10b1847f5f6593a9a63f/cfpx-218.pdf" H 1900 6100 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/25.00m-cfpx218/rezonatory-kwarcowe-smd/iqd-frequency-products/lfxtal053108bulk/" H 1900 6100 50  0001 C CNN "Shop link"
F 5 "IQD FREQUENCY PRODUCTS" H 1900 6100 50  0001 C CNN "Manufacturer"
F 6 "LFXTAL053108BULK" H 1900 6100 50  0001 C CNN "Symbol"
	1    1900 6100
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0203
U 1 1 5BF680BA
P 2350 6250
F 0 "#PWR0203" H 2350 6000 50  0001 C CNN
F 1 "GND" H 2355 6077 50  0001 C CNN
F 2 "" H 2350 6250 50  0000 C CNN
F 3 "" H 2350 6250 50  0000 C CNN
	1    2350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6250 2350 6100
Wire Wire Line
	2350 6100 2100 6100
Wire Wire Line
	1700 6100 1200 6100
Wire Wire Line
	1200 6100 1200 6350
Connection ~ 1200 6100
$EndSCHEMATC
