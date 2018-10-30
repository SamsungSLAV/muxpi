EESchema Schematic File Version 4
LIBS:IR_addon-cache
EELAYER 29 0
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
F 2 "Muxpi_footprints:Pin_Header_Straight_2x08_Pitch2.54mm" H 4500 50  50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_2x08_Pitch2.54mm" H 7300 50  50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 900 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1000 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1100 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1200 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1300 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 1400 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 900 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1000 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1100 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1200 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1300 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 6300 1400 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1500 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1600 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1700 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1800 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2250 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2350 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2450 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 2550 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 950 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1050 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1150 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 950 1250 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 950 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1050 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1150 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1250 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1500 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1600 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1700 50  0001 C CNN
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
F 2 "Muxpi_footprints:Pin_Header_Straight_1x01_Pitch2.54mm" H 2000 1800 50  0001 C CNN
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
$Comp
L power:GND #PWR0101
U 1 1 5AC5DD56
P 3600 5450
F 0 "#PWR0101" H 3600 5200 50  0001 C CNN
F 1 "GND" H 3605 5277 50  0000 C CNN
F 2 "" H 3600 5450 50  0001 C CNN
F 3 "" H 3600 5450 50  0001 C CNN
	1    3600 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5150 3600 5150
Wire Wire Line
	3600 5150 3600 5250
Wire Wire Line
	3650 5250 3600 5250
Connection ~ 3600 5250
Wire Wire Line
	3600 5250 3600 5350
Wire Wire Line
	3650 5350 3600 5350
Connection ~ 3600 5350
Wire Wire Line
	3600 5350 3600 5450
$Comp
L power:GND #PWR0104
U 1 1 5AC6EB99
P 6250 3100
F 0 "#PWR0104" H 6250 2850 50  0001 C CNN
F 1 "GND" H 6255 2927 50  0000 C CNN
F 2 "" H 6250 3100 50  0001 C CNN
F 3 "" H 6250 3100 50  0001 C CNN
	1    6250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5AC6EC5B
P 2500 3950
F 0 "#PWR0105" H 2500 3700 50  0001 C CNN
F 1 "GND" H 2505 3777 50  0000 C CNN
F 2 "" H 2500 3950 50  0001 C CNN
F 3 "" H 2500 3950 50  0001 C CNN
	1    2500 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5AC730C3
P 3000 3950
F 0 "#PWR0106" H 3000 3700 50  0001 C CNN
F 1 "GND" H 3005 3777 50  0000 C CNN
F 2 "" H 3000 3950 50  0001 C CNN
F 3 "" H 3000 3950 50  0001 C CNN
	1    3000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5AC7752B
P 2500 2950
F 0 "#PWR0107" H 2500 2700 50  0001 C CNN
F 1 "GND" H 2505 2777 50  0000 C CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3100 5550 3100
Wire Wire Line
	5550 3100 5550 3000
Wire Wire Line
	5450 3000 5550 3000
Connection ~ 5550 3000
Wire Wire Line
	5550 3000 5550 2900
Wire Wire Line
	5450 2900 5550 2900
Connection ~ 5550 2900
$Comp
L MuxPi_addon:C C3
U 1 1 5AC8D80D
P 5900 2900
F 0 "C3" H 6015 2946 50  0000 L CNN
F 1 "0.1uF" H 6015 2855 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 5938 2750 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 5900 2900 50  0001 C CNN "Shop link"
F 5 "AVX" H 5900 2900 50  0001 C CNN "Manufacturer"
F 6 "08055F104K4T2A" H 5900 2900 50  0001 C CNN "Manufacturer Part No"
	1    5900 2900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:CP CP1
U 1 1 5AC8D95F
P 6250 2900
F 0 "CP1" H 6368 2946 50  0000 L CNN
F 1 "4.7uF" H 6368 2855 50  0000 L CNN
F 2 "Muxpi_footprints:C_T_0805" H 6288 2750 50  0001 C CNN
F 3 "" H 6250 2900 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/tajr475k010rnj/kondensatory-tantalowe-smd/avx/" H 6250 2900 50  0001 C CNN "Shop link"
F 5 "AVX" H 6250 2900 50  0001 C CNN "Manufacturer"
F 6 "TAJR475K010RNJ" H 6250 2900 50  0001 C CNN "Manufacturer Part No"
	1    6250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3050 6250 3050
Wire Wire Line
	6250 3050 6250 3100
Wire Wire Line
	5550 2650 5550 2750
Connection ~ 5550 2750
Wire Wire Line
	5550 2750 5550 2900
$Comp
L MuxPi_addon:Crystal Y1
U 1 1 5ACF6AE9
P 2600 3400
F 0 "Y1" H 2450 3132 50  0000 C CNN
F 1 "16MHz" H 2450 3223 50  0000 C CNN
F 2 "Muxpi_footprints:HC49USM" H 2450 3250 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/f9d1782f27c3a96ae8c4e91c94d19ebc/HC49USM_Series.pdf" H 2450 3250 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/hc49usm-ff3f16.00/rezonatory-kwarcowe-smd/ilsi/hc49usm-ff3f18-160000/" H 2600 3400 50  0001 C CNN "Shop link"
F 5 "ILSI" H 2600 3400 50  0001 C CNN "Manufacturer"
F 6 "HC49USM-FF3F18-16.0000" H 2600 3400 50  0001 C CNN "Manufacturer Part No"
	1    2600 3400
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:C C1
U 1 1 5ACF6CC9
P 2500 3650
F 0 "C1" H 2615 3696 50  0000 L CNN
F 1 "18pF" H 2615 3605 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 2538 3500 50  0001 C CNN
F 3 "" H 2500 3650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/vj0805a180jxbcw1bc/kondensatory-mlcc-smd-0805/vishay/" H 2500 3650 50  0001 C CNN "Shop link"
F 5 "Vishay" H 2500 3650 50  0001 C CNN "Manufacturer"
F 6 " VJ0805A180JXBCW1BC" H 2500 3650 50  0001 C CNN "Manufacturer Part No"
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C2
U 1 1 5ACFC09E
P 3000 3650
F 0 "C2" H 3115 3696 50  0000 L CNN
F 1 "18pF" H 3115 3605 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 3038 3500 50  0001 C CNN
F 3 "" H 3000 3650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/vj0805a180jxbcw1bc/kondensatory-mlcc-smd-0805/vishay/" H 3000 3650 50  0001 C CNN "Shop link"
F 5 "Vishay" H 3000 3650 50  0001 C CNN "Manufacturer"
F 6 " VJ0805A180JXBCW1BC" H 3000 3650 50  0001 C CNN "Manufacturer Part No"
	1    3000 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3400 3000 3400
Wire Wire Line
	2500 3500 2500 3400
Wire Wire Line
	2500 3200 3650 3200
Wire Wire Line
	3000 3500 3000 3400
Connection ~ 3000 3400
Wire Wire Line
	3000 3400 3650 3400
Wire Wire Line
	2500 3400 2600 3400
Connection ~ 2500 3400
Wire Wire Line
	2500 3400 2500 3200
Wire Wire Line
	3000 3950 3000 3800
Wire Wire Line
	2500 3950 2500 3800
$Comp
L MuxPi_addon:SwitchPush SW1
U 1 1 5AD98D34
P 3200 2900
F 0 "SW1" H 3000 3093 50  0000 C CNN
F 1 "SwitchPush" H 2650 2800 50  0001 C CNN
F 2 "Muxpi_footprints:DTSM-3" H 3000 2800 50  0001 C CNN
F 3 "" H 3000 2800 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/dtsm31n/mikroprzelaczniki-tact/diptronics/" H 3200 2900 50  0001 C CNN "Shop link"
F 5 "DIPTRONICS" H 3200 2900 50  0001 C CNN "Manufacturer"
F 6 "DTSM31N " H 3200 2900 50  0001 C CNN "Manufacturer Part No"
	1    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R6
U 1 1 5AD98E99
P 3500 2650
F 0 "R6" V 3500 2600 50  0000 L CNN
F 1 "1k1" V 3600 2600 50  0000 L CNN
F 2 "Muxpi_footprints:R_0805" V 3430 2650 50  0001 C CNN
F 3 "" H 3500 2650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-071k1l/rezystory-smd-0805/yageo/" V 3500 2650 50  0001 C CNN "Shop link"
F 5 "Yageo" V 3500 2650 50  0001 C CNN "Manufacturer"
F 6 " RC0805FR-071K1L" V 3500 2650 50  0001 C CNN "Manufacturer Part No"
	1    3500 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2950 2500 2900
Wire Wire Line
	2500 2900 2800 2900
$Comp
L MuxPi_addon:R R1
U 1 1 5ADC30BA
P 5600 5400
F 0 "R1" V 5600 5350 50  0000 L CNN
F 1 "330R" V 5670 5355 50  0000 L CNN
F 2 "Muxpi_footprints:R_0805" V 5530 5400 50  0001 C CNN
F 3 "" H 5600 5400 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 5600 5400 50  0001 C CNN "Shop link"
F 5 "Yageo" V 5600 5400 50  0001 C CNN "Manufacturer"
F 6 " RC0805JR-07330RL" V 5600 5400 50  0001 C CNN "Manufacturer Part No"
	1    5600 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5ADCFC37
P 5600 6050
F 0 "#PWR0108" H 5600 5800 50  0001 C CNN
F 1 "GND" H 5605 5877 50  0000 C CNN
F 2 "" H 5600 6050 50  0001 C CNN
F 3 "" H 5600 6050 50  0001 C CNN
	1    5600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5650 5600 5550
Wire Wire Line
	5600 5950 5600 6050
Text Label 2000 6700 0    50   ~ 0
D12-MISO
Text Label 2000 6800 0    50   ~ 0
D13-SCK
Text Label 2000 6900 0    50   ~ 0
RESET
Text Label 3300 6800 2    50   ~ 0
D11-MOSI
Wire Wire Line
	2900 6800 3300 6800
Wire Wire Line
	2000 6700 2400 6700
Wire Wire Line
	2000 6800 2400 6800
Wire Wire Line
	2000 6900 2400 6900
$Comp
L power:+5V #PWR0109
U 1 1 5AE50A82
P 3000 6500
F 0 "#PWR0109" H 3000 6350 50  0001 C CNN
F 1 "+5V" H 3015 6673 50  0000 C CNN
F 2 "" H 3000 6500 50  0001 C CNN
F 3 "" H 3000 6500 50  0001 C CNN
	1    3000 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5AE50B74
P 3000 7050
F 0 "#PWR0110" H 3000 6800 50  0001 C CNN
F 1 "GND" H 3005 6877 50  0000 C CNN
F 2 "" H 3000 7050 50  0001 C CNN
F 3 "" H 3000 7050 50  0001 C CNN
	1    3000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 6700 3000 6700
Wire Wire Line
	3000 6700 3000 6500
Wire Wire Line
	2900 6900 3000 6900
Wire Wire Line
	3000 6900 3000 7050
$Comp
L MuxPi_addon:CONN_02X03 J41
U 1 1 5AE67200
P 2750 6950
F 0 "J41" H 2650 7417 50  0000 C CNN
F 1 "CONN_02X03" H 2650 7326 50  0000 C CNN
F 2 "Muxpi_footprints:Pin_Header_Straight_2x03_Pitch2.54mm" H 2750 6950 50  0001 C CNN
F 3 "" H 2750 6950 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/zl202-6g/listwy-i-gniazda-kolkowe/connfly/ds1021-2_3sf1-1/" H 2750 6950 50  0001 C CNN "Shop link"
	1    2750 6950
	1    0    0    -1  
$EndComp
Text Label 6350 4950 2    50   ~ 0
D11-MOSI
Text Label 6350 5050 2    50   ~ 0
D12-MISO
Text Label 6350 5150 2    50   ~ 0
D13-SCK
Wire Wire Line
	3200 2900 3500 2900
Connection ~ 3500 2900
Wire Wire Line
	3500 2900 3650 2900
Wire Wire Line
	3500 2400 3500 2500
Wire Wire Line
	3500 2800 3500 2900
Text Label 10350 4700 2    50   ~ 0
USB_B+
Text Label 10350 4600 2    50   ~ 0
USB_B-
Wire Wire Line
	3200 4100 3650 4100
Wire Wire Line
	3200 4200 3650 4200
Wire Wire Line
	3200 4300 3650 4300
Wire Wire Line
	3200 4400 3650 4400
Wire Wire Line
	3200 4500 3650 4500
Wire Wire Line
	3200 4600 3650 4600
Wire Wire Line
	3200 4700 3650 4700
Wire Wire Line
	3200 4800 3650 4800
Wire Wire Line
	6350 3750 5450 3750
Wire Wire Line
	6350 3850 5450 3850
Wire Wire Line
	6350 3950 5450 3950
Wire Wire Line
	6350 4050 5450 4050
Wire Wire Line
	6350 4150 5450 4150
Text Label 3200 4100 0    50   ~ 0
A0
Text Label 3200 4200 0    50   ~ 0
A1
Text Label 3200 4400 0    50   ~ 0
A3
Text Label 3200 4300 0    50   ~ 0
A2
Text Label 3200 4500 0    50   ~ 0
A4
Text Label 3200 4600 0    50   ~ 0
A5
Text Label 3200 4700 0    50   ~ 0
A6
Text Label 3200 4800 0    50   ~ 0
A7
Text Label 5450 3450 0    50   ~ 0
D0-RX
Text Label 5450 3550 0    50   ~ 0
D1-TX
Text Label 6350 3650 2    50   ~ 0
D2
Text Label 6350 3750 2    50   ~ 0
D3
Text Label 6350 3850 2    50   ~ 0
D4
Text Label 6350 3950 2    50   ~ 0
D5
Text Label 6350 4050 2    50   ~ 0
D6
Text Label 6350 4150 2    50   ~ 0
D7
Text Label 6350 4650 2    50   ~ 0
D8
Text Label 6350 4750 2    50   ~ 0
D9
Text Label 6350 4850 2    50   ~ 0
D10
$Comp
L MuxPi_addon:R R2
U 1 1 5B113872
P 5950 3450
F 0 "R2" V 5950 3450 50  0000 C CNN
F 1 "1k" V 6000 3300 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 5880 3450 50  0001 C CNN
F 3 "" H 5950 3450 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-071k/rezystory-smd-0805/yageo/rc0805jr-071kl/" V 5950 3450 50  0001 C CNN "Shop link"
F 5 "Yageo" V 5950 3450 50  0001 C CNN "Manufacturer"
F 6 "RC0805JR-071KL" V 5950 3450 50  0001 C CNN "Manufacturer Part No"
	1    5950 3450
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:R R3
U 1 1 5B113A22
P 5950 3550
F 0 "R3" V 5950 3550 50  0000 C CNN
F 1 "1k" V 6000 3400 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 5880 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-071k/rezystory-smd-0805/yageo/rc0805jr-071kl/" V 5950 3550 50  0001 C CNN "Shop link"
F 5 "Yageo" V 5950 3550 50  0001 C CNN "Manufacturer"
F 6 "RC0805JR-071KL" V 5950 3550 50  0001 C CNN "Manufacturer Part No"
	1    5950 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 3450 6100 3450
Wire Wire Line
	6350 3550 6100 3550
Text Label 6350 3450 2    50   ~ 0
RX
Text Label 6350 3550 2    50   ~ 0
TX
Wire Wire Line
	5450 3450 5800 3450
Wire Wire Line
	5800 3550 5450 3550
Wire Wire Line
	5450 4650 6350 4650
Wire Wire Line
	5450 4750 6350 4750
Wire Wire Line
	5450 4850 6350 4850
Wire Wire Line
	5450 4950 6350 4950
Wire Wire Line
	5450 5050 6350 5050
Wire Wire Line
	5450 5150 5600 5150
Connection ~ 5600 5150
Wire Wire Line
	5600 5150 6350 5150
Wire Wire Line
	5600 5150 5600 5250
Text Label 3250 2900 0    50   ~ 0
RESET
Text Label 3200 3900 0    50   ~ 0
AREF
Wire Wire Line
	3200 3900 3650 3900
$Comp
L MuxPi_addon:CP CP2
U 1 1 5B6EB006
P 10400 2850
F 0 "CP2" H 10518 2896 50  0000 L CNN
F 1 "4.7uF" H 10518 2805 50  0000 L CNN
F 2 "Muxpi_footprints:C_T_0805" H 10438 2700 50  0001 C CNN
F 3 "" H 10400 2850 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/tajr475k010rnj/kondensatory-tantalowe-smd/avx/" H 10400 2850 50  0001 C CNN "Shop link"
F 5 "AVX" H 10400 2850 50  0001 C CNN "Manufacturer"
F 6 "TAJR475K010RNJ" H 10400 2850 50  0001 C CNN "Manufacturer Part No"
	1    10400 2850
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C4
U 1 1 5B6EB149
P 9950 2850
F 0 "C4" H 10065 2896 50  0000 L CNN
F 1 "0.1uF" H 10065 2805 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 9988 2700 50  0001 C CNN
F 3 "" H 9950 2850 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 9950 2850 50  0001 C CNN "Shop link"
F 5 "AVX" H 9950 2850 50  0001 C CNN "Manufacturer"
F 6 "08055F104K4T2A" H 9950 2850 50  0001 C CNN "Manufacturer Part No"
	1    9950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2650 9950 2700
Wire Wire Line
	10400 2650 10400 2700
Wire Wire Line
	10400 2650 9950 2650
$Comp
L power:GND #PWR015
U 1 1 5B713B27
P 10400 3050
F 0 "#PWR015" H 10400 2800 50  0001 C CNN
F 1 "GND" H 10405 2877 50  0000 C CNN
F 2 "" H 10400 3050 50  0001 C CNN
F 3 "" H 10400 3050 50  0001 C CNN
	1    10400 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 3000 9950 3000
Connection ~ 10400 3000
Wire Wire Line
	10400 3000 10400 3050
Wire Wire Line
	5450 3650 6350 3650
$Comp
L power:GND #PWR016
U 1 1 5B8A878B
P 1200 5100
F 0 "#PWR016" H 1200 4850 50  0001 C CNN
F 1 "GND" H 1205 4927 50  0000 C CNN
F 2 "" H 1200 5100 50  0001 C CNN
F 3 "" H 1200 5100 50  0001 C CNN
	1    1200 5100
	1    0    0    -1  
$EndComp
Text Label 2100 4550 2    50   ~ 0
D3
$Comp
L power:GND #PWR07
U 1 1 5AD76D4F
P 1700 5100
F 0 "#PWR07" H 1700 4850 50  0001 C CNN
F 1 "GND" H 1705 4927 50  0000 C CNN
F 2 "" H 1700 5100 50  0001 C CNN
F 3 "" H 1700 5100 50  0001 C CNN
	1    1700 5100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:ESD5B5.0S D_ESD1
U 1 1 5AE57637
P 1700 4850
F 0 "D_ESD1" V 1654 4938 50  0000 L CNN
F 1 "ESD5B5.0S" V 1745 4938 50  0000 L CNN
F 2 "Muxpi_footprints:SOD-523" H 1700 4850 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/8ba981c25abd6ce4f7df00b12050621e/ESD5B5.0-DTE.PDF" H 1700 4850 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/esd5b5.0st1g/diody-transil-smd-dwukierunkowe/on-semiconductor/" V 1700 4850 50  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR" V 1700 4850 50  0001 C CNN "Manufacturer"
F 6 "ESD5B5.0ST1G" V 1700 4850 50  0001 C CNN "Manufacturer Part No"
	1    1700 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 5100 1700 5050
$Comp
L power:VDD #PWR021
U 1 1 5AF9315D
P 5550 2650
F 0 "#PWR021" H 5550 2500 50  0001 C CNN
F 1 "VDD" H 5567 2823 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR019
U 1 1 5AF932E0
P 3500 2400
F 0 "#PWR019" H 3500 2250 50  0001 C CNN
F 1 "VDD" H 3517 2573 50  0000 C CNN
F 2 "" H 3500 2400 50  0001 C CNN
F 3 "" H 3500 2400 50  0001 C CNN
	1    3500 2400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:BLM21PG221SN1D L1
U 1 1 5B2E191D
P 9600 2650
F 0 "L1" V 9450 2650 50  0000 C CNN
F 1 "BLM21PG221SN1D" V 9700 2650 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" H 9600 2650 50  0001 C CNN
F 3 "" H 9600 2650 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/blm21pg221sn1d/ferryty-koraliki/murata/" V 9600 2650 50  0001 C CNN "Shop link"
F 5 "MURATA" V 9600 2650 50  0001 C CNN "Manufacturer"
F 6 "BLM21PG221SN1D" V 9600 2650 50  0001 C CNN "Manufacturer Part No"
	1    9600 2650
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:LED_ALT D1
U 1 1 5BD101FF
P 5600 5800
F 0 "D1" H 5638 5683 50  0000 R CNN
F 1 "KPT-2012SGC" H 5650 5600 50  0000 R CNN
F 2 "Muxpi_footprints:D_0805" H 5600 5800 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 5600 5800 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012sgc/diody-led-smd-kolorowe/kingbright-electronic/" V 5600 5800 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 5600 5800 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012SGC" H 5600 5800 50  0001 C CNN "Manufacturer Part No"
	1    5600 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 5AEA065B
P 9250 2650
F 0 "#PWR0102" H 9250 2500 50  0001 C CNN
F 1 "VDD" H 9267 2823 50  0000 C CNN
F 2 "" H 9250 2650 50  0001 C CNN
F 3 "" H 9250 2650 50  0001 C CNN
	1    9250 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2750 5900 2750
Connection ~ 5900 2750
Wire Wire Line
	5900 2750 6250 2750
Wire Wire Line
	1200 4650 1200 5100
$Comp
L MuxPi_addon:CONN_01X02 J3
U 1 1 5B082CA9
P 1050 4600
F 0 "J3" H 1020 4325 50  0000 C CNN
F 1 "CONN_01X02" H 1020 4416 50  0000 C CNN
F 2 "Muxpi_footprints:Pin_Header_Straight_1x02_Pitch2.54mm" H 1550 4000 50  0001 C CNN
F 3 "" H 1550 4000 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/mx-22-23-2021/zlacza-sygnalowe-raster-254mm/molex/022232021-a-6373-02a222/" H 1200 4850 50  0001 C CNN "Shop link"
F 5 "MOLEX" H 1300 4950 50  0001 C CNN "Manufacturer"
F 6 "022232021 A-6373-02A222" H 1400 5050 50  0001 C CNN "Manufacturer Part No"
	1    1050 4600
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR022
U 1 1 5BE33DD6
P 7800 2650
F 0 "#PWR022" H 7800 2500 50  0001 C CNN
F 1 "VDD" H 7817 2823 50  0000 C CNN
F 2 "" H 7800 2650 50  0001 C CNN
F 3 "" H 7800 2650 50  0001 C CNN
	1    7800 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR039
U 1 1 5BE34484
P 10450 3550
F 0 "#PWR039" H 10450 3400 50  0001 C CNN
F 1 "VDD" H 10467 3723 50  0000 C CNN
F 2 "" H 10450 3550 50  0001 C CNN
F 3 "" H 10450 3550 50  0001 C CNN
	1    10450 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR040
U 1 1 5BE34515
P 10600 3550
F 0 "#PWR040" H 10600 3400 50  0001 C CNN
F 1 "VDD" H 10617 3723 50  0000 C CNN
F 2 "" H 10600 3550 50  0001 C CNN
F 3 "" H 10600 3550 50  0001 C CNN
	1    10600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2650 7800 3100
Wire Wire Line
	7800 3100 7900 3100
$Comp
L MuxPi_addon:C C5
U 1 1 5BF2377A
P 7650 3500
F 0 "C5" V 7902 3500 50  0000 C CNN
F 1 "0.1uF" V 7811 3500 50  0000 C CNN
F 2 "Muxpi_footprints:C_0805" H 7688 3350 50  0001 C CNN
F 3 "" H 7650 3500 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" V 7650 3500 50  0001 C CNN "Shop link"
F 5 "AVX" V 7650 3500 50  0001 C CNN "Manufacturer"
F 6 "08055F104K4T2A" V 7650 3500 50  0001 C CNN "Manufacturer Part No"
	1    7650 3500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5BF4C150
P 7800 4950
F 0 "#PWR026" H 7800 4700 50  0001 C CNN
F 1 "GND" H 7805 4777 50  0000 C CNN
F 2 "" H 7800 4950 50  0001 C CNN
F 3 "" H 7800 4950 50  0001 C CNN
	1    7800 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5BF4C7AD
P 7600 4950
F 0 "#PWR011" H 7600 4700 50  0001 C CNN
F 1 "GND" H 7605 4777 50  0000 C CNN
F 2 "" H 7600 4950 50  0001 C CNN
F 3 "" H 7600 4950 50  0001 C CNN
	1    7600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4150 7600 4150
Wire Wire Line
	7600 4150 7600 4950
Wire Wire Line
	7800 4950 7800 4700
Wire Wire Line
	7800 4400 7900 4400
Wire Wire Line
	7900 4500 7800 4500
Connection ~ 7800 4500
Wire Wire Line
	7800 4500 7800 4400
Wire Wire Line
	7900 4600 7800 4600
Connection ~ 7800 4600
Wire Wire Line
	7800 4600 7800 4500
Wire Wire Line
	7900 4700 7800 4700
Connection ~ 7800 4700
Wire Wire Line
	7800 4700 7800 4600
Text Label 7300 3250 0    50   ~ 0
RX
Text Label 7300 3350 0    50   ~ 0
TX
Text Label 7300 3500 0    50   ~ 0
RESET
Wire Wire Line
	7300 3250 7900 3250
Wire Wire Line
	7300 3350 7900 3350
Wire Wire Line
	7300 3500 7500 3500
Wire Wire Line
	7800 3500 7900 3500
Wire Wire Line
	9150 3150 9250 3150
$Comp
L power:GND #PWR037
U 1 1 5C0EDF5B
P 10650 4450
F 0 "#PWR037" H 10650 4200 50  0001 C CNN
F 1 "GND" H 10655 4277 50  0000 C CNN
F 2 "" H 10650 4450 50  0001 C CNN
F 3 "" H 10650 4450 50  0001 C CNN
	1    10650 4450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C6
U 1 1 5C0EE50B
P 10650 4250
F 0 "C6" H 10765 4296 50  0000 L CNN
F 1 "0.1uF" H 10765 4205 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 10688 4100 50  0001 C CNN
F 3 "" H 10650 4250 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/08055f104k4t2a/kondensatory-mlcc-smd-0805/avx/" H 10650 4250 50  0001 C CNN "Shop link"
F 5 "AVX" H 10650 4250 50  0001 C CNN "Manufacturer"
F 6 "08055F104K4T2A" H 10650 4250 50  0001 C CNN "Manufacturer Part No"
	1    10650 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR027
U 1 1 5C0EE8DB
P 10650 4050
F 0 "#PWR027" H 10650 3900 50  0001 C CNN
F 1 "+3.3V" H 10665 4223 50  0000 C CNN
F 2 "" H 10650 4050 50  0001 C CNN
F 3 "" H 10650 4050 50  0001 C CNN
	1    10650 4050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:LED_ALT D11
U 1 1 5C17798C
P 10100 3750
F 0 "D11" H 10300 3700 50  0000 R CNN
F 1 "KPT-2012EC" H 10350 3600 50  0000 R CNN
F 2 "Muxpi_footprints:D_0805" H 10100 3750 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10100 3750 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10100 3750 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10100 3750 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10100 3750 50  0001 C CNN "Manufacturer Part No"
	1    10100 3750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:LED_ALT D2
U 1 1 5C1C2549
P 10100 3550
F 0 "D2" H 10250 3500 50  0000 R CNN
F 1 "KPT-2012EC" H 10350 3650 50  0000 R CNN
F 2 "Muxpi_footprints:D_0805" H 10100 3550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10100 3550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10100 3550 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10100 3550 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10100 3550 50  0001 C CNN "Manufacturer Part No"
	1    10100 3550
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R4
U 1 1 5C1C3060
P 9650 3550
F 0 "R4" V 9650 3550 50  0000 C CNN
F 1 "330R" V 9550 3550 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9580 3550 50  0001 C CNN
F 3 "" H 9650 3550 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 9650 3550 50  0001 C CNN "Shop link"
F 5 "Yageo" V 9650 3550 50  0001 C CNN "Manufacturer"
F 6 " RC0805JR-07330RL" V 9650 3550 50  0001 C CNN "Manufacturer Part No"
	1    9650 3550
	0    -1   1    0   
$EndComp
Wire Wire Line
	9250 3150 9250 2650
Wire Wire Line
	9800 3550 9950 3550
Wire Wire Line
	10250 3750 10600 3750
Wire Wire Line
	10600 3750 10600 3550
$Comp
L Device:R R7
U 1 1 5BD9FCDA
P 1450 4550
F 0 "R7" V 1450 4550 50  0000 C CNN
F 1 "R" V 1334 4550 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 1380 4550 50  0001 C CNN
F 3 "~" H 1450 4550 50  0001 C CNN
	1    1450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 4550 1300 4550
Wire Wire Line
	1600 4550 1700 4550
Wire Wire Line
	1700 4650 1700 4550
Connection ~ 1700 4550
Wire Wire Line
	1700 4550 2100 4550
$Comp
L MuxPi_addon:FT232RQ U2
U 1 1 5BE3532D
P 8550 3900
F 0 "U2" H 8525 4967 50  0000 C CNN
F 1 "FT232RQ" H 8525 4876 50  0000 C CNN
F 2 "Muxpi_footprints:QFN-32-1EP_5x5mm_Pitch0.5mm" H 8550 3900 50  0001 C CNN
F 3 "" H 8550 3900 50  0001 C CNN
F 4 "https://pl.farnell.com/ftdi/ft232rq/ic-usb-to-uart-smd-qfn-32-232/dp/1146033?st=FT232RQ-REEL" H 8550 3900 50  0001 C CNN "Shop link"
F 5 "FTDI" H 8550 3900 50  0001 C CNN "Manufacturer"
F 6 "FT232RQ" H 8550 3900 50  0001 C CNN "Manufacturer Part No"
	1    8550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 9150 4300
NoConn ~ 9150 3950
NoConn ~ 9150 3850
NoConn ~ 9150 3750
NoConn ~ 7900 3600
NoConn ~ 7900 3700
NoConn ~ 7900 3800
NoConn ~ 7900 3900
NoConn ~ 7900 4000
NoConn ~ 9150 3300
NoConn ~ 9150 3400
$Comp
L MuxPi_addon:R R5
U 1 1 5C28AE79
P 9650 3750
F 0 "R5" V 9650 3750 50  0000 C CNN
F 1 "330R" V 9750 3750 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9580 3750 50  0001 C CNN
F 3 "" H 9650 3750 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 9650 3750 50  0001 C CNN "Shop link"
F 5 "Yageo" V 9650 3750 50  0001 C CNN "Manufacturer"
F 6 " RC0805JR-07330RL" V 9650 3750 50  0001 C CNN "Manufacturer Part No"
	1    9650 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	9800 3750 9950 3750
$Comp
L power:GND #PWR01
U 1 1 5BF81217
P 9400 5200
F 0 "#PWR01" H 9400 4950 50  0001 C CNN
F 1 "GND" H 9405 5027 50  0000 C CNN
F 2 "" H 9400 5200 50  0001 C CNN
F 3 "" H 9400 5200 50  0001 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BF8129D
P 9600 5200
F 0 "#PWR02" H 9600 4950 50  0001 C CNN
F 1 "GND" H 9605 5027 50  0000 C CNN
F 2 "" H 9600 5200 50  0001 C CNN
F 3 "" H 9600 5200 50  0001 C CNN
	1    9600 5200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:C C7
U 1 1 5BFDEF86
P 9400 5000
F 0 "C7" H 9200 5050 50  0000 L CNN
F 1 "47pF" H 9200 4950 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 9438 4850 50  0001 C CNN
F 3 "" H 9400 5000 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/cc0805jrnpo9470/kondensatory-mlcc-smd-0805/yageo/cc0805jrnpo9bn470/" H 9400 5000 50  0001 C CNN "Shop link"
F 5 "Yageo" H 9400 5000 50  0001 C CNN "Manufacturer"
F 6 "CC0805JRNPO9BN470" H 9400 5000 50  0001 C CNN "Manufacturer Part No"
	1    9400 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5BFEB271
P 9800 4600
F 0 "R8" V 9800 4600 50  0000 C CNN
F 1 "27R" V 9700 4600 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9730 4600 50  0001 C CNN
F 3 "~" H 9800 4600 50  0001 C CNN
F 4 "Royal Ohm" V 9800 4600 50  0001 C CNN "Manufacturer"
F 5 " CQ05S8F270JT5E " V 9800 4600 50  0001 C CNN "Manufacturer Part No"
F 6 "https://www.tme.eu/pl/details/cq0805-27r-1%25/rezystory-smd-0805/royal-ohm/cq05s8f270jt5e/" V 9800 4600 50  0001 C CNN "Shop link"
	1    9800 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4600 10350 4600
Wire Wire Line
	9950 4700 10350 4700
Wire Wire Line
	10650 4450 10650 4400
Wire Wire Line
	10650 4050 10650 4100
Connection ~ 10650 4100
Wire Wire Line
	9150 4600 9400 4600
Wire Wire Line
	9650 4700 9600 4700
Wire Wire Line
	9400 4850 9400 4600
Connection ~ 9400 4600
Wire Wire Line
	9400 4600 9650 4600
Wire Wire Line
	9600 4850 9600 4700
Connection ~ 9600 4700
Wire Wire Line
	9600 4700 9150 4700
Wire Wire Line
	9600 5200 9600 5150
Wire Wire Line
	9400 5200 9400 5150
Wire Wire Line
	9250 2650 9450 2650
Wire Wire Line
	9150 4100 10650 4100
Wire Wire Line
	10250 3550 10450 3550
Wire Wire Line
	9150 3650 9300 3650
Wire Wire Line
	9300 3650 9300 3750
Wire Wire Line
	9300 3750 9500 3750
Wire Wire Line
	9150 3550 9500 3550
Connection ~ 9250 2650
Wire Wire Line
	9750 2650 9950 2650
Connection ~ 9950 2650
Connection ~ 6250 3050
$Comp
L Device:R R9
U 1 1 5C316C9A
P 9800 4700
F 0 "R9" V 9800 4700 50  0000 C CNN
F 1 "27R" V 9900 4700 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9730 4700 50  0001 C CNN
F 3 "~" H 9800 4700 50  0001 C CNN
F 4 "Royal Ohm" V 9800 4700 50  0001 C CNN "Manufacturer"
F 5 " CQ05S8F270JT5E " V 9800 4700 50  0001 C CNN "Manufacturer Part No"
F 6 "https://www.tme.eu/pl/details/cq0805-27r-1%25/rezystory-smd-0805/royal-ohm/cq05s8f270jt5e/" V 9800 4700 50  0001 C CNN "Shop link"
	1    9800 4700
	0    1    1    0   
$EndComp
$Comp
L MuxPi_addon:C C8
U 1 1 5BE0EA3E
P 9600 5000
F 0 "C8" H 9400 4950 50  0000 L CNN
F 1 "47pF" H 9350 5050 50  0000 L CNN
F 2 "Muxpi_footprints:C_0805" H 9638 4850 50  0001 C CNN
F 3 "" H 9600 5000 50  0001 C CNN
F 4 "https://www.tme.eu/pl/details/cc0805jrnpo9470/kondensatory-mlcc-smd-0805/yageo/cc0805jrnpo9bn470/" H 9600 5000 50  0001 C CNN "Shop link"
F 5 "Yageo" H 9600 5000 50  0001 C CNN "Manufacturer"
F 6 "CC0805JRNPO9BN470" H 9600 5000 50  0001 C CNN "Manufacturer Part No"
	1    9600 5000
	-1   0    0    1   
$EndComp
$Comp
L MuxPi_addon:ATmega328P-MU U1
U 1 1 5BE42264
P 5300 5450
F 0 "U1" H 4550 8317 50  0000 C CNN
F 1 "ATmega328P-MU" H 4550 8226 50  0000 C CNN
F 2 "Muxpi_footprints:WQFN-32-1EP_5x5mm_Pitch0.5mm" H 5400 5350 50  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/2caa6693de6bd1ab21d16c66b59bd952/Atmel-42735-8-bit--ATmega328-328P.pdf" H 5400 5350 50  0001 C CNN
F 4 "Atmel" H 5300 5450 50  0001 C CNN "Manufacturer"
F 5 "ATmega328P-MU" H 5300 5450 50  0001 C CNN "Manufacturer Part No"
	1    5300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5BE5281F
P 10750 1600
F 0 "#PWR05" H 10750 1450 50  0001 C CNN
F 1 "VDD" H 10767 1773 50  0000 C CNN
F 2 "" H 10750 1600 50  0001 C CNN
F 3 "" H 10750 1600 50  0001 C CNN
	1    10750 1600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:LED_ALT D4
U 1 1 5BE5282C
P 10400 1950
F 0 "D4" H 10600 1900 50  0000 R CNN
F 1 "KPT-2012EC" H 10650 1800 50  0000 R CNN
F 2 "Muxpi_footprints:D_0805" H 10400 1950 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10400 1950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10400 1950 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10400 1950 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10400 1950 50  0001 C CNN "Manufacturer Part No"
	1    10400 1950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:LED_ALT D3
U 1 1 5BE52839
P 10400 1600
F 0 "D3" H 10550 1550 50  0000 R CNN
F 1 "KPT-2012EC" H 10650 1700 50  0000 R CNN
F 2 "Muxpi_footprints:D_0805" H 10400 1600 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0a4307e0e1e070f4f6d553134056548e/kpt-2012.pdf" H 10400 1600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/kpt-2012ec/diody-led-smd-kolorowe/kingbright-electronic/" V 10400 1600 60  0001 C CNN "Shop link"
F 5 "KINGBRIGHT ELECTRONIC" H 10400 1600 50  0001 C CNN "Manufacturer"
F 6 "KPT-2012EC" H 10400 1600 50  0001 C CNN "Manufacturer Part No"
	1    10400 1600
	1    0    0    -1  
$EndComp
$Comp
L MuxPi_addon:R R10
U 1 1 5BE52846
P 9950 1600
F 0 "R10" V 9950 1600 50  0000 C CNN
F 1 "330R" V 9850 1600 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9880 1600 50  0001 C CNN
F 3 "" H 9950 1600 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 9950 1600 50  0001 C CNN "Shop link"
F 5 "Yageo" V 9950 1600 50  0001 C CNN "Manufacturer"
F 6 " RC0805JR-07330RL" V 9950 1600 50  0001 C CNN "Manufacturer Part No"
	1    9950 1600
	0    -1   1    0   
$EndComp
Wire Wire Line
	10100 1600 10250 1600
Wire Wire Line
	10550 1950 10750 1950
$Comp
L MuxPi_addon:R R11
U 1 1 5BE52855
P 9950 1950
F 0 "R11" V 9950 1950 50  0000 C CNN
F 1 "330R" V 10050 1950 50  0000 C CNN
F 2 "Muxpi_footprints:R_0805" V 9880 1950 50  0001 C CNN
F 3 "" H 9950 1950 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07330r/rezystory-smd-0805/yageo/rc0805jr-07330rl/" V 9950 1950 50  0001 C CNN "Shop link"
F 5 "Yageo" V 9950 1950 50  0001 C CNN "Manufacturer"
F 6 " RC0805JR-07330RL" V 9950 1950 50  0001 C CNN "Manufacturer Part No"
	1    9950 1950
	0    -1   1    0   
$EndComp
Wire Wire Line
	10100 1950 10250 1950
Wire Wire Line
	10550 1600 10750 1600
Wire Wire Line
	9450 1950 9800 1950
Wire Wire Line
	9450 1600 9800 1600
$Comp
L power:GND #PWR03
U 1 1 5BE6005F
P 9450 1600
F 0 "#PWR03" H 9450 1350 50  0001 C CNN
F 1 "GND" H 9455 1427 50  0000 C CNN
F 2 "" H 9450 1600 50  0001 C CNN
F 3 "" H 9450 1600 50  0001 C CNN
	1    9450 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BE6042C
P 9450 1950
F 0 "#PWR04" H 9450 1700 50  0001 C CNN
F 1 "GND" H 9455 1777 50  0000 C CNN
F 2 "" H 9450 1950 50  0001 C CNN
F 3 "" H 9450 1950 50  0001 C CNN
	1    9450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5BE60775
P 10750 1950
F 0 "#PWR06" H 10750 1800 50  0001 C CNN
F 1 "+5V" H 10765 2123 50  0000 C CNN
F 2 "" H 10750 1950 50  0001 C CNN
F 3 "" H 10750 1950 50  0001 C CNN
	1    10750 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
