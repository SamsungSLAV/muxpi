EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 12
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
L MuxPi:GND #PWR0138
U 1 1 58414478
P 10500 2600
F 0 "#PWR0138" H 10500 2350 50  0001 C CNN
F 1 "GND" H 10500 2450 50  0000 C CNN
F 2 "" H 10500 2600 60  0000 C CNN
F 3 "" H 10500 2600 60  0000 C CNN
	1    10500 2600
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0134
U 1 1 5841447E
P 10000 1950
F 0 "#PWR0134" H 10000 1700 50  0001 C CNN
F 1 "GND" H 10000 1800 50  0000 C CNN
F 2 "" H 10000 1950 60  0000 C CNN
F 3 "" H 10000 1950 60  0000 C CNN
	1    10000 1950
	-1   0    0    -1  
$EndComp
Text Label 9450 1700 0    60   ~ 0
USB_A-
Text Label 9450 1800 0    60   ~ 0
USB_A+
Text Label 9450 1300 0    60   ~ 0
USB_B-
Text Label 9450 1400 0    60   ~ 0
USB_B+
$Comp
L MuxPi:USB2640 U9
U 1 1 584B758E
P 5500 2400
F 0 "U9" H 5675 3815 50  0000 C CNN
F 1 "USB2640-HZH-02" H 5675 3724 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-48-1EP_7x7mm_Pitch0.5mm" H 7450 2500 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2138035.pdf?_ga=1.187806955.291132730.1474618953" H 7450 2500 50  0001 C CNN
F 4 "http://pl.farnell.com/microchip/usb2640-hzh-02/ic-usb-2-flash-media-cntrl-48vqfn/dp/2292611" H 5500 2400 60  0001 C CNN "Shop link"
F 5 "USB2640-HZH-02" H 5500 2400 50  0001 C CNN "Symbol"
F 6 "MICROCHIP" H 5500 2400 50  0001 C CNN "Manufacturer"
	1    5500 2400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:USB2640 U9
U 2 1 584B769C
P 3300 5950
F 0 "U9" H 3300 7065 50  0000 C CNN
F 1 "USB2640-HZH-02" H 3300 6974 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-48-1EP_7x7mm_Pitch0.5mm" H 5250 6050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2138035.pdf?_ga=1.187806955.291132730.1474618953" H 5250 6050 50  0001 C CNN
F 4 "http://pl.farnell.com/microchip/usb2640-hzh-02/ic-usb-2-flash-media-cntrl-48vqfn/dp/2292611" H 3300 5950 60  0001 C CNN "Shop link"
F 5 "MICROCHIP" H 3300 5950 50  0001 C CNN "Manufacturer"
F 6 "USB2640-HZH-02" H 3300 5950 50  0001 C CNN "Symbol"
	2    3300 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0122
U 1 1 584B85A4
P 1350 6900
F 0 "#PWR0122" H 1350 6650 50  0001 C CNN
F 1 "GND" H 1350 6750 50  0000 C CNN
F 2 "" H 1350 6900 60  0000 C CNN
F 3 "" H 1350 6900 60  0000 C CNN
	1    1350 6900
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:C C43
U 1 1 584BB25A
P 5650 7050
F 0 "C43" H 5500 7200 50  0000 L CNN
F 1 "1uF/16V" V 5800 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5688 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/32984189c4d768a78678b27c1f034139/C0805C105Z4VACTU.pdf" H 5650 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/c0805c105z4vac/kondensatory-mlcc-smd-0805/kemet/c0805c105z4vactu/" H 5650 7050 60  0001 C CNN "Shop link"
	1    5650 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0132
U 1 1 584BBA39
P 5650 7300
F 0 "#PWR0132" H 5650 7050 50  0001 C CNN
F 1 "GND" H 5650 7150 50  0000 C CNN
F 2 "" H 5650 7300 60  0000 C CNN
F 3 "" H 5650 7300 60  0000 C CNN
	1    5650 7300
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0130
U 1 1 584BBDD9
P 5350 6550
F 0 "#PWR0130" H 5350 6300 50  0001 C CNN
F 1 "GND" H 5350 6400 50  0000 C CNN
F 2 "" H 5350 6550 60  0000 C CNN
F 3 "" H 5350 6550 60  0000 C CNN
	1    5350 6550
	-1   0    0    -1  
$EndComp
Text Label 7250 1850 2    60   ~ 0
USB_A-
Text Label 7250 1750 2    60   ~ 0
USB_A+
Text Label 7250 1500 2    60   ~ 0
USB_B-
Text Label 7250 1400 2    60   ~ 0
USB_B+
Text HLabel 4200 1550 0    60   Input ~ 0
USB_HUB+
Text HLabel 4200 1650 0    60   Input ~ 0
USB_HUB-
$Comp
L MuxPi:AT24CS02-SSHM IC1
U 1 1 584C8113
P 3650 3600
F 0 "IC1" H 3500 3850 50  0000 C CNN
F 1 "AT24C02D-SSHM-T" H 4000 3300 50  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 3800 3300 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/9ec5256b58bf67caf05d35a0814832e6/AT24C01D-MAHM-T.pdf" H 3650 3600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/at24c02d-sshm-t/pamieci-eeprom-szeregowe/atmel/" H 3650 3600 60  0001 C CNN "Shop link"
F 5 "MICROCHIP (ATMEL)" H 3650 3600 50  0001 C CNN "Manufacturer"
F 6 "AT24C02D-SSHM-T" H 3650 3600 50  0001 C CNN "Symbol"
	1    3650 3600
	1    0    0    -1  
$EndComp
NoConn ~ 4700 3850
NoConn ~ 4700 3950
$Comp
L MuxPi:+3V3 #PWR0125
U 1 1 584C9432
P 3650 3000
F 0 "#PWR0125" H 3650 2850 50  0001 C CNN
F 1 "+3V3" H 3665 3173 50  0000 C CNN
F 2 "" H 3650 3000 50  0000 C CNN
F 3 "" H 3650 3000 50  0000 C CNN
	1    3650 3000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0126
U 1 1 584C9957
P 3650 4050
F 0 "#PWR0126" H 3650 3800 50  0001 C CNN
F 1 "GND" H 3650 3900 50  0000 C CNN
F 2 "" H 3650 4050 60  0000 C CNN
F 3 "" H 3650 4050 60  0000 C CNN
	1    3650 4050
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0137
U 1 1 584CB3F1
P 10250 6150
F 0 "#PWR0137" H 10250 5900 50  0001 C CNN
F 1 "GND" H 10250 6000 50  0000 C CNN
F 2 "" H 10250 6150 60  0000 C CNN
F 3 "" H 10250 6150 60  0000 C CNN
	1    10250 6150
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0136
U 1 1 584CB465
P 10250 5750
F 0 "#PWR0136" H 10250 5600 50  0001 C CNN
F 1 "+3V3" H 10265 5923 50  0000 C CNN
F 2 "" H 10250 5750 50  0000 C CNN
F 3 "" H 10250 5750 50  0000 C CNN
	1    10250 5750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0123
U 1 1 584547BE
P 1700 4800
F 0 "#PWR0123" H 1700 4650 50  0001 C CNN
F 1 "+3V3" H 1715 4973 50  0000 C CNN
F 2 "" H 1700 4800 50  0000 C CNN
F 3 "" H 1700 4800 50  0000 C CNN
	1    1700 4800
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R39
U 1 1 58455443
P 2300 5750
F 0 "R39" V 2200 5700 50  0000 C CNN
F 1 "12k 1%" V 2400 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2230 5750 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 2300 5750 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805fr-0712k/rezystory-smd-0805/yageo/rc0805fr-0712kl/" V 2300 5750 60  0001 C CNN "Shop link"
	1    2300 5750
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0124
U 1 1 584557A1
P 2100 5800
F 0 "#PWR0124" H 2100 5550 50  0001 C CNN
F 1 "GND" H 2100 5650 50  0000 C CNN
F 2 "" H 2100 5800 60  0000 C CNN
F 3 "" H 2100 5800 60  0000 C CNN
	1    2100 5800
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:Crystal Y2
U 1 1 584578D0
P 1750 5550
F 0 "Y2" V 1600 5450 50  0000 C CNN
F 1 "LF XTAL012504 - 24MHz" V 1350 5800 50  0000 C CNN
F 2 "Crystals:Q_49U3HMS" H 1750 5550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/fd32e3a1954dc23b6c626158f627af96/hc49_4hsmx.pdf" H 1750 5550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/24.00m-smdhc49r/rezonatory-kwarcowe-smd/iqd-frequency-products/lf-xtal012504/" V 1750 5550 60  0001 C CNN "Shop link"
F 5 "IQD FREQUENCY PRODUCTS" V 1750 5550 50  0001 C CNN "Manufacturer"
F 6 "LF XTAL012504" V 1750 5550 50  0001 C CNN "Symbol"
	1    1750 5550
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0121
U 1 1 584578D7
P 850 5900
F 0 "#PWR0121" H 850 5650 50  0001 C CNN
F 1 "GND" H 850 5750 50  0000 C CNN
F 2 "" H 850 5900 60  0000 C CNN
F 3 "" H 850 5900 60  0000 C CNN
	1    850  5900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C29
U 1 1 584578EA
P 1100 5300
F 0 "C29" V 950 5250 50  0000 L CNN
F 1 "33p/50V" V 1250 5150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1138 5150 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1100 5300 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21c330jbannnd/kondensatory-mlcc-smd-0805/samsung/" V 1100 5300 60  0001 C CNN "Shop link"
	1    1100 5300
	0    1    1    0   
$EndComp
$Comp
L MuxPi:+3V3 #PWR0131
U 1 1 584676C6
P 5650 6750
F 0 "#PWR0131" H 5650 6600 50  0001 C CNN
F 1 "+3V3" H 5665 6923 50  0000 C CNN
F 2 "" H 5650 6750 50  0000 C CNN
F 3 "" H 5650 6750 50  0000 C CNN
	1    5650 6750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR0129
U 1 1 5846B688
P 5350 5750
F 0 "#PWR0129" H 5350 5600 50  0001 C CNN
F 1 "+3V3" H 5365 5923 50  0000 C CNN
F 2 "" H 5350 5750 50  0000 C CNN
F 3 "" H 5350 5750 50  0000 C CNN
	1    5350 5750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:Ferrite_Bead_Small L1
U 1 1 58470C8E
P 4400 5200
F 0 "L1" V 4163 5200 50  0000 C CNN
F 1 "BLM21PG221SN1D" V 4254 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4500 5109 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 4500 5109 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg221sn1d/ferryty-koraliki/murata/" H 4400 5200 60  0001 C CNN "Shop link"
F 5 "MURATA" V 4400 5200 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG221SN1D" V 4400 5200 50  0001 C CNN "Symbol"
	1    4400 5200
	0    1    1    0   
$EndComp
Text HLabel 5500 5200 2    60   Input ~ 0
SD_PWR_TS
$Comp
L MuxPi:R R42
U 1 1 58477E8D
P 5000 5350
F 0 "R42" V 5100 5350 50  0000 L CNN
F 1 "330R" V 5100 5100 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4930 5350 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 5000 5350 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 5000 5350 60  0001 C CNN "Shop link"
	1    5000 5350
	0    -1   -1   0   
$EndComp
NoConn ~ 4100 5450
$Comp
L MuxPi:GND #PWR0128
U 1 1 5847BF30
P 5250 5350
F 0 "#PWR0128" H 5250 5100 50  0001 C CNN
F 1 "GND" H 5250 5200 50  0000 C CNN
F 2 "" H 5250 5350 60  0000 C CNN
F 3 "" H 5250 5350 60  0000 C CNN
	1    5250 5350
	0    -1   1    0   
$EndComp
Wire Wire Line
	9450 1800 10100 1800
Wire Wire Line
	9450 1700 10100 1700
Wire Wire Line
	10400 2500 10400 2550
Wire Wire Line
	10400 2550 10500 2550
Wire Wire Line
	10600 2550 10600 2500
Wire Wire Line
	10400 2200 10400 2150
Wire Wire Line
	10400 2150 10500 2150
Wire Wire Line
	10600 2150 10600 2200
Wire Wire Line
	10500 2100 10500 2150
Connection ~ 10500 2150
Wire Wire Line
	10500 2550 10500 2600
Connection ~ 10500 2550
Wire Wire Line
	9450 1400 10100 1400
Wire Wire Line
	9450 1300 10100 1300
Wire Wire Line
	1350 6850 1700 6850
Wire Wire Line
	2000 6400 2000 6450
Wire Wire Line
	2350 6400 2350 6450
Connection ~ 2350 6400
Wire Wire Line
	2000 6750 2000 6850
Wire Wire Line
	2350 6750 2350 6850
Connection ~ 2350 6850
Connection ~ 2000 6850
Wire Wire Line
	1350 6750 1350 6850
Wire Wire Line
	1700 6750 1700 6850
Connection ~ 1700 6850
Connection ~ 1350 6850
Wire Wire Line
	1350 6450 1350 6050
Wire Wire Line
	1350 6050 1700 6050
Wire Wire Line
	1700 6450 1700 6050
Connection ~ 1700 6050
Wire Wire Line
	2000 6400 2350 6400
Wire Wire Line
	4100 6850 4150 6850
Wire Wire Line
	4150 6550 4150 6650
Wire Wire Line
	4150 6550 4100 6550
Wire Wire Line
	4100 6650 4150 6650
Connection ~ 4150 6650
Wire Wire Line
	4100 6750 4150 6750
Connection ~ 4150 6750
Wire Wire Line
	4150 6250 4100 6250
Wire Wire Line
	4150 6050 4150 6150
Wire Wire Line
	4100 6050 4150 6050
Wire Wire Line
	4100 6150 4150 6150
Connection ~ 4150 6150
Wire Wire Line
	5350 6000 5350 6050
Connection ~ 4150 6050
Wire Wire Line
	5050 6150 5050 6050
Connection ~ 5050 6050
Wire Wire Line
	4750 6150 4750 6050
Connection ~ 4750 6050
Wire Wire Line
	4450 6150 4450 6050
Connection ~ 4450 6050
Wire Wire Line
	4450 6450 4450 6500
Wire Wire Line
	4450 6500 4750 6500
Wire Wire Line
	5350 6450 5350 6500
Wire Wire Line
	5050 6450 5050 6500
Connection ~ 5050 6500
Wire Wire Line
	4750 6450 4750 6500
Connection ~ 4750 6500
Wire Wire Line
	5350 6850 5350 6900
Connection ~ 4150 6850
Wire Wire Line
	5050 6900 5050 6850
Connection ~ 5050 6850
Wire Wire Line
	4750 6900 4750 6850
Connection ~ 4750 6850
Wire Wire Line
	4450 6900 4450 6850
Connection ~ 4450 6850
Wire Wire Line
	5650 6750 5650 6850
Connection ~ 5350 6850
Wire Wire Line
	4450 7200 4450 7250
Wire Wire Line
	4450 7250 4750 7250
Wire Wire Line
	5650 7200 5650 7250
Wire Wire Line
	5350 7200 5350 7250
Connection ~ 5350 7250
Wire Wire Line
	5050 7200 5050 7250
Connection ~ 5050 7250
Wire Wire Line
	4750 7200 4750 7250
Connection ~ 4750 7250
Connection ~ 5650 7250
Connection ~ 5350 6500
Wire Wire Line
	6650 1750 7450 1750
Wire Wire Line
	6650 1850 7450 1850
Wire Wire Line
	6650 1400 7450 1400
Wire Wire Line
	6650 1500 7450 1500
Wire Wire Line
	4200 1550 4700 1550
Wire Wire Line
	4200 1650 4700 1650
Wire Wire Line
	4050 3650 4350 3650
Wire Wire Line
	4050 3500 4100 3500
Wire Wire Line
	4600 3500 4600 3750
Wire Wire Line
	4600 3750 4700 3750
Wire Wire Line
	3650 3000 3650 3050
Wire Wire Line
	3650 4000 3650 4050
Wire Wire Line
	3250 3450 3200 3450
Wire Wire Line
	3200 3450 3200 3550
Wire Wire Line
	3200 4000 3650 4000
Wire Wire Line
	3250 3550 3200 3550
Connection ~ 3200 3550
Wire Wire Line
	3250 3650 3200 3650
Connection ~ 3200 3650
Wire Wire Line
	3250 3800 3200 3800
Connection ~ 3200 3800
Wire Wire Line
	4100 3400 4100 3500
Connection ~ 4100 3500
Wire Wire Line
	4350 3400 4350 3650
Connection ~ 4350 3650
Wire Wire Line
	4350 3050 4350 3100
Wire Wire Line
	3650 3050 4100 3050
Connection ~ 3650 3050
Wire Wire Line
	4100 3100 4100 3050
Connection ~ 4100 3050
Wire Wire Line
	10250 6100 10250 6150
Wire Wire Line
	10250 5750 10250 5800
Wire Wire Line
	2100 5350 2500 5350
Wire Wire Line
	1700 4800 1700 4900
Wire Wire Line
	1250 4900 1300 4900
Wire Wire Line
	850  4900 950  4900
Wire Wire Line
	1300 4900 1300 5200
Connection ~ 1300 4900
Wire Wire Line
	2450 5750 2500 5750
Wire Wire Line
	2150 5750 2100 5750
Wire Wire Line
	2100 5350 2100 5750
Wire Wire Line
	850  5800 950  5800
Wire Wire Line
	850  5300 950  5300
Wire Wire Line
	1250 5300 1450 5300
Wire Wire Line
	1250 5800 1450 5800
Wire Wire Line
	1750 5400 1750 5300
Connection ~ 1750 5300
Wire Wire Line
	1750 5700 1750 5800
Connection ~ 1750 5800
Wire Wire Line
	2500 5500 1950 5500
Wire Wire Line
	1950 5500 1950 5300
Wire Wire Line
	2500 5600 1950 5600
Wire Wire Line
	1950 5600 1950 5800
Wire Wire Line
	850  4900 850  5300
Connection ~ 850  5800
Connection ~ 2100 5750
Connection ~ 850  5300
Wire Wire Line
	1700 4900 1650 4900
Wire Wire Line
	1300 5200 2500 5200
Connection ~ 5650 6850
Connection ~ 5350 6050
Wire Wire Line
	5350 5800 5350 5750
Wire Wire Line
	4100 5200 4300 5200
Wire Wire Line
	4500 5200 5500 5200
Wire Wire Line
	4100 5350 4450 5350
Wire Wire Line
	4750 5350 4850 5350
Wire Wire Line
	5250 5350 5150 5350
$Comp
L MuxPi:+3V3 #PWR0127
U 1 1 58483160
P 4650 1100
F 0 "#PWR0127" H 4650 950 50  0001 C CNN
F 1 "+3V3" H 4665 1273 50  0000 C CNN
F 2 "" H 4650 1100 50  0000 C CNN
F 3 "" H 4650 1100 50  0000 C CNN
	1    4650 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1100 4650 1300
Wire Wire Line
	4650 1300 4700 1300
NoConn ~ 6650 1300
NoConn ~ 6650 1650
Wire Wire Line
	6950 2450 6650 2450
Wire Wire Line
	6950 2350 6650 2350
Wire Wire Line
	6950 3400 6650 3400
Wire Wire Line
	6950 3100 6650 3100
Wire Wire Line
	6950 2750 6650 2750
Wire Wire Line
	6950 2650 6650 2650
$Comp
L MuxPi:GND #PWR0133
U 1 1 5849368D
P 6750 4050
F 0 "#PWR0133" H 6750 3800 50  0001 C CNN
F 1 "GND" H 6750 3900 50  0000 C CNN
F 2 "" H 6750 4050 60  0000 C CNN
F 3 "" H 6750 4050 60  0000 C CNN
	1    6750 4050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 4050 6750 2550
Wire Wire Line
	6750 2550 6650 2550
Wire Wire Line
	6650 3950 6950 3950
NoConn ~ 6650 2150
NoConn ~ 6650 2250
NoConn ~ 6650 2850
NoConn ~ 6650 3000
NoConn ~ 6650 3200
NoConn ~ 6650 3300
NoConn ~ 6650 3500
NoConn ~ 6650 3650
NoConn ~ 6650 3750
NoConn ~ 6650 3850
Text HLabel 6950 2350 2    60   Input ~ 0
SD_DAT0_TS
Text HLabel 6950 2450 2    60   Input ~ 0
SD_DAT1_TS
Text HLabel 6950 2650 2    60   Input ~ 0
SD_DAT2_TS
Text HLabel 6950 2750 2    60   Input ~ 0
SD_DAT3_TS
Text HLabel 6950 3100 2    60   Input ~ 0
SD_CMD_TS
Text HLabel 6950 3400 2    60   Input ~ 0
SD_CLK_TS
Text HLabel 6950 3950 2    60   Input ~ 0
~SD_CD_TS
Text HLabel 7450 1750 2    60   Input ~ 0
USB_A+
Text HLabel 7450 1850 2    60   Input ~ 0
USB_A-
Text HLabel 7450 1400 2    60   Input ~ 0
USB_B+
Text HLabel 7450 1500 2    60   Input ~ 0
USB_B-
$Comp
L MuxPi:+5V #PWR0135
U 1 1 584A7FE8
P 10050 1150
F 0 "#PWR0135" H 10050 1000 50  0001 C CNN
F 1 "+5V" H 10065 1323 50  0000 C CNN
F 2 "" H 10050 1150 50  0000 C CNN
F 3 "" H 10050 1150 50  0000 C CNN
	1    10050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1150 10050 1200
Wire Wire Line
	10050 1200 10100 1200
$Comp
L MuxPi:USB_A_2x P17
U 1 1 584C2EF6
P 10400 1400
F 0 "P17" V 10580 1588 50  0000 L CNN
F 1 "USBA-2G" V 10671 1588 50  0000 L CNN
F 2 "mux-footprints:conn_usb_Ax2" V 10350 1300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7923e8726ae07a0825304f6fd9a186c2/usba-2g.pdf" V 10350 1300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/usba-2g/zlacza-usb-i-ieee1394/ninigi/" V 10400 1400 60  0001 C CNN "Shop link"
F 5 "CONNFLY" V 10400 1400 50  0001 C CNN "Manufacturer"
F 6 "DS1096-BN0" V 10400 1400 50  0001 C CNN "Symbol"
	1    10400 1400
	0    1    1    0   
$EndComp
Connection ~ 10050 1200
Wire Wire Line
	10000 1500 10000 1900
Wire Wire Line
	10000 1500 10100 1500
Wire Wire Line
	10100 1900 10000 1900
Connection ~ 10000 1900
$Comp
L MuxPi:LED_ALT D6
U 1 1 5850A058
P 4600 5350
F 0 "D6" H 4638 5232 50  0000 R CNN
F 1 "OSB50805C1E (BLUE)" H 4950 5450 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 4600 5350 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6f99baddc8b38eb1a865ea6b78250b2b/OSXX0805C1E-DTE.pdf" H 4600 5350 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/osb50805c1e/diody-led-smd-kolorowe/optosupply/" V 4600 5350 60  0001 C CNN "Shop link"
F 5 "OPTOSUPPLY" H 4600 5350 50  0001 C CNN "Manufacturer"
F 6 "OSB50805C1E" H 4600 5350 50  0001 C CNN "Symbol"
	1    4600 5350
	-1   0    0    1   
$EndComp
$Comp
L MuxPi:C C28
U 1 1 58513637
P 1100 4900
F 0 "C28" V 1150 4700 50  0000 L CNN
F 1 "100nF/50V" V 950 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1138 4750 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1100 4900 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1100 4900 60  0001 C CNN "Shop link"
	1    1100 4900
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C34
U 1 1 58514526
P 2350 6600
F 0 "C34" H 2200 6750 50  0000 L CNN
F 1 "100nF/50V" H 2150 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2388 6450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2350 6600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2350 6600 60  0001 C CNN "Shop link"
	1    2350 6600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C30
U 1 1 58517B53
P 1100 5800
F 0 "C30" V 950 5750 50  0000 L CNN
F 1 "33p/50V" V 1250 5650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1138 5650 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1100 5800 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21c330jbannnd/kondensatory-mlcc-smd-0805/samsung/" V 1100 5800 60  0001 C CNN "Shop link"
	1    1100 5800
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C32
U 1 1 58519EF6
P 1700 6600
F 0 "C32" H 1550 6750 50  0000 L CNN
F 1 "100nF/50V" H 1500 6250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1738 6450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1700 6600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1700 6600 60  0001 C CNN "Shop link"
	1    1700 6600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C42
U 1 1 5851B40E
P 5350 7050
F 0 "C42" H 5200 7200 50  0000 L CNN
F 1 "100nF/50V" H 5150 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5350 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5350 7050 60  0001 C CNN "Shop link"
	1    5350 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C40
U 1 1 5851B4EB
P 5050 7050
F 0 "C40" H 4900 7200 50  0000 L CNN
F 1 "100nF/50V" H 4850 7350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5088 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5050 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5050 7050 60  0001 C CNN "Shop link"
	1    5050 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C38
U 1 1 5851B569
P 4750 7050
F 0 "C38" H 4600 7200 50  0000 L CNN
F 1 "100nF/50V" H 4550 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4788 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4750 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4750 7050 60  0001 C CNN "Shop link"
	1    4750 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C36
U 1 1 5851B5E6
P 4450 7050
F 0 "C36" H 4300 7200 50  0000 L CNN
F 1 "100nF/50V" H 4250 7350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4488 6900 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4450 7050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4450 7050 60  0001 C CNN "Shop link"
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C39
U 1 1 5851C920
P 5050 6300
F 0 "C39" H 4900 6450 50  0000 L CNN
F 1 "100nF/50V" H 4850 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5088 6150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 5050 6300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 5050 6300 60  0001 C CNN "Shop link"
	1    5050 6300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C35
U 1 1 5851D2DC
P 4450 6300
F 0 "C35" H 4300 6450 50  0000 L CNN
F 1 "100nF/50V" H 4250 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4488 6150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4450 6300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4450 6300 60  0001 C CNN "Shop link"
	1    4450 6300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C37
U 1 1 5851DB46
P 4750 6300
F 0 "C37" H 4600 6450 50  0000 L CNN
F 1 "100nF/50V" H 4550 6000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4788 6150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 4750 6300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 4750 6300 60  0001 C CNN "Shop link"
	1    4750 6300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C44
U 1 1 5851F254
P 10250 5950
F 0 "C44" H 10100 6100 50  0000 L CNN
F 1 "100nF/50V" V 10400 5750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10288 5800 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 10250 5950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 10250 5950 60  0001 C CNN "Shop link"
	1    10250 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C45
U 1 1 58520500
P 10400 2350
F 0 "C45" H 10250 2500 50  0000 L CNN
F 1 "100nF/50V" V 10200 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10438 2200 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 10400 2350 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 10400 2350 60  0001 C CNN "Shop link"
	1    10400 2350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C41
U 1 1 58521FBC
P 5350 6300
F 0 "C41" H 5200 6450 50  0000 L CNN
F 1 "1uF/16V" V 5500 6150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 5388 6150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/32984189c4d768a78678b27c1f034139/C0805C105Z4VACTU.pdf" H 5350 6300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/c0805c105z4vac/kondensatory-mlcc-smd-0805/kemet/c0805c105z4vactu/" H 5350 6300 60  0001 C CNN "Shop link"
	1    5350 6300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C33
U 1 1 585228C3
P 2000 6600
F 0 "C33" H 1850 6750 50  0000 L CNN
F 1 "1uF/16V" H 1850 6900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2038 6450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/32984189c4d768a78678b27c1f034139/C0805C105Z4VACTU.pdf" H 2000 6600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/c0805c105z4vac/kondensatory-mlcc-smd-0805/kemet/c0805c105z4vactu/" H 2000 6600 60  0001 C CNN "Shop link"
	1    2000 6600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C31
U 1 1 58522A34
P 1350 6600
F 0 "C31" H 1400 6750 50  0000 L CNN
F 1 "1uF/16V" V 1200 6450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 1388 6450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/32984189c4d768a78678b27c1f034139/C0805C105Z4VACTU.pdf" H 1350 6600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/c0805c105z4vac/kondensatory-mlcc-smd-0805/kemet/c0805c105z4vactu/" H 1350 6600 60  0001 C CNN "Shop link"
	1    1350 6600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R38
U 1 1 58524E25
P 1500 4900
F 0 "R38" V 1400 4900 50  0000 C CNN
F 1 "100K" V 1600 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1430 4900 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 1500 4900 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07100k/rezystory-smd-0805/yageo/rc0805jr-07100kl/" V 1500 4900 60  0001 C CNN "Shop link"
	1    1500 4900
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R40
U 1 1 58526C6C
P 4100 3250
F 0 "R40" H 4100 3550 50  0000 C CNN
F 1 "10K" V 4200 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4030 3250 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4100 3250 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4100 3250 60  0001 C CNN "Shop link"
	1    4100 3250
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R41
U 1 1 58526D8E
P 4350 3250
F 0 "R41" H 4350 3550 50  0000 C CNN
F 1 "10K" V 4450 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4280 3250 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 4350 3250 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 4350 3250 60  0001 C CNN "Shop link"
	1    4350 3250
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R43
U 1 1 58507178
P 10600 2350
F 0 "R43" H 10650 2450 50  0000 L CNN
F 1 "330R" H 10650 2350 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10530 2350 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 10600 2350 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 10600 2350 60  0001 C CNN "Shop link"
	1    10600 2350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R37
U 1 1 58525399
P 1450 5550
F 0 "R37" H 1350 5600 50  0000 C CNN
F 1 "1M" H 1350 5700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 5550 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/393e95a6d9f61f4002588a56cd2a1091/rezystor-smd.pdf" H 1450 5550 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-1m/rezystory-smd-0805/royal-ohm/0805s8j0105t5e/" V 1450 5550 60  0001 C CNN "Shop link"
	1    1450 5550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 5400 1450 5300
Connection ~ 1450 5300
Wire Wire Line
	1450 5700 1450 5800
Connection ~ 1450 5800
Wire Wire Line
	10050 1600 10100 1600
Wire Wire Line
	10500 2150 10600 2150
Wire Wire Line
	10500 2550 10600 2550
Wire Wire Line
	2350 6400 2500 6400
Wire Wire Line
	2350 6850 2500 6850
Wire Wire Line
	2000 6850 2350 6850
Wire Wire Line
	1700 6850 2000 6850
Wire Wire Line
	1350 6850 1350 6900
Wire Wire Line
	1700 6050 2500 6050
Wire Wire Line
	4150 6650 4150 6750
Wire Wire Line
	4150 6750 4150 6850
Wire Wire Line
	4150 6150 4150 6250
Wire Wire Line
	4150 6050 4450 6050
Wire Wire Line
	5050 6050 5350 6050
Wire Wire Line
	4750 6050 5050 6050
Wire Wire Line
	4450 6050 4750 6050
Wire Wire Line
	5050 6500 5350 6500
Wire Wire Line
	4750 6500 5050 6500
Wire Wire Line
	4150 6850 4450 6850
Wire Wire Line
	5050 6850 5350 6850
Wire Wire Line
	4750 6850 5050 6850
Wire Wire Line
	4450 6850 4750 6850
Wire Wire Line
	5350 6850 5650 6850
Wire Wire Line
	5350 7250 5650 7250
Wire Wire Line
	5050 7250 5350 7250
Wire Wire Line
	4750 7250 5050 7250
Wire Wire Line
	5650 7250 5650 7300
Wire Wire Line
	5350 6500 5350 6550
Wire Wire Line
	3200 3550 3200 3650
Wire Wire Line
	3200 3650 3200 3800
Wire Wire Line
	3200 3800 3200 4000
Wire Wire Line
	4100 3500 4600 3500
Wire Wire Line
	4350 3650 4700 3650
Wire Wire Line
	3650 3050 3650 3250
Wire Wire Line
	4100 3050 4350 3050
Wire Wire Line
	1300 4900 1350 4900
Wire Wire Line
	1750 5300 1950 5300
Wire Wire Line
	1750 5800 1950 5800
Wire Wire Line
	850  5800 850  5900
Wire Wire Line
	2100 5750 2100 5800
Wire Wire Line
	850  5300 850  5800
Wire Wire Line
	5650 6850 5650 6900
Wire Wire Line
	5350 6050 5350 6150
Wire Wire Line
	10050 1200 10050 1600
Wire Wire Line
	10000 1900 10000 1950
Wire Wire Line
	1450 5300 1750 5300
Wire Wire Line
	1450 5800 1750 5800
$Comp
L MuxPi:Ferrite_Bead_Small L2
U 1 1 5A8DBC88
P 5350 5900
F 0 "L2" H 5450 6000 50  0000 C CNN
F 1 "BLM21PG221SN1D" H 5750 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 5450 5809 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 5450 5809 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg221sn1d/ferryty-koraliki/murata/" H 5350 5900 60  0001 C CNN "Shop link"
F 5 "MURATA" V 5350 5900 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG221SN1D" V 5350 5900 50  0001 C CNN "Symbol"
	1    5350 5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
