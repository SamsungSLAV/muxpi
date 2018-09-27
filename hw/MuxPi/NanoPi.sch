EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 12
Title "MuxPi"
Date "2018-04-20"
Rev "1.2"
Comp "SRPOL"
Comment1 "Author: Adam Malinowski <a.malinowsk2@partner.samsung.com>"
Comment2 "Copyright (c) 2016 - 2018 Samsung Electronics Co., Ltd All Rights Reserved"
Comment3 ""
Comment4 ""
$EndDescr
Text Label 5900 2100 2    60   ~ 0
PI_UART2_RX
Text Label 3800 1600 0    60   ~ 0
PI_UART2_TX
$Comp
L MuxPi:CONN_01X12 P11
U 1 1 583C5F7B
P 1550 1650
F 0 "P11" H 1500 2300 50  0000 L CNN
F 1 "ZL262-20SG" H 1628 1600 50  0000 L CNN
F 2 "mux-footprints:pin_strip_2.54_s_1x12" H 1550 1650 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/efd0203e2d3a140765df98191085ea88/DS1023.pdf" H 1550 1650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl262-20sg/listwy-i-gniazda-kolkowe/connfly/ds1023-1_20s21/" H 1550 1650 60  0001 C CNN "Shop link"
F 5 "CONNFLY" H 1550 1650 50  0001 C CNN "Manufacturer"
F 6 "DS1023-1*20S21" H 1550 1650 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/zl2019-20/listwy-i-gniazda-kolkowe/ninigi/" H 1550 1650 60  0001 C CNN "Complementary device"
F 8 " ZL2019-20" H 1550 1650 50  0001 C CNN "Complementary symbol"
F 9 "NINIGI" H 1550 1650 50  0001 C CNN "Complementary manufacturer"
	1    1550 1650
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_02X12 P14
U 1 1 583C5FD5
P 4850 1650
F 0 "P14" H 4850 2300 50  0000 C CNN
F 1 "ZL262-26DG" H 4850 2324 50  0001 C CNN
F 2 "mux-footprints:pin_strip_2.54_s_2x12" H 4850 450 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/fb0b27a6ecd737255724d32410c10738/zl262-dg.pdf" H 4850 450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl262-26dg/listwy-i-gniazda-kolkowe/connfly/ds1023-2_13s21/" H 4850 1650 60  0001 C CNN "Shop link"
F 5 "CONNFLY" H 4850 1650 50  0001 C CNN "Manufacturer"
F 6 "DS1023-2*13S21" H 4850 1650 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/zl2019-2x20/listwy-i-gniazda-kolkowe/ninigi/zl2019-40/" H 4850 1650 60  0001 C CNN "Complementary device"
F 8 "NINIGI" H 4850 1650 50  0001 C CNN "Complementary manufacturer"
F 9 "ZL2019-40" H 4850 1650 50  0001 C CNN "Complememntary symbol"
	1    4850 1650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0108
U 1 1 583D0704
P 4500 2250
F 0 "#PWR0108" H 4500 2000 50  0001 C CNN
F 1 "GND" H 4500 2100 50  0000 C CNN
F 2 "" H 4500 2250 60  0000 C CNN
F 3 "" H 4500 2250 60  0000 C CNN
	1    4500 2250
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0112
U 1 1 583D1034
P 5200 2250
F 0 "#PWR0112" H 5200 2000 50  0001 C CNN
F 1 "GND" H 5200 2100 50  0000 C CNN
F 2 "" H 5200 2250 60  0000 C CNN
F 3 "" H 5200 2250 60  0000 C CNN
	1    5200 2250
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0109
U 1 1 583D142A
P 4500 5750
F 0 "#PWR0109" H 4500 5600 50  0001 C CNN
F 1 "+5V" H 4515 5923 50  0000 C CNN
F 2 "" H 4500 5750 50  0000 C CNN
F 3 "" H 4500 5750 50  0000 C CNN
	1    4500 5750
	1    0    0    -1  
$EndComp
Text Label 5900 1500 2    60   ~ 0
PI_UART1_RX
Text Label 5900 1400 2    60   ~ 0
PI_UART1_TX
NoConn ~ 4600 1100
NoConn ~ 4600 1900
Text Label 5900 1600 2    60   ~ 0
STATUS_LED1
Text Label 8200 1350 0    60   ~ 0
PI_UART1_RTS
Text Label 8200 1150 0    60   ~ 0
PI_UART1_CTS
Text Label 8200 1900 0    60   ~ 0
PI_UART2_RX
Text Label 8200 1700 0    60   ~ 0
PI_UART2_TX
$Comp
L MuxPi:GND #PWR0120
U 1 1 583D72BC
P 10150 3600
F 0 "#PWR0120" H 10150 3350 50  0001 C CNN
F 1 "GND" H 10150 3450 50  0000 C CNN
F 2 "" H 10150 3600 60  0000 C CNN
F 3 "" H 10150 3600 60  0000 C CNN
	1    10150 3600
	-1   0    0    -1  
$EndComp
Text Label 9250 3400 0    60   ~ 0
STATUS_LED2
Text Label 3800 1700 0    60   ~ 0
STATUS_LED2
$Comp
L MuxPi:GND #PWR0115
U 1 1 583D87EF
P 8600 3600
F 0 "#PWR0115" H 8600 3350 50  0001 C CNN
F 1 "GND" H 8600 3450 50  0000 C CNN
F 2 "" H 8600 3600 60  0000 C CNN
F 3 "" H 8600 3600 60  0000 C CNN
	1    8600 3600
	-1   0    0    -1  
$EndComp
Text Label 7700 3400 0    60   ~ 0
STATUS_LED1
$Comp
L MuxPi:R R28
U 1 1 583D9607
P 8600 2600
F 0 "R28" H 8670 2646 50  0000 L CNN
F 1 "560R" H 8670 2555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 8530 2600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d26ab61589ff927fb609b6d6433d4ffa/rezystor-smd.pdf" H 8600 2600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 8600 2600 60  0001 C CNN "Shop link"
	1    8600 2600
	1    0    0    -1  
$EndComp
Text Label 5900 2200 2    60   ~ 0
SPI0_CS
Text Label 3800 2200 0    60   ~ 0
SPI0_CLK
Text Label 3800 2100 0    60   ~ 0
SPI0_MISO
Text Label 3800 2000 0    60   ~ 0
SPI0_MOSI
Text Label 3800 1200 0    60   ~ 0
I2C0_SDA
Text Label 3800 1300 0    60   ~ 0
I2C0_SCL
Wire Wire Line
	5900 2100 5100 2100
Wire Wire Line
	3800 1600 4600 1600
Wire Wire Line
	4500 2250 4500 1500
Wire Wire Line
	4500 1500 4600 1500
Wire Wire Line
	5100 1300 5200 1300
Wire Wire Line
	5200 1300 5200 1700
Wire Wire Line
	5100 1700 5200 1700
Connection ~ 5200 1700
Wire Wire Line
	5200 800  5200 1100
Wire Wire Line
	5200 1200 5100 1200
Wire Wire Line
	5100 1100 5200 1100
Connection ~ 5200 1100
Wire Wire Line
	5900 1500 5100 1500
Wire Wire Line
	5900 1400 5100 1400
Wire Wire Line
	5100 2000 5200 2000
Connection ~ 5200 2000
Wire Wire Line
	5100 1600 5900 1600
Wire Wire Line
	9000 1350 8200 1350
Wire Wire Line
	9650 1350 9300 1350
Wire Wire Line
	9000 1150 8200 1150
Wire Wire Line
	9650 1150 9300 1150
Wire Wire Line
	9000 1900 8200 1900
Wire Wire Line
	9650 1900 9300 1900
Wire Wire Line
	9000 1700 8200 1700
Wire Wire Line
	9650 1700 9300 1700
Wire Wire Line
	10150 3550 10150 3600
Wire Wire Line
	10150 2750 10150 2800
Wire Wire Line
	10150 3100 10150 3150
Wire Wire Line
	9850 3400 9250 3400
Wire Wire Line
	4600 1700 3800 1700
Wire Wire Line
	8600 3550 8600 3600
Wire Wire Line
	8600 2750 8600 2800
Wire Wire Line
	8600 3100 8600 3150
Wire Wire Line
	8300 3400 7700 3400
Wire Wire Line
	4600 1800 3800 1800
Wire Wire Line
	8600 2400 8600 2450
Wire Wire Line
	10150 2400 10150 2450
Wire Wire Line
	5100 2200 5900 2200
Wire Wire Line
	4600 2200 3800 2200
Wire Wire Line
	4600 2100 3800 2100
Wire Wire Line
	4600 2000 3800 2000
Wire Wire Line
	4600 1200 3800 1200
Wire Wire Line
	4600 1300 3800 1300
$Comp
L MuxPi:GND #PWR099
U 1 1 5840AA17
P 1850 2250
F 0 "#PWR099" H 1850 2000 50  0001 C CNN
F 1 "GND" H 1850 2100 50  0000 C CNN
F 2 "" H 1850 2250 60  0000 C CNN
F 3 "" H 1850 2250 60  0000 C CNN
	1    1850 2250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 2200 1850 2200
Wire Wire Line
	1850 2200 1850 2250
NoConn ~ 1750 2100
NoConn ~ 1750 2000
NoConn ~ 1750 1900
NoConn ~ 1750 1800
Wire Wire Line
	1750 1200 2350 1200
Wire Wire Line
	1750 1300 2350 1300
Wire Wire Line
	2350 1400 1750 1400
Wire Wire Line
	2350 1500 1750 1500
Text HLabel 2350 1500 2    60   Input ~ 0
USB_HUB-
Text HLabel 2350 1400 2    60   Input ~ 0
USB_HUB+
$Comp
L MuxPi:GND #PWR0102
U 1 1 584230A5
P 2200 4900
F 0 "#PWR0102" H 2200 4650 50  0001 C CNN
F 1 "GND" H 2200 4750 50  0000 C CNN
F 2 "" H 2200 4900 60  0000 C CNN
F 3 "" H 2200 4900 60  0000 C CNN
	1    2200 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2200 4750 2250 4750
$Comp
L MuxPi:+5V #PWR0101
U 1 1 58424945
P 2200 4100
F 0 "#PWR0101" H 2200 3950 50  0001 C CNN
F 1 "+5V" H 2215 4273 50  0000 C CNN
F 2 "" H 2200 4100 50  0000 C CNN
F 3 "" H 2200 4100 50  0000 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4100 2200 4150
Wire Wire Line
	2200 4150 2250 4150
$Comp
L MuxPi:VDD #PWR0103
U 1 1 584251E5
P 2800 4100
F 0 "#PWR0103" H 2800 3950 50  0001 C CNN
F 1 "VDD" H 2817 4273 50  0000 C CNN
F 2 "" H 2800 4100 50  0000 C CNN
F 3 "" H 2800 4100 50  0000 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR107
U 1 1 584252DF
P 3000 4100
AR Path="/584252DF" Ref="#PWR107"  Part="1" 
AR Path="/584D6079/584252DF" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3000 3950 50  0001 C CNN
F 1 "+3V3" H 3015 4273 50  0000 C CNN
F 2 "" H 3000 4100 50  0000 C CNN
F 3 "" H 3000 4100 50  0000 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4650 2100 4650
Wire Wire Line
	2750 4650 2900 4650
Wire Wire Line
	2250 4550 2100 4550
Wire Wire Line
	2750 4550 2900 4550
Text Label 1600 4350 0    60   ~ 0
I2C0_SDA
Text Label 3400 4350 2    60   ~ 0
I2C0_SCL
Wire Wire Line
	2250 4350 1600 4350
Wire Wire Line
	2750 4350 3400 4350
Text Label 4200 4150 0    60   ~ 0
SPI0_CLK
Text Label 5700 4250 2    60   ~ 0
SPI0_MISO
Text Label 5700 4150 2    60   ~ 0
SPI0_MOSI
Wire Wire Line
	4700 4150 4200 4150
Wire Wire Line
	5200 4250 5700 4250
Wire Wire Line
	5200 4150 5700 4150
Text Label 4200 4250 0    60   ~ 0
SPI0_CS
Wire Wire Line
	4700 4250 4200 4250
$Comp
L MuxPi:CONN_01X04 P12
U 1 1 5842EF3E
P 1550 2950
F 0 "P12" H 1628 2991 50  0000 L CNN
F 1 "ZL201-04G" H 1628 2900 50  0000 L CNN
F 2 "mux-footprints:pin_strip_2.54_s_1x4" H 1550 2950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cc301e58a5da78cb543a94b5a5b7f06a/DS1021.pdf" H 1550 2950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl262-4sg/listwy-i-gniazda-kolkowe/connfly/ds1023-1_4s21/" H 1550 2950 50  0001 C CNN "Shop link"
F 5 "CONNFLY" H 1550 2950 50  0001 C CNN "Manufacturer"
F 6 "DS1023-1*4S21" H 1550 2950 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/zl201-04g/listwy-i-gniazda-kolkowe/connfly/ds1021-1_4sf1-1/" H 1550 2950 60  0001 C CNN "Complementary shop link"
F 8 "CONNFLY" H 1550 2950 50  0001 C CNN "Complementary manufacturer"
F 9 "DS1021-1*4SF1-1" H 1550 2950 50  0001 C CNN "Complementary symbol"
	1    1550 2950
	-1   0    0    -1  
$EndComp
NoConn ~ 1750 2900
$Comp
L MuxPi:GND #PWR0100
U 1 1 5842F3AD
P 1850 3200
F 0 "#PWR0100" H 1850 2950 50  0001 C CNN
F 1 "GND" H 1850 3050 50  0000 C CNN
F 2 "" H 1850 3200 60  0000 C CNN
F 3 "" H 1850 3200 60  0000 C CNN
	1    1850 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 2800 1850 2800
Wire Wire Line
	1850 2800 1850 3200
Text Label 2550 3000 2    60   ~ 0
PI_UART0_TX
Wire Wire Line
	2550 3000 1750 3000
Text Label 2550 3100 2    60   ~ 0
PI_UART0_RX
Wire Wire Line
	2550 3100 1750 3100
Text Label 1600 4450 0    60   ~ 0
PI_UART0_TX
Wire Wire Line
	1600 4450 2250 4450
Text Label 3400 4450 2    60   ~ 0
PI_UART0_RX
Wire Wire Line
	3400 4450 2750 4450
Wire Wire Line
	2750 4150 2800 4150
Wire Wire Line
	2800 4150 2800 4100
Wire Wire Line
	3000 4100 3000 4250
Wire Wire Line
	3000 4250 2750 4250
$Comp
L MuxPi:GND #PWR0106
U 1 1 584312CA
P 2900 4800
F 0 "#PWR0106" H 2900 4550 50  0001 C CNN
F 1 "GND" H 2900 4650 50  0000 C CNN
F 2 "" H 2900 4800 60  0000 C CNN
F 3 "" H 2900 4800 60  0000 C CNN
	1    2900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4800 2900 4750
Wire Wire Line
	2900 4750 2750 4750
$Comp
L MuxPi:GND #PWR0111
U 1 1 58438977
P 4600 4900
F 0 "#PWR0111" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4600 4750 50  0000 C CNN
F 2 "" H 4600 4900 60  0000 C CNN
F 3 "" H 4600 4900 60  0000 C CNN
	1    4600 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 4750 4600 4850
Wire Wire Line
	4600 4750 4700 4750
$Comp
L MuxPi:GND #PWR0113
U 1 1 584389AD
P 5300 4900
F 0 "#PWR0113" H 5300 4650 50  0001 C CNN
F 1 "GND" H 5300 4750 50  0000 C CNN
F 2 "" H 5300 4900 60  0000 C CNN
F 3 "" H 5300 4900 60  0000 C CNN
	1    5300 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4750 5300 4850
Wire Wire Line
	5300 4750 5200 4750
Wire Wire Line
	4600 1400 3800 1400
Text Label 3800 1400 0    60   ~ 0
PI_GPIO_1
Text Label 8200 950  0    60   ~ 0
PI_UART1_RX
$Comp
L MuxPi:R R29
U 1 1 5843B39E
P 9150 750
F 0 "R29" V 9250 700 50  0000 C CNN
F 1 "120R" V 9200 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 750 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 750 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 750 60  0001 C CNN "Shop link"
	1    9150 750 
	0    1    -1   0   
$EndComp
Text Label 8200 750  0    60   ~ 0
PI_UART1_TX
Wire Wire Line
	9000 950  8200 950 
Wire Wire Line
	9650 950  9300 950 
Wire Wire Line
	9000 750  8200 750 
Wire Wire Line
	9650 750  9300 750 
Text Label 5900 1800 2    60   ~ 0
PI_UART1_RTS
Wire Wire Line
	5100 1800 5900 1800
Text Label 5900 1900 2    60   ~ 0
PI_UART1_CTS
Wire Wire Line
	5100 1900 5900 1900
Wire Wire Line
	1750 1600 2350 1600
Text Label 2350 1600 2    60   ~ 0
PI_GPIO_2
Wire Wire Line
	1750 1700 2350 1700
Text Label 2350 1700 2    60   ~ 0
PI_GPIO_3
Wire Wire Line
	5200 4350 5700 4350
Text Label 5700 4350 2    60   ~ 0
PI_GPIO_2
Wire Wire Line
	4700 4450 4200 4450
Text Label 4200 4450 0    60   ~ 0
PI_GPIO_3
Wire Wire Line
	4700 4350 4200 4350
Text Label 4200 4350 0    60   ~ 0
PI_GPIO_1
Wire Wire Line
	5200 4650 5300 4650
Text HLabel 5300 4650 2    60   Input ~ 0
ADC2
Wire Wire Line
	4700 4650 4600 4650
Text HLabel 4600 4650 0    60   Input ~ 0
ADC1
Wire Wire Line
	5200 4450 5300 4450
Text HLabel 5300 4450 2    60   Input ~ 0
ST_GPIO_1
Wire Wire Line
	5200 4550 5300 4550
Text HLabel 5300 4550 2    60   Input ~ 0
ST_GPIO_3
Wire Wire Line
	4700 4550 4600 4550
Text HLabel 4600 4550 0    60   Input ~ 0
ST_GPIO_2
Text HLabel 3800 1800 0    60   Input ~ 0
PWR_CTRL
NoConn ~ 2750 4850
Text Notes 2600 5050 0    60   ~ 0
Blind pin
Wire Notes Line
	850  3800 6050 3800
Wire Notes Line
	6050 3800 6050 5100
Wire Notes Line
	6050 5100 850  5100
Wire Notes Line
	850  5100 850  3800
Text Notes 900  4100 0    60   ~ 0
Extension\nconnectors\nSPICEs
Wire Notes Line
	850  650  6050 650 
Wire Notes Line
	6050 650  6050 3550
Wire Notes Line
	6050 3550 850  3550
Wire Notes Line
	850  3550 850  650 
Text Notes 950  900  0    60   ~ 0
NanoPi\nconnectors
Text HLabel 9650 750  2    60   Input ~ 0
DUT_UART1_RX
Text HLabel 9650 950  2    60   Input ~ 0
DUT_UART1_TX
Text HLabel 9650 1150 2    60   Input ~ 0
DUT_UART1_RTS
Text HLabel 9650 1350 2    60   Input ~ 0
DUT_UART1_CTS
Text HLabel 9650 1700 2    60   Input ~ 0
ST_USART1_RX
Text HLabel 9650 1900 2    60   Input ~ 0
ST_USART1_TX
Text HLabel 2900 4550 2    60   Input ~ 0
USB_B-
Text HLabel 2900 4650 2    60   Input ~ 0
USB_A-
Text HLabel 2100 4650 0    60   Input ~ 0
USB_A+
Text HLabel 2100 4550 0    60   Input ~ 0
USB_B+
$Comp
L MuxPi:USB_A P16
U 1 1 5846D460
P 7200 1150
F 0 "P16" V 7180 1338 50  0000 L CNN
F 1 "UBA-4R-D14-4D" V 7271 1338 50  0000 L CNN
F 2 "mux-footprints:conn_usb_A" V 7150 1050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/1f19408d03550e8cdfa50980c10f45a8/UBA-4R-D14-4D.pdf" V 7150 1050 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/uba-4r-d14-4d/zlacza-usb-i-ieee1394/jst/" V 7200 1150 60  0001 C CNN "Shop link"
F 5 "JST" V 7200 1150 50  0001 C CNN "Manufacturer"
F 6 "UBA-4R-D14-4D" V 7200 1150 50  0001 C CNN "Symbol"
	1    7200 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 1150 6900 1150
Wire Wire Line
	6250 1050 6900 1050
Wire Wire Line
	7200 1850 7200 1900
Wire Wire Line
	7200 1900 7300 1900
Wire Wire Line
	7400 1900 7400 1850
Wire Wire Line
	7200 1550 7200 1500
Wire Wire Line
	7200 1500 7300 1500
Wire Wire Line
	7400 1500 7400 1550
Wire Wire Line
	7300 1450 7300 1500
Connection ~ 7300 1500
Wire Wire Line
	7300 1900 7300 1950
Connection ~ 7300 1900
$Comp
L MuxPi:GND #PWR0118
U 1 1 5846D483
P 7300 1950
F 0 "#PWR0118" H 7300 1700 50  0001 C CNN
F 1 "GND" H 7300 1800 50  0000 C CNN
F 2 "" H 7300 1950 60  0000 C CNN
F 3 "" H 7300 1950 60  0000 C CNN
	1    7300 1950
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0117
U 1 1 5846D489
P 6850 1300
F 0 "#PWR0117" H 6850 1050 50  0001 C CNN
F 1 "GND" H 6850 1150 50  0000 C CNN
F 2 "" H 6850 1300 60  0000 C CNN
F 3 "" H 6850 1300 60  0000 C CNN
	1    6850 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6850 1300 6850 1250
Wire Wire Line
	6850 1250 6900 1250
Wire Wire Line
	6850 900  6850 950 
Wire Wire Line
	6850 950  6900 950 
Text Label 6250 1050 0    60   ~ 0
USB_DUT-
Text Label 6250 1150 0    60   ~ 0
USB_DUT+
Text Label 2350 1200 2    60   ~ 0
USB_DUT+
Text Label 2350 1300 2    60   ~ 0
USB_DUT-
Text Notes 7600 950  0    60   ~ 0
USBoIP
$Comp
L MuxPi:LED_ALT D5
U 1 1 585055E3
P 10150 2950
F 0 "D5" V 10188 2832 50  0000 R CNN
F 1 "KPT-2012EC (RED)" V 10097 2832 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10150 2950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10150 2950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10150 2950 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" V 10150 2950 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" V 10150 2950 50  0001 C CNN "Symbol"
	1    10150 2950
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:LED_ALT D4
U 1 1 58505BE7
P 8600 2950
F 0 "D4" V 8638 2832 50  0000 R CNN
F 1 "KPT-2012SGC (GREEN)" V 8547 2832 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 8600 2950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 8600 2950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 8600 2950 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" V 8600 2950 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" V 8600 2950 50  0001 C CNN "Symbol"
	1    8600 2950
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:C C27
U 1 1 5852C32C
P 7200 1700
F 0 "C27" H 6950 1800 50  0000 L CNN
F 1 "100nF/50V" H 6650 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7238 1550 50  0001 C CNN
F 3 "" H 7200 1700 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 7200 1700 60  0001 C CNN "Shop link"
	1    7200 1700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R36
U 1 1 5852EE5B
P 10150 2600
F 0 "R36" H 10220 2646 50  0000 L CNN
F 1 "560R" H 10220 2555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10080 2600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d26ab61589ff927fb609b6d6433d4ffa/rezystor-smd.pdf" H 10150 2600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 10150 2600 60  0001 C CNN "Shop link"
	1    10150 2600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R30
U 1 1 5852FAED
P 9150 950
F 0 "R30" V 9250 900 50  0000 C CNN
F 1 "120R" V 9200 1150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 950 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 950 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 950 60  0001 C CNN "Shop link"
	1    9150 950 
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R31
U 1 1 5852FB33
P 9150 1150
F 0 "R31" V 9250 1100 50  0000 C CNN
F 1 "120R" V 9200 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 1150 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 1150 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 1150 60  0001 C CNN "Shop link"
	1    9150 1150
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R32
U 1 1 5852FB7C
P 9150 1350
F 0 "R32" V 9250 1300 50  0000 C CNN
F 1 "120R" V 9200 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 1350 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 1350 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 1350 60  0001 C CNN "Shop link"
	1    9150 1350
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R33
U 1 1 5852FBCA
P 9150 1700
F 0 "R33" V 9250 1650 50  0000 C CNN
F 1 "120R" V 9200 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 1700 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 1700 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 1700 60  0001 C CNN "Shop link"
	1    9150 1700
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R34
U 1 1 5852FC1D
P 9150 1900
F 0 "R34" V 9250 1850 50  0000 C CNN
F 1 "120R" V 9200 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9080 1900 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 9150 1900 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-120r/rezystory-smd-0805/royal-ohm/0805s8j0121t5e/" V 9150 1900 60  0001 C CNN "Shop link"
	1    9150 1900
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:CONN_02X08 P13
U 1 1 5858E2C0
P 2500 4500
F 0 "P13" H 2500 5065 50  0000 C CNN
F 1 "PBTD16S" H 2500 4974 50  0000 C CNN
F 2 "mux-footprints:PBTD16S" H 2500 3300 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/43114/PBTD.pdf" H 2500 4973 50  0001 C CNN
F 4 "https://www.maritex.com.pl/zlacza/listwy_stykowe_kolkowe/listwy_w_rastrze_2_54mm/listwy_stykowe_zenskie_proste_dwurzedowe_smt_w_rastrze_2_54mm/pbtd16s.html" H 2500 4500 60  0001 C CNN "Shop link"
F 5 "GREENCON" H 2500 4500 50  0001 C CNN "Manufacturer"
F 6 "PBTD16S" H 2500 4500 50  0001 C CNN "Symbol"
	1    2500 4500
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_02X08 P15
U 1 1 5858F19E
P 4950 4500
F 0 "P15" H 4950 5065 50  0000 C CNN
F 1 "PBTD16S" H 4950 4974 50  0000 C CNN
F 2 "mux-footprints:PBTD16S" H 4950 3300 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/43114/PBTD.pdf" H 4950 4973 50  0001 C CNN
F 4 "https://www.maritex.com.pl/zlacza/listwy_stykowe_kolkowe/listwy_w_rastrze_2_54mm/listwy_stykowe_zenskie_proste_dwurzedowe_smt_w_rastrze_2_54mm/pbtd16s.html" H 4950 4500 60  0001 C CNN "Shop link"
F 5 "GREENCONN" H 4950 4500 50  0001 C CNN "Manufacturer"
F 6 "PBTD16S" H 4950 4500 50  0001 C CNN "Symbol"
	1    4950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4750 2200 4850
Wire Wire Line
	2200 4250 2250 4250
Connection ~ 2200 4150
Wire Wire Line
	2250 4850 2200 4850
Connection ~ 2200 4850
Wire Wire Line
	4600 4850 4700 4850
Connection ~ 4600 4850
Wire Wire Line
	5200 4850 5300 4850
Connection ~ 5300 4850
$Comp
L MuxPi:ATTINY10-TS IC2
U 1 1 585A8A45
P 2550 6100
F 0 "IC2" H 2550 6617 50  0000 C CNN
F 1 "ATTINY10-TS8R" H 2550 6526 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6" H 2550 6525 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/3d037305fb4746ed6c57eab928892717/ATTINY4-5-9-10-DTE.pdf" H 2550 6526 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/attiny10-ts8r/mikrokontrolery-atmel-avr-smd/atmel/" H 2550 6100 60  0001 C CNN "Shop link"
F 5 "MICROCHIP (ATMEL)" H 2550 6100 50  0001 C CNN "Manufacturer"
F 6 "ATTINY10-TS8R" H 2550 6100 50  0001 C CNN "Symbol"
	1    2550 6100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 6150 3800 6800
$Comp
L MuxPi:R R57
U 1 1 585AB811
P 4500 6450
F 0 "R57" V 4400 6450 50  0000 C CNN
F 1 "10K" V 4600 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4430 6450 30  0001 C CNN
F 3 "" H 4500 6450 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 4500 6450 60  0001 C CNN "Shop link"
	1    4500 6450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0110
U 1 1 585AB818
P 4500 6650
F 0 "#PWR0110" H 4500 6400 50  0001 C CNN
F 1 "GND" H 4500 6500 50  0000 C CNN
F 2 "" H 4500 6650 60  0000 C CNN
F 3 "" H 4500 6650 60  0000 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5900 5300 5900
Wire Wire Line
	5200 6000 5300 6000
Connection ~ 5300 6000
Wire Wire Line
	5300 6100 5200 6100
Connection ~ 5300 6100
Wire Wire Line
	5300 6200 5200 6200
Wire Wire Line
	4500 6100 4600 6100
Wire Wire Line
	4500 5750 4500 5900
Wire Wire Line
	4600 6000 4500 6000
Connection ~ 4500 6000
Wire Wire Line
	4500 6300 4500 6250
Connection ~ 4500 6250
Connection ~ 4500 5900
Wire Wire Line
	5300 5900 5300 6000
Connection ~ 5300 5900
Wire Wire Line
	4500 6600 4500 6650
$Comp
L MuxPi:BSO130P03S Q12
U 1 1 585AB83E
P 4900 6100
F 0 "Q12" H 4900 6607 50  0000 C CNN
F 1 "BSO130P03S" H 4900 6516 50  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 4900 6425 50  0001 C CIN
F 3 "http://www.tme.eu/pl/Document/fde90035d9a6021d44d09086b0d9119c/BSO130P03SHXUMA1-DTE.pdf" V 4900 6100 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/bso130p03shxuma1/tranzystory-z-kanalem-p-smd/infineon-technologies/" H 4900 6100 60  0001 C CNN "Shop link"
F 5 "INFINEON TECHNOLOGIES" H 4900 6100 50  0001 C CNN "Manufacturer"
F 6 "BSO130P03SHXUMA1" H 4900 6100 50  0001 C CNN "Symbol"
	1    4900 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5900 4600 5900
Text Label 5850 5900 2    60   ~ 0
PI_PWR
Text Label 5900 800  2    60   ~ 0
PI_PWR
$Comp
L MuxPi:+5V #PWR095
U 1 1 585AF6FC
P 1250 5750
F 0 "#PWR095" H 1250 5600 50  0001 C CNN
F 1 "+5V" H 1265 5923 50  0000 C CNN
F 2 "" H 1250 5750 50  0000 C CNN
F 3 "" H 1250 5750 50  0000 C CNN
	1    1250 5750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR096
U 1 1 585AF914
P 1250 6450
F 0 "#PWR096" H 1250 6200 50  0001 C CNN
F 1 "GND" H 1250 6300 50  0000 C CNN
F 2 "" H 1250 6450 60  0000 C CNN
F 3 "" H 1250 6450 60  0000 C CNN
	1    1250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5750 1250 5850
Wire Wire Line
	1250 5850 1350 5850
Wire Wire Line
	1350 6350 1250 6350
Wire Wire Line
	1250 6350 1250 6450
$Comp
L MuxPi:GND #PWR098
U 1 1 585B10F8
P 1250 7350
F 0 "#PWR098" H 1250 7100 50  0001 C CNN
F 1 "GND" H 1250 7200 50  0000 C CNN
F 2 "" H 1250 7350 60  0000 C CNN
F 3 "" H 1250 7350 60  0000 C CNN
	1    1250 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6950 1250 7000
Wire Wire Line
	1250 7300 1250 7350
$Comp
L MuxPi:C C71
U 1 1 585B1107
P 1250 7150
F 0 "C71" H 1300 7300 50  0000 L CNN
F 1 "100nF/50V" V 1100 6950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1288 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1250 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1250 7150 60  0001 C CNN "Shop link"
	1    1250 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_02X03 P18
U 1 1 585B4638
P 2500 7150
F 0 "P18" H 2500 7465 50  0000 C CNN
F 1 "CONN_02X03" H 2500 7374 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x03" H 2500 7373 50  0001 C CNN
F 3 "" H 2500 5950 50  0000 C CNN
	1    2500 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7050 1750 7050
Text Label 1750 7050 0    60   ~ 0
TPI_DATA
Wire Wire Line
	2250 7150 1750 7150
Text Label 1750 7150 0    60   ~ 0
TPI_CLK
Wire Wire Line
	2250 7250 1750 7250
Text Label 1750 7250 0    60   ~ 0
TPI_RST
Text Label 3850 6250 0    60   ~ 0
TPI_RST
Wire Wire Line
	4250 5950 3750 5950
Text Label 4250 5950 2    60   ~ 0
TPI_DATA
Wire Wire Line
	4250 6050 3750 6050
Text Label 4250 6050 2    60   ~ 0
TPI_CLK
Wire Wire Line
	2850 6950 2850 7050
Wire Wire Line
	2850 7050 2750 7050
$Comp
L MuxPi:GND #PWR0105
U 1 1 585B832A
P 2850 7350
F 0 "#PWR0105" H 2850 7100 50  0001 C CNN
F 1 "GND" H 2850 7200 50  0000 C CNN
F 2 "" H 2850 7350 60  0000 C CNN
F 3 "" H 2850 7350 60  0000 C CNN
	1    2850 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 7250 2850 7250
Wire Wire Line
	2850 7250 2850 7350
NoConn ~ 2750 7150
Wire Notes Line
	850  5450 6050 5450
Wire Notes Line
	6050 5450 6050 7600
Wire Notes Line
	6050 7600 850  7600
Wire Notes Line
	850  7600 850  5450
Text Notes 4950 7550 0    60   ~ 0
NanoPi power control
$Comp
L MuxPi:+5V #PWR097
U 1 1 585BE1E0
P 1250 6950
F 0 "#PWR097" H 1250 6800 50  0001 C CNN
F 1 "+5V" H 1265 7123 50  0000 C CNN
F 2 "" H 1250 6950 50  0000 C CNN
F 3 "" H 1250 6950 50  0000 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0104
U 1 1 585BE2A5
P 2850 6950
F 0 "#PWR0104" H 2850 6800 50  0001 C CNN
F 1 "+5V" H 2865 7123 50  0000 C CNN
F 2 "" H 2850 6950 50  0000 C CNN
F 3 "" H 2850 6950 50  0000 C CNN
	1    2850 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R21
U 1 1 586666AA
P 4300 6250
F 0 "R21" V 4200 6250 50  0000 C CNN
F 1 "0R" V 4300 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 4230 6250 30  0001 C CNN
F 3 "" H 4300 6250 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 4300 6250 60  0001 C CNN "Shop link"
	1    4300 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 6250 4150 6250
Wire Wire Line
	4450 6250 4500 6250
Wire Wire Line
	3750 6150 3800 6150
Wire Wire Line
	3800 6800 3750 6800
Text HLabel 3750 6800 0    60   Input ~ 0
WD_RESET
Wire Wire Line
	5200 800  5900 800 
NoConn ~ 1750 1100
$Comp
L MuxPi:+5V #PWR0114
U 1 1 58D5B3E4
P 8600 2400
F 0 "#PWR0114" H 8600 2250 50  0001 C CNN
F 1 "+5V" H 8615 2573 50  0000 C CNN
F 2 "" H 8600 2400 50  0000 C CNN
F 3 "" H 8600 2400 50  0000 C CNN
	1    8600 2400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+5V #PWR0119
U 1 1 58D5B7E5
P 10150 2400
F 0 "#PWR0119" H 10150 2250 50  0001 C CNN
F 1 "+5V" H 10165 2573 50  0000 C CNN
F 2 "" H 10150 2400 50  0000 C CNN
F 3 "" H 10150 2400 50  0000 C CNN
	1    10150 2400
	1    0    0    -1  
$EndComp
Text HLabel 4200 4350 0    60   Input ~ 0
PI_GPIO_1
$Comp
L MuxPi:+5V #PWR0116
U 1 1 58D8DB24
P 6850 900
F 0 "#PWR0116" H 6850 750 50  0001 C CNN
F 1 "+5V" H 6865 1073 50  0000 C CNN
F 2 "" H 6850 900 50  0000 C CNN
F 3 "" H 6850 900 50  0000 C CNN
	1    6850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1700 5200 2000
Wire Wire Line
	5200 1100 5200 1200
Wire Wire Line
	5200 2000 5200 2250
Wire Wire Line
	7300 1500 7400 1500
Wire Wire Line
	7300 1900 7400 1900
Wire Wire Line
	2200 4150 2200 4250
Wire Wire Line
	2200 4850 2200 4900
Wire Wire Line
	4600 4850 4600 4900
Wire Wire Line
	5300 4850 5300 4900
Wire Wire Line
	5300 6000 5300 6100
Wire Wire Line
	5300 6100 5300 6200
Wire Wire Line
	4500 6000 4500 6100
Wire Wire Line
	4500 6250 4600 6250
Wire Wire Line
	4500 5900 4500 6000
Wire Wire Line
	5300 5900 5850 5900
$Comp
L MuxPi:FT230XQ U14
U 1 1 5A694E3A
P 8750 5350
F 0 "U14" H 9050 6050 50  0000 C CNN
F 1 "FT230XQ" H 9150 5950 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-16-1EP_4x4mm_Pitch0.65mm" H 8750 5350 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT230X.html" H 8750 5350 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/ft230xq-t/uklady-scalone-interfejs-usb/ftdi/" H 8750 5350 50  0001 C CNN "Shop link"
F 5 "FTDI" H 8750 5350 50  0001 C CNN "Manufacturer"
F 6 "FT230XQ-T" H 8750 5350 50  0001 C CNN "Symbol"
	1    8750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5550 9950 5550
Wire Wire Line
	9450 5650 10300 5650
$Comp
L MuxPi:R R65
U 1 1 5A6B0F43
P 10500 5150
F 0 "R65" H 10570 5196 50  0000 L CNN
F 1 "560R" H 10570 5105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10430 5150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d26ab61589ff927fb609b6d6433d4ffa/rezystor-smd.pdf" H 10500 5150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 10500 5150 60  0001 C CNN "Shop link"
	1    10500 5150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R66
U 1 1 5A6B13DD
P 10850 5150
F 0 "R66" H 10920 5196 50  0000 L CNN
F 1 "560R" H 10920 5105 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 10780 5150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d26ab61589ff927fb609b6d6433d4ffa/rezystor-smd.pdf" H 10850 5150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" H 10850 5150 60  0001 C CNN "Shop link"
	1    10850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5550 10500 5550
Wire Wire Line
	10500 5550 10500 5300
Wire Wire Line
	10600 5650 10850 5650
Wire Wire Line
	10850 5650 10850 5300
Text Label 11050 4050 2    60   ~ 0
PI_UART0_RX
Text Label 11050 4150 2    60   ~ 0
PI_UART0_TX
Wire Wire Line
	9450 4950 9550 4950
Wire Wire Line
	9450 5050 9700 5050
NoConn ~ 9450 5150
NoConn ~ 9450 5250
NoConn ~ 9450 5450
NoConn ~ 9450 5750
Wire Wire Line
	8650 6050 8650 6150
Wire Wire Line
	8650 6150 8750 6150
Wire Wire Line
	8850 6150 8850 6050
Wire Wire Line
	8750 6050 8750 6150
Connection ~ 8750 6150
Wire Wire Line
	8750 6150 8850 6150
$Comp
L MuxPi:GND #PWR0209
U 1 1 5A707900
P 8750 6200
F 0 "#PWR0209" H 8750 5950 50  0001 C CNN
F 1 "GND" H 8750 6050 50  0000 C CNN
F 2 "" H 8750 6200 60  0000 C CNN
F 3 "" H 8750 6200 60  0000 C CNN
	1    8750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6200 8750 6150
Wire Wire Line
	8650 4600 8650 4650
$Comp
L MuxPi:R R61
U 1 1 5A73B0F9
P 7650 5250
F 0 "R61" V 7650 5200 50  0000 C CNN
F 1 "27R" V 7700 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 5250 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 7650 5250 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 7650 5250 60  0001 C CNN "Shop link"
	1    7650 5250
	0    1    -1   0   
$EndComp
$Comp
L MuxPi:R R62
U 1 1 5A73B32C
P 7650 5350
F 0 "R62" V 7650 5300 50  0000 C CNN
F 1 "27R" V 7700 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7580 5350 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/963a5156338c70f2ffb768220101d935/rezystor-smd.pdf" H 7650 5350 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-27r/rezystory-smd-0805/royal-ohm/0805s8j0270t5e/" V 7650 5350 60  0001 C CNN "Shop link"
	1    7650 5350
	0    1    -1   0   
$EndComp
Wire Wire Line
	7800 5250 8050 5250
Wire Wire Line
	7800 5350 8050 5350
$Comp
L MuxPi:C C78
U 1 1 5A7620A4
P 7400 5550
F 0 "C78" V 7450 5350 50  0000 L CNN
F 1 "47pF/50V" V 7250 5350 50  0001 L CNN
F 2 "Capacitors_SMD:C_0805" H 7438 5400 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/80c1b5fbb9053eca31beff7dd9be787a/cc_np0_yageo.pdf" H 7400 5550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrnpo9470/kondensatory-mlcc-smd-0805/yageo/cc0805jrnpo9bn470/" H 7400 5550 60  0001 C CNN "Shop link"
	1    7400 5550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0207
U 1 1 5A7625B2
P 7400 5750
F 0 "#PWR0207" H 7400 5500 50  0001 C CNN
F 1 "GND" H 7400 5600 50  0000 C CNN
F 2 "" H 7400 5750 60  0000 C CNN
F 3 "" H 7400 5750 60  0000 C CNN
	1    7400 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5700 7400 5750
$Comp
L MuxPi:C C77
U 1 1 5A76BCCE
P 7150 5550
F 0 "C77" V 7200 5350 50  0000 L CNN
F 1 "47pF/50V" H 7100 5100 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7188 5400 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/80c1b5fbb9053eca31beff7dd9be787a/cc_np0_yageo.pdf" H 7150 5550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrnpo9470/kondensatory-mlcc-smd-0805/yageo/cc0805jrnpo9bn470/" H 7150 5550 60  0001 C CNN "Shop link"
	1    7150 5550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0206
U 1 1 5A76BCD4
P 7150 5750
F 0 "#PWR0206" H 7150 5500 50  0001 C CNN
F 1 "GND" H 7150 5600 50  0000 C CNN
F 2 "" H 7150 5750 60  0000 C CNN
F 3 "" H 7150 5750 60  0000 C CNN
	1    7150 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5700 7150 5750
$Comp
L MuxPi:GND #PWR0208
U 1 1 5A77564C
P 7950 6200
F 0 "#PWR0208" H 7950 5950 50  0001 C CNN
F 1 "GND" H 7950 6050 50  0000 C CNN
F 2 "" H 7950 6200 60  0000 C CNN
F 3 "" H 7950 6200 60  0000 C CNN
	1    7950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6150 7950 6200
$Comp
L MuxPi:C C79
U 1 1 5A775654
P 7950 6000
F 0 "C79" H 8000 6150 50  0000 L CNN
F 1 "100nF/50V" V 7800 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 7988 5850 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 7950 6000 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 7950 6000 60  0001 C CNN "Shop link"
	1    7950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5850 7950 5550
Wire Wire Line
	8050 5550 7950 5550
Connection ~ 7950 5550
Wire Wire Line
	7950 5550 7950 4950
Wire Wire Line
	9550 4900 9550 4950
Connection ~ 9550 4950
Wire Wire Line
	9700 4900 9700 5050
Connection ~ 9700 5050
Wire Wire Line
	8050 4950 7950 4950
Connection ~ 7950 4950
Wire Wire Line
	7950 4500 8850 4500
Wire Wire Line
	10500 4500 10500 5000
Wire Wire Line
	7950 4500 7950 4950
Wire Wire Line
	9700 4600 9700 4500
Connection ~ 9700 4500
Wire Wire Line
	9700 4500 10500 4500
Wire Wire Line
	9550 4600 9550 4500
Connection ~ 9550 4500
Wire Wire Line
	9550 4500 9700 4500
Wire Wire Line
	8850 4500 8850 4650
Connection ~ 8850 4500
Wire Wire Line
	8850 4500 9550 4500
Wire Wire Line
	10850 4500 10500 4500
Wire Wire Line
	10850 4500 10850 5000
Connection ~ 10500 4500
$Comp
L MuxPi:USB_OTG_MICRO_USB P10
U 1 1 5A80B18D
P 6650 5350
F 0 "P10" V 6350 5450 50  0000 C CNN
F 1 "USB_OTG_MICRO_USB" H 6650 5600 50  0000 C CNN
F 2 "mux-footprints:micro_sub_molex" V 6600 5250 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/b7989e722b05f5084c507fb3ad8f02cb/MX-105017-0001.pdf" V 6600 5250 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mx-105017-0001/zlacza-usb-i-ieee1394/molex/1050170001/" V 6650 5350 50  0001 C CNN "Shop link"
F 5 "MOLEX" V 6650 5350 50  0001 C CNN "Manufacturer"
F 6 "1050170001" V 6650 5350 50  0001 C CNN "Symbol"
	1    6650 5350
	0    -1   1    0   
$EndComp
NoConn ~ 6950 5450
Wire Wire Line
	7500 5250 7150 5250
Wire Wire Line
	6950 5350 7400 5350
Wire Wire Line
	7400 5400 7400 5350
Connection ~ 7400 5350
Wire Wire Line
	7400 5350 7500 5350
Wire Wire Line
	7150 5400 7150 5250
Connection ~ 7150 5250
Wire Wire Line
	7150 5250 6950 5250
$Comp
L MuxPi:GND #PWR0205
U 1 1 5A8A44D9
P 7000 5600
F 0 "#PWR0205" H 7000 5350 50  0001 C CNN
F 1 "GND" H 7000 5450 50  0000 C CNN
F 2 "" H 7000 5600 60  0000 C CNN
F 3 "" H 7000 5600 60  0000 C CNN
	1    7000 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5550 7000 5550
Wire Wire Line
	7000 5550 7000 5600
$Comp
L MuxPi:Ferrite_Bead_Small L6
U 1 1 5A8D7AF6
P 7150 4850
F 0 "L6" H 7300 4950 50  0000 C CNN
F 1 "BLM21PG221SN1D" H 7150 4550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 7250 4759 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/6052c7f9d4f1672121538e0d10f79ff8/blm21pg300sn1d.pdf" H 7250 4759 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/blm21pg221sn1d/ferryty-koraliki/murata/" H 7150 4850 60  0001 C CNN "Shop link"
F 5 "MURATA" H 7150 4850 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG221SN1D" H 7150 4850 50  0001 C CNN "Symbol"
	1    7150 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 5150 7150 5150
Wire Wire Line
	7150 5150 7150 4950
Wire Wire Line
	7150 4750 7150 4600
Wire Wire Line
	7150 4600 8650 4600
Wire Wire Line
	6450 6150 6450 6200
Wire Wire Line
	6450 6200 6550 6200
Wire Wire Line
	6650 6200 6650 6150
Wire Wire Line
	6450 5850 6450 5800
Wire Wire Line
	6450 5800 6550 5800
Wire Wire Line
	6650 5800 6650 5850
Wire Wire Line
	6550 5750 6550 5800
Connection ~ 6550 5800
Wire Wire Line
	6550 6200 6550 6250
Connection ~ 6550 6200
$Comp
L MuxPi:GND #PWR0204
U 1 1 5A8FE349
P 6550 6250
F 0 "#PWR0204" H 6550 6000 50  0001 C CNN
F 1 "GND" H 6550 6100 50  0000 C CNN
F 2 "" H 6550 6250 60  0000 C CNN
F 3 "" H 6550 6250 60  0000 C CNN
	1    6550 6250
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:C C72
U 1 1 5A8FE350
P 6450 6000
F 0 "C72" H 6300 6100 50  0000 L CNN
F 1 "100nF/50V" V 6250 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6488 5850 50  0001 C CNN
F 3 "" H 6450 6000 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 6450 6000 60  0001 C CNN "Shop link"
	1    6450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5800 6650 5800
Wire Wire Line
	6550 6200 6650 6200
Wire Wire Line
	10350 5050 10350 4150
Wire Wire Line
	10350 4150 11050 4150
Wire Wire Line
	9700 5050 10350 5050
$Comp
L MuxPi:R R67
U 1 1 5A93611B
P 10200 4050
F 0 "R67" V 10100 4050 50  0000 C CNN
F 1 "0R" V 10200 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 10130 4050 30  0001 C CNN
F 3 "" H 10200 4050 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 10200 4050 60  0001 C CNN "Shop link"
	1    10200 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 4050 11050 4050
Wire Wire Line
	10000 4950 10000 4050
Wire Wire Line
	10000 4050 10050 4050
Wire Wire Line
	9550 4950 10000 4950
Text Notes 950  2700 0    60   Italic 12
NOTE!\nP12 is for NanoPi NEO v1.1 and v1.2
NoConn ~ 3550 2900
$Comp
L MuxPi:GND #PWR085
U 1 1 5A7950F6
P 3650 3200
F 0 "#PWR085" H 3650 2950 50  0001 C CNN
F 1 "GND" H 3650 3050 50  0000 C CNN
F 2 "" H 3650 3200 60  0000 C CNN
F 3 "" H 3650 3200 60  0000 C CNN
	1    3650 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 2800 3650 2800
Wire Wire Line
	3650 2800 3650 3200
Text Label 4350 3000 2    60   ~ 0
PI_UART0_TX
Wire Wire Line
	4350 3000 3550 3000
Text Label 4350 3100 2    60   ~ 0
PI_UART0_RX
Wire Wire Line
	4350 3100 3550 3100
Text Notes 2950 2700 0    60   Italic 12
NOTE!\nP19 is for NanoPi NEO v1.3
Text Notes 1200 3500 0    60   Italic 12
Populate both if you want to comply with versions 1.1 1.2 1.3
$Comp
L MuxPi:CONN_01X04 P19
U 1 1 5A86D25E
P 3350 2950
F 0 "P19" H 3428 2991 50  0000 L CNN
F 1 "ZL201-04G" H 3428 2900 50  0000 L CNN
F 2 "mux-footprints:pin_strip_2.54_s_1x4" H 3350 2950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cc301e58a5da78cb543a94b5a5b7f06a/DS1021.pdf" H 3350 2950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl262-4sg/listwy-i-gniazda-kolkowe/connfly/ds1023-1_4s21/" H 3350 2950 50  0001 C CNN "Shop link"
F 5 "CONNFLY" H 3350 2950 50  0001 C CNN "Manufacturer"
F 6 "DS1023-1*4S21" H 3350 2950 50  0001 C CNN "Symbol"
F 7 "http://www.tme.eu/pl/details/zl201-04g/listwy-i-gniazda-kolkowe/connfly/ds1021-1_4sf1-1/" H 3350 2950 60  0001 C CNN "Complementary shop link"
F 8 "CONNFLY" H 3350 2950 50  0001 C CNN "Complementary manufacturer"
F 9 "DS1021-1*4SF1-1" H 3350 2950 50  0001 C CNN "Complementary symbol"
	1    3350 2950
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:2N7002 Q9
U 1 1 5A871503
P 10050 3350
F 0 "Q9" H 10241 3396 50  0000 L CNN
F 1 "2N7002" H 10241 3305 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 10250 3275 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 10050 3350 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 10050 3350 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 10050 3350 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 10050 3350 50  0001 C CNN "Symbol"
	1    10050 3350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:LED_ALT D10
U 1 1 5A873160
P 10100 5550
F 0 "D10" H 10400 5600 50  0000 R CNN
F 1 "KPT-2012SGC (GREEN)" H 10450 5700 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10100 5550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10100 5550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 10100 5550 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" V 10100 5550 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" V 10100 5550 50  0001 C CNN "Symbol"
	1    10100 5550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:LED_ALT D11
U 1 1 5A874472
P 10450 5650
F 0 "D11" H 10750 5700 50  0000 R CNN
F 1 "KPT-2012EC (RED)" H 10800 5500 50  0000 R CNN
F 2 "Diodes_SMD:D_0805" H 10450 5650 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10450 5650 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10450 5650 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" V 10450 5650 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" V 10450 5650 50  0001 C CNN "Symbol"
	1    10450 5650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:2N7002 Q8
U 1 1 583D87E9
P 8500 3350
AR Path="/583D87E9" Ref="Q8"  Part="1" 
AR Path="/584D6079/583D87E9" Ref="Q8"  Part="1" 
F 0 "Q8" H 8691 3396 50  0000 L CNN
F 1 "2N7002" H 8691 3305 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 8700 3275 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 8500 3350 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 8500 3350 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 8500 3350 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 8500 3350 50  0001 C CNN "Symbol"
	1    8500 3350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R35
U 1 1 5A84C753
P 7400 1700
F 0 "R35" H 7550 1750 50  0000 C CNN
F 1 "10K" H 7550 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7330 1700 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7400 1700 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 7400 1700 60  0001 C CNN "Shop link"
	1    7400 1700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R64
U 1 1 5A86976E
P 9700 4750
F 0 "R64" V 9700 4750 50  0000 C CNN
F 1 "10K" V 9800 4750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9630 4750 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 9700 4750 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 9700 4750 60  0001 C CNN "Shop link"
	1    9700 4750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R63
U 1 1 5A869920
P 9550 4750
F 0 "R63" V 9550 4750 50  0000 C CNN
F 1 "10K" V 9800 5200 50  0001 C CNN
F 2 "Resistors_SMD:R_0805" V 9480 4750 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 9550 4750 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 9550 4750 60  0001 C CNN "Shop link"
	1    9550 4750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R60
U 1 1 5A86A3B2
P 6650 6000
F 0 "R60" H 6800 6100 50  0000 C CNN
F 1 "10K" H 6800 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6580 6000 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 6650 6000 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 6650 6000 60  0001 C CNN "Shop link"
	1    6650 6000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
