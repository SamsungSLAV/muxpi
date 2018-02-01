EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 12
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
L MuxPi:WS2812B LED1
U 1 1 5846661E
P 9800 3400
F 0 "LED1" H 9800 3500 50  0000 C CNN
F 1 "WS2812B" H 9800 3200 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 9800 3533 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d396dfe883872510aebef40d9961d842/WS2812B.pdf" H 9800 3350 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ws2812b/diody-led-smd-kolorowe/worldsemi/" H 9800 3400 60  0001 C CNN "Shop link"
	1    9800 3400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR036
U 1 1 58466625
P 9350 3350
F 0 "#PWR036" H 9350 3200 50  0001 C CNN
F 1 "VDD" H 9350 3500 50  0000 C CNN
F 2 "" H 9350 3350 60  0000 C CNN
F 3 "" H 9350 3350 60  0000 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR038
U 1 1 5846662B
P 10250 4050
F 0 "#PWR038" H 10250 3800 50  0001 C CNN
F 1 "GND" H 10250 3900 50  0000 C CNN
F 2 "" H 10250 4050 60  0000 C CNN
F 3 "" H 10250 4050 60  0000 C CNN
	1    10250 4050
	1    0    0    -1  
$EndComp
Text Label 8400 3500 0    60   ~ 0
TIM1_CH1
Wire Wire Line
	9350 3350 9350 3400
Wire Wire Line
	9350 3400 9400 3400
Wire Wire Line
	10200 3500 10250 3500
Wire Wire Line
	10250 3500 10250 4000
Wire Wire Line
	10200 3400 10350 3400
Wire Wire Line
	10350 3400 10350 3700
Wire Wire Line
	8400 3500 9000 3500
Wire Wire Line
	10250 4000 10200 4000
Connection ~ 10250 4000
Wire Wire Line
	9350 3900 9400 3900
Connection ~ 9350 3400
Wire Wire Line
	10350 3700 9250 3700
Wire Wire Line
	9250 3700 9250 4000
Wire Wire Line
	9250 4000 9400 4000
$Comp
L MuxPi:OLED128x32 U3
U 1 1 5846665F
P 8950 1650
F 0 "U3" H 8950 2365 50  0000 C CNN
F 1 "OLED-AG-128032DY-Y (YELLOW)" H 9150 2250 50  0000 C CNN
F 2 "mux-footprints:OLED-128x32-0.91Inch" H 9200 1150 50  0001 R TNN
F 3 "http://www.buydisplay.com/download/manual/ER-OLED0.91-1_Series_Datasheet.pdf" H 9400 2900 50  0001 C CNN
F 4 "http://www.artronic.com.pl/oferta.php?id=851&d=1&idp=0&" H 8950 1650 60  0001 C CNN "Shop link"
	1    8950 1650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR032
U 1 1 58466666
P 8400 1100
F 0 "#PWR032" H 8400 950 50  0001 C CNN
F 1 "+3V3" H 8400 1240 50  0000 C CNN
F 2 "" H 8400 1100 60  0000 C CNN
F 3 "" H 8400 1100 60  0000 C CNN
	1    8400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1100 8400 1200
Wire Wire Line
	8400 1300 8500 1300
Wire Wire Line
	8500 1200 8400 1200
Connection ~ 8400 1200
$Comp
L MuxPi:R R5
U 1 1 58466670
P 8300 1900
F 0 "R5" V 8300 1500 50  0000 C CNN
F 1 "390k" V 8200 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8230 1900 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 8300 1900 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07390k/rezystory-smd-0805/yageo/rc0805jr-07390kl/" V 8300 1900 60  0001 C CNN "Shop link"
	1    8300 1900
	0    1    -1   0   
$EndComp
Wire Wire Line
	8450 1900 8500 1900
$Comp
L MuxPi:C C11
U 1 1 58466678
P 8300 1500
F 0 "C11" V 8250 1300 50  0000 L CNN
F 1 "2.2u/16V" V 8250 850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8338 1350 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/e45476bf270793f696988c4e93ce1237/ASC_General_Purpose.pdf" H 8300 1500 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/0805f225z160ct/kondensatory-mlcc-smd-0805/walsin/" V 8300 1500 60  0001 C CNN "Shop link"
	1    8300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8450 1700 8500 1700
Wire Wire Line
	8450 1500 8500 1500
Wire Wire Line
	8150 1500 8050 1500
Wire Wire Line
	8050 1500 8050 1700
$Comp
L MuxPi:GND #PWR029
U 1 1 5846668A
P 8050 2250
F 0 "#PWR029" H 8050 2000 50  0001 C CNN
F 1 "GND" H 8050 2100 50  0000 C CNN
F 2 "" H 8050 2250 60  0000 C CNN
F 3 "" H 8050 2250 60  0000 C CNN
	1    8050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2100 8050 2100
Connection ~ 8050 2100
Wire Wire Line
	8150 1900 8050 1900
Connection ~ 8050 1900
Wire Wire Line
	8150 1700 8050 1700
Connection ~ 8050 1700
Wire Wire Line
	9400 1900 9850 1900
Wire Wire Line
	9850 1900 9850 1800
Wire Wire Line
	9850 1800 9750 1800
Wire Wire Line
	9400 1800 9450 1800
Wire Wire Line
	9400 2000 9450 2000
Wire Wire Line
	9750 2000 9850 2000
Wire Wire Line
	9850 2000 9850 2100
Wire Wire Line
	9850 2100 9400 2100
Text Label 10000 1600 2    60   ~ 0
SPI1_MOSI
Wire Wire Line
	9400 1600 10000 1600
Text Label 10000 1500 2    60   ~ 0
SPI1_SCK
Wire Wire Line
	9400 1500 10000 1500
Text Label 10000 1200 2    60   ~ 0
SPI1_NSS
Wire Wire Line
	9400 1200 10000 1200
Wire Wire Line
	9400 1300 10000 1300
Text Label 9550 1300 0    60   ~ 0
OLED_~RES
Wire Wire Line
	9400 1400 10000 1400
Text Label 9550 1400 0    60   ~ 0
OLED_~D/C
$Comp
L MuxPi:GND #PWR011
U 1 1 584699CB
P 1700 7350
F 0 "#PWR011" H 1700 7100 50  0001 C CNN
F 1 "GND" H 1700 7200 50  0000 C CNN
F 2 "" H 1700 7350 60  0000 C CNN
F 3 "" H 1700 7350 60  0000 C CNN
	1    1700 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR013
U 1 1 584699D8
P 2050 7350
F 0 "#PWR013" H 2050 7100 50  0001 C CNN
F 1 "GND" H 2050 7200 50  0000 C CNN
F 2 "" H 2050 7350 60  0000 C CNN
F 3 "" H 2050 7350 60  0000 C CNN
	1    2050 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR012
U 1 1 584699EB
P 2050 6950
F 0 "#PWR012" H 2050 6800 50  0001 C CNN
F 1 "+3V3" H 2050 7090 50  0000 C CNN
F 2 "" H 2050 6950 60  0000 C CNN
F 3 "" H 2050 6950 60  0000 C CNN
	1    2050 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:STM32F030C6Tx U?
U 1 1 584699F1
P 1950 6050
AR Path="/584699F1" Ref="U?"  Part="1" 
AR Path="/58464F82/584699F1" Ref="U1"  Part="1" 
F 0 "U1" H 2000 6615 50  0000 C CNN
F 1 "STM32F030C6T6" H 2000 6524 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 2600 4700 50  0001 R TNN
F 3 "http://www.farnell.com/datasheets/1883133.pdf?_ga=1.15381877.291132730.1474618953" H 2450 7150 50  0001 C CNN
F 4 "http://pl.farnell.com/stmicroelectronics/stm32f030c6t6/mcu-32bit-cortex-m0-48mhz-lqfp/dp/2393632" H 1950 6050 60  0001 C CNN "Shop link"
	1    1950 6050
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:STM32F030C6Tx U?
U 2 1 584699F8
P 4300 2100
AR Path="/584699F8" Ref="U?"  Part="2" 
AR Path="/58464F82/584699F8" Ref="U1"  Part="2" 
F 0 "U1" H 4300 3465 50  0000 C CNN
F 1 "STM32F030C6T6" H 4300 3374 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 4950 750 50  0001 R TNN
F 3 "http://www.farnell.com/datasheets/1883133.pdf?_ga=1.92009049.291132730.1474618953" H 4800 3200 50  0001 C CNN
F 4 "http://pl.farnell.com/stmicroelectronics/stm32f030c6t6/mcu-32bit-cortex-m0-48mhz-lqfp/dp/2393632" H 4300 2100 60  0001 C CNN "Shop link"
	2    4300 2100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR05
U 1 1 584699FF
P 1500 5500
F 0 "#PWR05" H 1500 5350 50  0001 C CNN
F 1 "+3V3" H 1500 5640 50  0000 C CNN
F 2 "" H 1500 5500 60  0000 C CNN
F 3 "" H 1500 5500 60  0000 C CNN
	1    1500 5500
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR017
U 1 1 58469A05
P 2500 6350
F 0 "#PWR017" H 2500 6100 50  0001 C CNN
F 1 "GND" H 2500 6200 50  0000 C CNN
F 2 "" H 2500 6350 60  0000 C CNN
F 3 "" H 2500 6350 60  0000 C CNN
	1    2500 6350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR016
U 1 1 58469A0B
P 2400 7350
F 0 "#PWR016" H 2400 7100 50  0001 C CNN
F 1 "GND" H 2400 7200 50  0000 C CNN
F 2 "" H 2400 7350 60  0000 C CNN
F 3 "" H 2400 7350 60  0000 C CNN
	1    2400 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR015
U 1 1 58469A18
P 2400 6950
F 0 "#PWR015" H 2400 6800 50  0001 C CNN
F 1 "+3V3" H 2400 7090 50  0000 C CNN
F 2 "" H 2400 6950 60  0000 C CNN
F 3 "" H 2400 6950 60  0000 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CP C8
U 1 1 58469A1E
P 3050 7150
F 0 "C8" H 3075 7250 50  0000 L CNN
F 1 "1uF/20V" H 3075 7050 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 3088 7000 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 3050 7150 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a105k020at/kondensatory-tantalowe-smd/kemet/" H 3050 7150 60  0001 C CNN "Shop link"
	1    3050 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR024
U 1 1 58469A25
P 3050 7350
F 0 "#PWR024" H 3050 7100 50  0001 C CNN
F 1 "GND" H 3050 7200 50  0000 C CNN
F 2 "" H 3050 7350 60  0000 C CNN
F 3 "" H 3050 7350 60  0000 C CNN
	1    3050 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR07
U 1 1 58469A31
P 1150 1650
F 0 "#PWR07" H 1150 1400 50  0001 C CNN
F 1 "GND" H 1300 1600 50  0000 C CNN
F 2 "" H 1150 1650 60  0000 C CNN
F 3 "" H 1150 1650 60  0000 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR06
U 1 1 58469A3E
P 1150 700
F 0 "#PWR06" H 1150 550 50  0001 C CNN
F 1 "+3V3" H 1150 840 50  0000 C CNN
F 2 "" H 1150 700 60  0000 C CNN
F 3 "" H 1150 700 60  0000 C CNN
	1    1150 700 
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R1
U 1 1 58469A44
P 1150 950
F 0 "R1" V 1050 950 50  0000 C CNN
F 1 "100K" V 1250 950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1080 950 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 1150 950 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07100k/rezystory-smd-0805/yageo/rc0805jr-07100kl/" V 1150 950 60  0001 C CNN "Shop link"
	1    1150 950 
	1    0    0    -1  
$EndComp
Text Label 1550 1200 2    60   ~ 0
NRST
Text Label 2900 2800 0    60   ~ 0
NRST
$Comp
L MuxPi:GND #PWR022
U 1 1 58469A54
P 2800 3950
F 0 "#PWR022" H 2800 3700 50  0001 C CNN
F 1 "GND" H 2800 3800 50  0000 C CNN
F 2 "" H 2800 3950 60  0000 C CNN
F 3 "" H 2800 3950 60  0000 C CNN
	1    2800 3950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR014
U 1 1 58469A61
P 2300 3950
F 0 "#PWR014" H 2300 3700 50  0001 C CNN
F 1 "GND" H 2300 3800 50  0000 C CNN
F 2 "" H 2300 3950 60  0000 C CNN
F 3 "" H 2300 3950 60  0000 C CNN
	1    2300 3950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C7
U 1 1 58469A67
P 2300 3750
F 0 "C7" H 2150 3850 50  0000 L CNN
F 1 "20pF/50V" H 2325 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2338 3600 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2300 3750 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21c200jbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2300 3750 60  0001 C CNN "Shop link"
	1    2300 3750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R2
U 1 1 58469A6E
P 3150 3200
F 0 "R2" V 3200 3000 50  0000 C CNN
F 1 "0R" V 3250 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3080 3200 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/622e28308c06d160637f2b14751ba16b/Data%20Sheet%20CRCW_BCe3.pdf" H 3150 3200 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/crcw08050000z0tabc/rezystory-smd-0805/vishay/" V 3150 3200 60  0001 C CNN "Shop link"
	1    3150 3200
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:R R3
U 1 1 58469A75
P 3450 3300
F 0 "R3" V 3400 3100 50  0000 C CNN
F 1 "390R" V 3350 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3380 3300 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 3450 3300 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-07390r/rezystory-smd-0805/yageo/rc0805jr-07390rl/" V 3450 3300 60  0001 C CNN "Shop link"
	1    3450 3300
	0    -1   -1   0   
$EndComp
Text Label 5450 2500 2    60   ~ 0
SWCLK
Text Label 5450 2400 2    60   ~ 0
SWDIO
$Comp
L MuxPi:CONN_01X06 P1
U 1 1 58469A7E
P 850 2300
F 0 "P1" H 928 2341 50  0000 L CNN
F 1 "DS1021-1*6SF1-1" H 928 2250 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 850 2300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/cc301e58a5da78cb543a94b5a5b7f06a/DS1021.pdf" H 850 2300 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/zl201-06g/listwy-i-gniazda-kolkowe/connfly/ds1021-1_6sf1-1/" H 850 2300 60  0001 C CNN "Shop link"
	1    850  2300
	-1   0    0    -1  
$EndComp
Text Label 1550 2150 2    60   ~ 0
SWCLK
$Comp
L MuxPi:+3V3 #PWR08
U 1 1 58469A86
P 1150 2000
F 0 "#PWR08" H 1150 1850 50  0001 C CNN
F 1 "+3V3" H 1150 2140 50  0000 C CNN
F 2 "" H 1150 2000 60  0000 C CNN
F 3 "" H 1150 2000 60  0000 C CNN
	1    1150 2000
	-1   0    0    -1  
$EndComp
Text Label 1550 2350 2    60   ~ 0
SWDIO
Text Label 1550 2450 2    60   ~ 0
NRST
$Comp
L MuxPi:GND #PWR09
U 1 1 58469A8E
P 1150 2600
F 0 "#PWR09" H 1150 2350 50  0001 C CNN
F 1 "GND" H 1150 2450 50  0000 C CNN
F 2 "" H 1150 2600 60  0000 C CNN
F 3 "" H 1150 2600 60  0000 C CNN
	1    1150 2600
	-1   0    0    -1  
$EndComp
NoConn ~ 1050 2550
$Comp
L MuxPi:GND #PWR02
U 1 1 58469A9A
P 1050 7350
F 0 "#PWR02" H 1050 7100 50  0001 C CNN
F 1 "GND" H 1050 7200 50  0000 C CNN
F 2 "" H 1050 7350 60  0000 C CNN
F 3 "" H 1050 7350 60  0000 C CNN
	1    1050 7350
	1    0    0    -1  
$EndComp
Text Label 5450 1700 2    60   ~ 0
SPI1_MOSI
Text Label 3150 1000 0    60   ~ 0
TIM1_CH1
$Comp
L MuxPi:VDD #PWR01
U 1 1 58469AA9
P 1050 6950
F 0 "#PWR01" H 1050 6800 50  0001 C CNN
F 1 "VDD" H 1050 7100 50  0000 C CNN
F 2 "" H 1050 6950 60  0000 C CNN
F 3 "" H 1050 6950 60  0000 C CNN
	1    1050 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR04
U 1 1 58469AAF
P 1350 7350
F 0 "#PWR04" H 1350 7100 50  0001 C CNN
F 1 "GND" H 1350 7200 50  0000 C CNN
F 2 "" H 1350 7350 60  0000 C CNN
F 3 "" H 1350 7350 60  0000 C CNN
	1    1350 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR03
U 1 1 58469ABC
P 1350 6950
F 0 "#PWR03" H 1350 6800 50  0001 C CNN
F 1 "VDD" H 1350 7100 50  0000 C CNN
F 2 "" H 1350 6950 60  0000 C CNN
F 3 "" H 1350 6950 60  0000 C CNN
	1    1350 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6950 1700 7000
Wire Wire Line
	1700 7300 1700 7350
Wire Wire Line
	2050 6950 2050 7000
Wire Wire Line
	2050 7300 2050 7350
Wire Wire Line
	1500 6150 1600 6150
Wire Wire Line
	1500 5500 1500 5750
Wire Wire Line
	1600 5950 1500 5950
Connection ~ 1500 5950
Wire Wire Line
	1600 5850 1500 5850
Connection ~ 1500 5850
Wire Wire Line
	1600 5750 1500 5750
Connection ~ 1500 5750
Wire Wire Line
	2400 5750 2500 5750
Wire Wire Line
	2500 5750 2500 5850
Wire Wire Line
	2400 5850 2500 5850
Connection ~ 2500 5850
Wire Wire Line
	2400 6150 2500 6150
Connection ~ 2500 6150
Wire Wire Line
	2400 6950 2400 7000
Wire Wire Line
	2400 7300 2400 7350
Wire Wire Line
	3050 6950 3050 7000
Wire Wire Line
	3050 7300 3050 7350
Wire Wire Line
	1150 3000 3750 3000
Wire Wire Line
	1150 1100 1150 1200
Wire Wire Line
	1150 1600 1150 1650
Wire Wire Line
	1150 700  1150 800 
Wire Wire Line
	1150 1200 1550 1200
Connection ~ 1150 1200
Wire Wire Line
	2900 2800 3750 2800
Wire Wire Line
	2800 3900 2800 3950
Wire Wire Line
	2300 3900 2300 3950
Wire Wire Line
	2300 3200 2300 3500
Wire Wire Line
	2300 3200 3000 3200
Wire Wire Line
	2800 3300 2800 3500
Wire Wire Line
	2800 3300 3300 3300
Wire Wire Line
	2400 3500 2300 3500
Connection ~ 2300 3500
Wire Wire Line
	2700 3500 2800 3500
Connection ~ 2800 3500
Wire Wire Line
	3300 3200 3750 3200
Wire Wire Line
	3600 3300 3750 3300
Wire Wire Line
	4850 2500 5450 2500
Wire Wire Line
	4850 2400 5450 2400
Wire Wire Line
	1050 2150 1550 2150
Wire Wire Line
	1150 2000 1150 2050
Wire Wire Line
	1150 2050 1050 2050
Wire Wire Line
	1050 2350 1550 2350
Wire Wire Line
	1050 2450 1550 2450
Wire Wire Line
	1150 2600 1150 2250
Wire Wire Line
	1150 2250 1050 2250
Wire Wire Line
	3750 2100 2900 2100
Wire Wire Line
	3750 2200 2900 2200
Wire Wire Line
	4850 1000 5650 1000
Wire Wire Line
	4850 1100 5650 1100
Wire Wire Line
	4850 1200 5650 1200
Wire Wire Line
	1050 6950 1050 7000
Wire Wire Line
	1050 7300 1050 7350
Wire Wire Line
	3750 1000 3150 1000
Wire Wire Line
	5450 1700 4850 1700
Wire Wire Line
	1350 6950 1350 7000
Wire Wire Line
	1350 7300 1350 7350
Wire Wire Line
	2900 1100 3750 1100
Wire Wire Line
	2900 1700 3750 1700
Wire Wire Line
	3750 1200 2900 1200
Wire Wire Line
	4850 2000 5650 2000
Wire Wire Line
	4850 2100 5650 2100
$Comp
L MuxPi:+3V3 #PWR023
U 1 1 58469B09
P 3050 6950
F 0 "#PWR023" H 3050 6800 50  0001 C CNN
F 1 "+3V3" H 3050 7090 50  0000 C CNN
F 2 "" H 3050 6950 60  0000 C CNN
F 3 "" H 3050 6950 60  0000 C CNN
	1    3050 6950
	1    0    0    -1  
$EndComp
Text Label 5450 1400 2    60   ~ 0
SPI1_NSS
Wire Wire Line
	4850 1400 5450 1400
Text Label 5450 1500 2    60   ~ 0
SPI1_SCK
Wire Wire Line
	4850 1500 5450 1500
Wire Wire Line
	4850 1600 5450 1600
Text Label 5450 1600 2    60   ~ 0
OLED_~RES
Wire Wire Line
	4850 1300 5450 1300
Text Label 5450 1300 2    60   ~ 0
OLED_~D/C
Text Label 2900 2400 0    60   ~ 0
USER_BUTTON1
Wire Wire Line
	2900 2400 3750 2400
Text Label 2900 2300 0    60   ~ 0
USER_BUTTON2
Wire Wire Line
	2900 2300 3750 2300
$Comp
L MuxPi:SW_SPST SW1
U 1 1 5846A911
P 8450 5700
F 0 "SW1" V 8496 5612 50  0000 R CNN
F 1 "DTSM-62N-V-B" V 7950 5900 50  0000 R CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 8450 5700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/07dad2bf5ecc0fffa24432cc9f8b10fa/dtsm.pdf" H 8450 5700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/dtsm-62n-v-b/mikroprzelaczniki-tact-pcb/diptronics/" V 8450 5700 60  0001 C CNN "Shop link"
	1    8450 5700
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:GND #PWR031
U 1 1 5846A918
P 8100 5950
F 0 "#PWR031" H 8100 5700 50  0001 C CNN
F 1 "GND" H 8100 5800 50  0000 C CNN
F 2 "" H 8100 5950 60  0000 C CNN
F 3 "" H 8100 5950 60  0000 C CNN
	1    8100 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR030
U 1 1 5846A925
P 8100 4950
F 0 "#PWR030" H 8100 4800 50  0001 C CNN
F 1 "+3V3" H 8100 5090 50  0000 C CNN
F 2 "" H 8100 4950 60  0000 C CNN
F 3 "" H 8100 4950 60  0000 C CNN
	1    8100 4950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R4
U 1 1 5846A92B
P 8100 5200
F 0 "R4" V 8000 5200 50  0000 C CNN
F 1 "10K" V 8200 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8030 5200 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 8100 5200 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 8100 5200 60  0001 C CNN "Shop link"
	1    8100 5200
	1    0    0    -1  
$EndComp
Text Label 8950 5450 2    60   ~ 0
USER_BUTTON1
Wire Wire Line
	8100 5350 8100 5450
Wire Wire Line
	8100 5850 8100 5950
Wire Wire Line
	8100 4950 8100 5050
Wire Wire Line
	8100 5450 8450 5450
Connection ~ 8100 5450
Wire Wire Line
	8450 5500 8450 5450
Connection ~ 8450 5450
$Comp
L MuxPi:GND #PWR033
U 1 1 5846A93A
P 8450 5950
F 0 "#PWR033" H 8450 5700 50  0001 C CNN
F 1 "GND" H 8450 5800 50  0000 C CNN
F 2 "" H 8450 5950 60  0000 C CNN
F 3 "" H 8450 5950 60  0000 C CNN
	1    8450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5900 8450 5950
$Comp
L MuxPi:GND #PWR035
U 1 1 5846A948
P 9100 5950
F 0 "#PWR035" H 9100 5700 50  0001 C CNN
F 1 "GND" H 9100 5800 50  0000 C CNN
F 2 "" H 9100 5950 60  0000 C CNN
F 3 "" H 9100 5950 60  0000 C CNN
	1    9100 5950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR034
U 1 1 5846A955
P 9100 4950
F 0 "#PWR034" H 9100 4800 50  0001 C CNN
F 1 "+3V3" H 9100 5090 50  0000 C CNN
F 2 "" H 9100 4950 60  0000 C CNN
F 3 "" H 9100 4950 60  0000 C CNN
	1    9100 4950
	1    0    0    -1  
$EndComp
Text Label 9950 5450 2    60   ~ 0
USER_BUTTON2
Wire Wire Line
	9100 5350 9100 5450
Wire Wire Line
	9100 5850 9100 5950
Wire Wire Line
	9100 4950 9100 5050
Wire Wire Line
	9100 5450 9450 5450
Connection ~ 9100 5450
Wire Wire Line
	9450 5500 9450 5450
Connection ~ 9450 5450
$Comp
L MuxPi:GND #PWR037
U 1 1 5846A96A
P 9450 5950
F 0 "#PWR037" H 9450 5700 50  0001 C CNN
F 1 "GND" H 9450 5800 50  0000 C CNN
F 2 "" H 9450 5950 60  0000 C CNN
F 3 "" H 9450 5950 60  0000 C CNN
	1    9450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5900 9450 5950
NoConn ~ 10200 3900
Text HLabel 2900 2100 0    60   Input ~ 0
HDMI_SCL
Text HLabel 2900 2200 0    60   Input ~ 0
HDMI_SDA
Text HLabel 2900 1100 0    60   Input ~ 0
POWER_SW_ON
Text HLabel 2900 1700 0    60   Input ~ 0
SOCKET_SEL
Text HLabel 2900 1200 0    60   Input ~ 0
HDMI_HOT_PLUG
Text HLabel 5650 2100 2    60   Input ~ 0
ST_USART1_RX
Text HLabel 5650 2000 2    60   Input ~ 0
ST_USART1_TX
Text HLabel 5650 1200 2    60   Input ~ 0
ADC2
Text HLabel 5650 1100 2    60   Input ~ 0
ADC1
Text HLabel 5650 1000 2    60   Input ~ 0
DUT_PWR_CURRENT
Wire Wire Line
	4850 2200 5650 2200
Wire Wire Line
	4850 2300 5650 2300
Text HLabel 5650 2200 2    60   Input ~ 0
DYPER_1
Text HLabel 5650 2300 2    60   Input ~ 0
DYPER_2
Wire Wire Line
	3750 1300 2900 1300
Text HLabel 2900 1300 0    60   Input ~ 0
ST_GPIO_1
Wire Wire Line
	3750 1400 2900 1400
Text HLabel 2900 1400 0    60   Input ~ 0
ST_GPIO_2
Wire Wire Line
	3750 1500 2900 1500
Text HLabel 2900 1500 0    60   Input ~ 0
ST_GPIO_3
Wire Wire Line
	3750 1600 2900 1600
Text HLabel 2900 1600 0    60   Input ~ 0
~SD_CD_TS
NoConn ~ 4850 1900
NoConn ~ 3750 2500
NoConn ~ 3750 2600
NoConn ~ 4850 2600
NoConn ~ 4850 3200
NoConn ~ 4850 3300
$Comp
L MuxPi:C C1
U 1 1 585019EA
P 1050 7150
F 0 "C1" H 900 7300 50  0000 L CNN
F 1 "100nF/50V" V 900 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1088 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1050 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1050 7150 60  0001 C CNN "Shop link"
	1    1050 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R8
U 1 1 5850C480
P 9100 5200
F 0 "R8" V 9000 5200 50  0000 C CNN
F 1 "10K" V 9200 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 9030 5200 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 9100 5200 30  0001 C CNN
F 4 "http://www.tme.eu/pl/details/rc0805jr-0710k/rezystory-smd-0805/yageo/rc0805jr-0710kl/" V 9100 5200 60  0001 C CNN "Shop link"
	1    9100 5200
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C2
U 1 1 5850F51C
P 1350 7150
F 0 "C2" H 1200 7300 50  0000 L CNN
F 1 "100nF/50V" V 1200 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1388 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1350 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1350 7150 60  0001 C CNN "Shop link"
	1    1350 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C4
U 1 1 5850F590
P 1700 7150
F 0 "C4" H 1550 7300 50  0000 L CNN
F 1 "100nF/50V" V 1550 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1738 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1700 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1700 7150 60  0001 C CNN "Shop link"
	1    1700 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C5
U 1 1 5850F60B
P 2050 7150
F 0 "C5" H 1900 7300 50  0000 L CNN
F 1 "100nF/50V" V 1900 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2088 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2050 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2050 7150 60  0001 C CNN "Shop link"
	1    2050 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C6
U 1 1 5850F687
P 2400 7150
F 0 "C6" H 2250 7300 50  0000 L CNN
F 1 "100nF/50V" V 2250 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2438 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2400 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2400 7150 60  0001 C CNN "Shop link"
	1    2400 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C10
U 1 1 5850FCB2
P 8100 5700
F 0 "C10" H 7950 5850 50  0000 L CNN
F 1 "100nF/50V" V 7950 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8138 5550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 8100 5700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 8100 5700 60  0001 C CNN "Shop link"
	1    8100 5700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C13
U 1 1 585101CD
P 9100 5700
F 0 "C13" H 8950 5850 50  0000 L CNN
F 1 "100nF/50V" V 8950 5350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9138 5550 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 9100 5700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 9100 5700 60  0001 C CNN "Shop link"
	1    9100 5700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C3
U 1 1 58510604
P 1150 1450
F 0 "C3" H 1300 1550 50  0000 L CNN
F 1 "100nF/50V" V 950 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1188 1300 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 1150 1450 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 1150 1450 60  0001 C CNN "Shop link"
	1    1150 1450
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C9
U 1 1 58512090
P 2800 3750
F 0 "C9" H 2850 3850 50  0000 L CNN
F 1 "20pF/50V" H 2825 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2838 3600 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2800 3750 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21c200jbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2800 3750 60  0001 C CNN "Shop link"
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:C C12
U 1 1 58513AB9
P 8300 1700
F 0 "C12" V 8250 1500 50  0000 L CNN
F 1 "2.2u/16V" V 8250 1050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 8338 1550 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/e45476bf270793f696988c4e93ce1237/ASC_General_Purpose.pdf" H 8300 1700 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/0805f225z160ct/kondensatory-mlcc-smd-0805/walsin/" V 8300 1700 60  0001 C CNN "Shop link"
	1    8300 1700
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C14
U 1 1 58513B30
P 9600 1800
F 0 "C14" V 9550 1600 50  0000 L CNN
F 1 "2.2u/16V" V 9550 1850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9638 1650 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/e45476bf270793f696988c4e93ce1237/ASC_General_Purpose.pdf" H 9600 1800 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/0805f225z160ct/kondensatory-mlcc-smd-0805/walsin/" V 9600 1800 60  0001 C CNN "Shop link"
	1    9600 1800
	0    1    1    0   
$EndComp
$Comp
L MuxPi:C C15
U 1 1 58513BD4
P 9600 2000
F 0 "C15" V 9550 1800 50  0000 L CNN
F 1 "2.2u/16V" V 9550 2050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 9638 1850 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/e45476bf270793f696988c4e93ce1237/ASC_General_Purpose.pdf" H 9600 2000 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/0805f225z160ct/kondensatory-mlcc-smd-0805/walsin/" V 9600 2000 60  0001 C CNN "Shop link"
	1    9600 2000
	0    1    1    0   
$EndComp
$Comp
L MuxPi:WS2812B LED2
U 1 1 584FD9D3
P 9800 3900
F 0 "LED2" H 9800 4000 50  0000 C CNN
F 1 "WS2812B" H 9800 3700 50  0000 C CNN
F 2 "LEDs:LED_WS2812B-PLCC4" H 9800 4033 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/d396dfe883872510aebef40d9961d842/WS2812B.pdf" H 9800 3850 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/ws2812b/diody-led-smd-kolorowe/worldsemi/" H 9800 3900 60  0001 C CNN "Shop link"
	1    9800 3900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:SW_SPST SW2
U 1 1 5850008E
P 9450 5700
F 0 "SW2" V 9496 5612 50  0000 R CNN
F 1 "DTSM-62N-V-B" V 9405 5612 50  0000 R CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 9450 5700 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/07dad2bf5ecc0fffa24432cc9f8b10fa/dtsm.pdf" H 9450 5700 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/dtsm-62n-v-b/mikroprzelaczniki-tact-pcb/diptronics/" V 9450 5700 60  0001 C CNN "Shop link"
	1    9450 5700
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:+3V3 #PWR010
U 1 1 584699E5
P 1700 6950
F 0 "#PWR010" H 1700 6800 50  0001 C CNN
F 1 "+3V3" H 1700 7090 50  0000 C CNN
F 2 "" H 1700 6950 60  0000 C CNN
F 3 "" H 1700 6950 60  0000 C CNN
	1    1700 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR021
U 1 1 585C93D2
P 2750 7350
F 0 "#PWR021" H 2750 7100 50  0001 C CNN
F 1 "GND" H 2750 7200 50  0000 C CNN
F 2 "" H 2750 7350 60  0000 C CNN
F 3 "" H 2750 7350 60  0000 C CNN
	1    2750 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR020
U 1 1 585C93D8
P 2750 6950
F 0 "#PWR020" H 2750 6800 50  0001 C CNN
F 1 "+3V3" H 2750 7090 50  0000 C CNN
F 2 "" H 2750 6950 60  0000 C CNN
F 3 "" H 2750 6950 60  0000 C CNN
	1    2750 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 6950 2750 7000
Wire Wire Line
	2750 7300 2750 7350
$Comp
L MuxPi:C C73
U 1 1 585C93E1
P 2750 7150
F 0 "C73" H 2600 7300 50  0000 L CNN
F 1 "100nF/50V" V 2600 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2788 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 2750 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 2750 7150 60  0001 C CNN "Shop link"
	1    2750 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CP C75
U 1 1 585D0367
P 4000 7150
F 0 "C75" H 4025 7250 50  0000 L CNN
F 1 "1uF/20V" H 4025 7050 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:Tantalum_Case-A_EIA-3216-18_Reflow" H 4038 7000 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 4000 7150 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a105k020at/kondensatory-tantalowe-smd/kemet/" H 4000 7150 60  0001 C CNN "Shop link"
	1    4000 7150
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR028
U 1 1 585D036D
P 4000 7350
F 0 "#PWR028" H 4000 7100 50  0001 C CNN
F 1 "GND" H 4000 7200 50  0000 C CNN
F 2 "" H 4000 7350 60  0000 C CNN
F 3 "" H 4000 7350 60  0000 C CNN
	1    4000 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6950 4000 7000
Wire Wire Line
	4000 7300 4000 7350
$Comp
L MuxPi:+3V3 #PWR027
U 1 1 585D0375
P 4000 6950
F 0 "#PWR027" H 4000 6800 50  0001 C CNN
F 1 "+3V3" H 4000 7090 50  0000 C CNN
F 2 "" H 4000 6950 60  0000 C CNN
F 3 "" H 4000 6950 60  0000 C CNN
	1    4000 6950
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR026
U 1 1 585D037B
P 3700 7350
F 0 "#PWR026" H 3700 7100 50  0001 C CNN
F 1 "GND" H 3700 7200 50  0000 C CNN
F 2 "" H 3700 7350 60  0000 C CNN
F 3 "" H 3700 7350 60  0000 C CNN
	1    3700 7350
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:+3V3 #PWR025
U 1 1 585D0381
P 3700 6950
F 0 "#PWR025" H 3700 6800 50  0001 C CNN
F 1 "+3V3" H 3700 7090 50  0000 C CNN
F 2 "" H 3700 6950 60  0000 C CNN
F 3 "" H 3700 6950 60  0000 C CNN
	1    3700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6950 3700 7000
Wire Wire Line
	3700 7300 3700 7350
$Comp
L MuxPi:C C74
U 1 1 585D038A
P 3700 7150
F 0 "C74" H 3550 7300 50  0000 L CNN
F 1 "100nF/50V" V 3550 6800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3738 7000 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/4a42202b32dab16128fe107dd69598cc/samsung-chip-cap.pdf" H 3700 7150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/cl21b331kbannnc/kondensatory-mlcc-smd-0805/samsung/" H 3700 7150 60  0001 C CNN "Shop link"
	1    3700 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1900 3750 1900
Text HLabel 2900 1900 0    60   Input ~ 0
WD_RESET
Wire Wire Line
	2900 2000 3750 2000
Text HLabel 2900 2000 0    60   Input ~ 0
UART_PWM
Wire Wire Line
	4850 2800 5650 2800
Text HLabel 5650 2800 2    60   Input ~ 0
LTHOR_SWITCH
Wire Wire Line
	4850 2900 5650 2900
Text HLabel 5650 2900 2    60   Input ~ 0
LTHOR_ID
Wire Wire Line
	4850 3000 5650 3000
Text HLabel 5650 3000 2    60   Input ~ 0
LTHOR_VBUS
$Comp
L MuxPi:4pinCrystal Y1
U 1 1 58DA9A2D
P 2550 3500
F 0 "Y1" H 2741 3546 50  0000 L CNN
F 1 "ABM3B-8.000MHZ-10-1-U-T" H 2050 2700 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_5032-4pin_5.0x3.2mm" H 2741 3409 50  0001 L CNN
F 3 "http://www.tme.eu/pl/Document/a887f863d547643a986feb1a84bac6c0/abm3b.pdf" H 2741 3364 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/abm3b-8.000mhz-10/rezonatory-kwarcowe-smd/abracon/abm3b-8000mhz-10-1-u-t/" H 2550 3500 60  0001 C CNN "Shop link"
	1    2550 3500
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR019
U 1 1 58DAA5FD
P 2550 3650
F 0 "#PWR019" H 2550 3400 50  0001 C CNN
F 1 "GND" H 2550 3500 50  0001 C CNN
F 2 "" H 2550 3650 60  0000 C CNN
F 3 "" H 2550 3650 60  0000 C CNN
	1    2550 3650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR018
U 1 1 58DAA64C
P 2550 3350
F 0 "#PWR018" H 2550 3100 50  0001 C CNN
F 1 "GND" H 2550 3200 50  0001 C CNN
F 2 "" H 2550 3350 60  0000 C CNN
F 3 "" H 2550 3350 60  0000 C CNN
	1    2550 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	10250 4000 10250 4050
Wire Wire Line
	9350 3400 9350 3900
Wire Wire Line
	8400 1200 8400 1300
Wire Wire Line
	8050 2100 8050 2250
Wire Wire Line
	8050 1900 8050 2100
Wire Wire Line
	8050 1700 8050 1900
Wire Wire Line
	1500 5950 1500 6150
Wire Wire Line
	1500 5850 1500 5950
Wire Wire Line
	1500 5750 1500 5850
Wire Wire Line
	2500 5850 2500 6150
Wire Wire Line
	2500 6150 2500 6350
Wire Wire Line
	1150 1200 1150 1300
Wire Wire Line
	2300 3500 2300 3600
Wire Wire Line
	2800 3500 2800 3600
Wire Wire Line
	8100 5450 8100 5550
Wire Wire Line
	8450 5450 8950 5450
Wire Wire Line
	9100 5450 9100 5550
Wire Wire Line
	9450 5450 9950 5450
$Comp
L MuxPi:R R59
U 1 1 5A5FE94C
P 9000 3300
F 0 "R59" V 8900 3300 50  0000 C CNN
F 1 "4.7K" V 9100 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8930 3300 30  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 9000 3300 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805jr-074k7/rezystory-smd-0805/yageo/rc0805jr-074k7l/" V 9000 3300 60  0001 C CNN "Shop link"
	1    9000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3450 9000 3500
Connection ~ 9000 3500
Wire Wire Line
	9000 3500 9400 3500
$Comp
L MuxPi:+5V #PWR0202
U 1 1 5A63A394
P 9000 3100
F 0 "#PWR0202" H 9000 2950 50  0001 C CNN
F 1 "+5V" H 9015 3273 50  0000 C CNN
F 2 "" H 9000 3100 50  0001 C CNN
F 3 "" H 9000 3100 50  0001 C CNN
	1    9000 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3100 9000 3150
$Comp
L MuxPi:Jumper_NO_Small JP4
U 1 1 5A64C931
P 1150 3200
F 0 "JP4" V 1150 3248 50  0000 L CNN
F 1 "Jumper_NO_Small" V 1195 3248 50  0001 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1150 3200 50  0001 C CNN
F 3 "" H 1150 3200 50  0001 C CNN
	1    1150 3200
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0203
U 1 1 5A64EB70
P 1150 3350
F 0 "#PWR0203" H 1150 3100 50  0001 C CNN
F 1 "GND" H 1150 3200 50  0000 C CNN
F 2 "" H 1150 3350 60  0000 C CNN
F 3 "" H 1150 3350 60  0000 C CNN
	1    1150 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 3300 1150 3350
Text HLabel 1050 3000 0    60   Input ~ 0
PI_GPIO_1
Wire Wire Line
	1050 3000 1150 3000
Wire Wire Line
	1150 3000 1150 3100
Connection ~ 1150 3000
$EndSCHEMATC
