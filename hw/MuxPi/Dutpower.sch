EESchema Schematic File Version 4
LIBS:MuxPi-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 12
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
L MuxPi:GND #PWR046
U 1 1 5849B387
P 3800 5850
F 0 "#PWR046" H 3800 5600 50  0001 C CNN
F 1 "GND" H 3800 5700 50  0000 C CNN
F 2 "" H 3800 5850 60  0000 C CNN
F 3 "" H 3800 5850 60  0000 C CNN
	1    3800 5850
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR044
U 1 1 5849B38D
P 3000 4650
F 0 "#PWR044" H 3000 4500 50  0001 C CNN
F 1 "VDD" H 3000 4800 50  0000 C CNN
F 2 "" H 3000 4650 60  0000 C CNN
F 3 "" H 3000 4650 60  0000 C CNN
	1    3000 4650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:D D1
U 1 1 5849B394
P 3400 5100
F 0 "D1" H 3400 5200 50  0000 C CNN
F 1 "ES1AL" H 3400 5000 50  0000 C CNN
F 2 "mux-footprints:Sub_SMA" H 3400 5100 60  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/6e3ed172b8ef57eec12ad172948b8283/ES1JL-DTE.pdf" H 3400 5100 60  0001 C CNN
F 4 "http://www.tme.eu/pl/details/es1jl/diody-uniwersalne-smd/taiwan-semiconductor/" H 3400 5100 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 3400 5100 50  0001 C CNN "Manufacturer"
F 6 "ES1JL" H 3400 5100 50  0001 C CNN "Symbol"
	1    3400 5100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:FUJITSU-JV-1-POLE RL1
U 1 1 5849B3A2
P 3400 4500
F 0 "RL1" V 3800 4150 50  0000 L CNN
F 1 "JV-5S-KT" H 3830 4455 50  0001 L CNN
F 2 "mux-footprints:Relay_SPST-NO_FUJITSU-JV" H 3400 4500 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/160416a7d37511bbe210dab3bc04735d/jv.pdf" H 3400 4500 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/jv-5s-kt/przekazniki-elektromagn-miniaturowe/fujitsu-takamisawa/" V 3400 4500 60  0001 C CNN "Shop link"
F 5 "FUJITSU-TAKAMISAWA" V 3400 4500 50  0001 C CNN "Manufacturer"
F 6 "JV-5S-KT" V 3400 4500 50  0001 C CNN "Symbol"
	1    3400 4500
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:GND #PWR045
U 1 1 5849B3B0
P 3250 5850
F 0 "#PWR045" H 3250 5600 50  0001 C CNN
F 1 "GND" H 3250 5700 50  0000 C CNN
F 2 "" H 3250 5850 60  0000 C CNN
F 3 "" H 3250 5850 60  0000 C CNN
	1    3250 5850
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P2
U 1 1 5849B3B6
P 1800 4000
F 0 "P2" H 1878 4041 50  0000 L CNN
F 1 "XY2500V-D(5.08)-2PIN" H 1878 3950 50  0000 L CNN
F 2 "mux-footprints:TerminalBlock_XY2500V-D(5.08)" H 1800 4000 50  0001 C CNN
F 3 "http://www.cresttech.com.au/pdf/Pluggable_connector.pdf" H 1800 4000 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/tbg-5-pw-2p-gn/listwy-zaciskowe-do-druku/xinya/xy2500v-d508-2pin/" H 1800 4000 60  0001 C CNN "Shop link"
F 5 "http://www.tme.eu/pl/details/tbw-5.08-2p/listwy-zaciskowe-do-druku/xinya/xy2500f-bv508-2p/" H 1800 4000 60  0001 C CNN "Complementary device"
F 6 "XINYA" H 1800 4000 50  0001 C CNN "Complementary manufacturer"
F 7 "XY2500F-BV(5.08)-2P" H 1800 4000 50  0001 C CNN "Complementary symbol"
F 8 "XINYA" H 1800 4000 50  0001 C CNN "Manufacturer"
F 9 "XY2500V-D(5.08)-2PIN" H 1800 4000 50  0001 C CNN "Symbol"
	1    1800 4000
	-1   0    0    -1  
$EndComp
$Comp
L MuxPi:ACS712 U4
U 1 1 5849B3CB
P 3400 2900
F 0 "U4" V 3100 2550 60  0000 R CNN
F 1 "ACS712ELCTR-05B-T" V 3000 2550 60  0000 R CNN
F 2 "mux-footprints:SOIC-8" H 1190 1790 60  0001 C CNN
F 3 "http://www.farnell.com/datasheets/64754.pdf?_ga=1.192000233.291132730.1474618953" H 1190 1790 60  0001 C CNN
F 4 "http://pl.farnell.com/allegro-microsystems/acs712elctr-05b-t/ic-sensor-current-5a-soic8/dp/1329623" V 3400 2900 60  0001 C CNN "Shop link"
F 5 "ALLEGRO MICROSYSTEMS" V 3400 2900 50  0001 C CNN "Manufacturer"
F 6 "ACS712ELCTR-05B-T " V 3400 2900 50  0001 C CNN "Symbol"
	1    3400 2900
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:VDD #PWR043
U 1 1 5849B3D2
P 3000 2400
F 0 "#PWR043" H 3000 2250 50  0001 C CNN
F 1 "VDD" H 3000 2550 50  0000 C CNN
F 2 "" H 3000 2400 60  0000 C CNN
F 3 "" H 3000 2400 60  0000 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR047
U 1 1 5849B3D8
P 4150 2500
F 0 "#PWR047" H 4150 2250 50  0001 C CNN
F 1 "GND" H 4150 2350 50  0000 C CNN
F 2 "" H 4150 2500 60  0000 C CNN
F 3 "" H 4150 2500 60  0000 C CNN
	1    4150 2500
	-1   0    0    -1  
$EndComp
Text Notes 650  750  0    60   ~ 0
DUT PWR CTRL
Text Notes 3950 3750 0    60   Italic 12
* DNP
Wire Wire Line
	3800 5600 3800 5850
Wire Wire Line
	3800 4700 3800 5100
Wire Wire Line
	2350 5450 3250 5450
Wire Wire Line
	3250 5500 3250 5450
Connection ~ 3250 5450
Wire Wire Line
	3250 5800 3250 5850
Wire Wire Line
	3000 4650 3000 4700
Wire Wire Line
	3000 4700 3100 4700
Wire Wire Line
	3000 5100 3250 5100
Connection ~ 3000 4700
Wire Wire Line
	3550 5100 3800 5100
Wire Wire Line
	3700 4700 3800 4700
Connection ~ 3800 5100
Wire Wire Line
	2000 4050 2750 4050
Wire Wire Line
	2750 4050 2750 4200
Wire Wire Line
	2750 4200 3100 4200
Wire Wire Line
	3450 2550 3450 2350
Wire Wire Line
	3450 2350 3500 2350
Wire Wire Line
	3800 2350 3850 2350
Wire Wire Line
	3850 2350 3850 2550
Wire Wire Line
	3000 2400 3000 2550
Wire Wire Line
	3150 3250 3150 3300
Wire Wire Line
	3150 3300 3200 3300
Wire Wire Line
	3250 3300 3250 3250
Wire Wire Line
	3550 3250 3550 3300
Wire Wire Line
	3550 3300 3600 3300
Wire Wire Line
	3650 3300 3650 3250
Wire Wire Line
	2000 3950 3200 3950
Wire Wire Line
	3200 3300 3200 3550
Connection ~ 3200 3300
Wire Wire Line
	3550 3950 3600 3950
Wire Wire Line
	3600 3300 3600 3550
Connection ~ 3600 3300
Wire Wire Line
	3350 2550 3350 2050
Wire Wire Line
	4150 2350 4150 2500
Connection ~ 3850 2350
Wire Wire Line
	4100 4300 3700 4300
Text HLabel 10200 2400 2    60   Input ~ 0
DUT_PWR_CURRENT
Text HLabel 2350 5450 0    60   Input ~ 0
POWER_SW_ON
Wire Wire Line
	4100 4050 4100 4300
Wire Wire Line
	3250 3550 3200 3550
Connection ~ 3200 3550
Connection ~ 3200 3750
Connection ~ 3600 3750
Wire Wire Line
	3550 3550 3600 3550
Connection ~ 3600 3550
Wire Wire Line
	3200 3750 3250 3750
Wire Wire Line
	3550 3750 3600 3750
Connection ~ 3600 3950
Connection ~ 3200 3950
Wire Notes Line
	3000 3400 3850 3400
Wire Notes Line
	3850 3400 3850 4050
Wire Notes Line
	3850 4050 3000 4050
Wire Notes Line
	3000 4050 3000 3400
Text Notes 3050 3550 0    60   Italic 12
*
$Comp
L MuxPi:C C18
U 1 1 584EEDA8
P 3650 2350
F 0 "C18" V 3800 2300 50  0000 L CNN
F 1 "100nF/50V" V 3500 2150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3688 2200 50  0001 C CNN
F 3 "" H 3650 2350 50  0000 C CNN
F 4 "http://www.tme.eu/pl/details/cc0805jrx7r9104/kondensatory-mlcc-smd-0805/yageo/cc0805jrx7r9bb104/" H 3650 2350 60  0001 C CNN "Shop link"
	1    3650 2350
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R9
U 1 1 584F0A75
P 3250 5650
F 0 "R9" V 3150 5650 50  0000 C CNN
F 1 "10K" V 3350 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3180 5650 30  0001 C CNN
F 3 "" H 3250 5650 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3250 5650 60  0001 C CNN "Shop link"
	1    3250 5650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R10
U 1 1 584F178E
P 3400 3550
F 0 "R10" V 3300 3550 50  0000 C CNN
F 1 "0R" V 3400 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 3550 30  0001 C CNN
F 3 "" H 3400 3550 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3400 3550 60  0001 C CNN "Shop link"
	1    3400 3550
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R11
U 1 1 584F18AF
P 3400 3750
F 0 "R11" V 3300 3750 50  0000 C CNN
F 1 "0R" V 3400 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 3750 30  0001 C CNN
F 3 "" H 3400 3750 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3400 3750 60  0001 C CNN "Shop link"
	1    3400 3750
	0    1    1    0   
$EndComp
$Comp
L MuxPi:R R12
U 1 1 584F18E9
P 3400 3950
F 0 "R12" V 3300 3950 50  0000 C CNN
F 1 "0R" V 3400 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3330 3950 30  0001 C CNN
F 3 "" H 3400 3950 30  0000 C CNN
F 4 "http://www.tme.eu/pl/details/smd0805-560r/rezystory-smd-0805/royal-ohm/0805s8j0561t5e/" V 3400 3950 60  0001 C CNN "Shop link"
	1    3400 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4050 4550 4050
Wire Wire Line
	4550 4050 4650 3950
Wire Wire Line
	4650 3950 5250 3950
Wire Wire Line
	4550 3950 4650 4050
Wire Wire Line
	4650 4050 5250 4050
Wire Wire Line
	3250 5450 3500 5450
Wire Wire Line
	3000 4700 3000 5100
Wire Wire Line
	3800 5100 3800 5200
Wire Wire Line
	3200 3300 3250 3300
Wire Wire Line
	3600 3300 3650 3300
Wire Wire Line
	3850 2350 4150 2350
Wire Wire Line
	3200 3550 3200 3750
Wire Wire Line
	3200 3750 3200 3950
Wire Wire Line
	3600 3750 3600 3950
Wire Wire Line
	3600 3550 3600 3750
Wire Wire Line
	3600 3950 4550 3950
Wire Wire Line
	3200 3950 3250 3950
Wire Wire Line
	7600 3000 7750 3000
Wire Wire Line
	7200 2650 7200 2700
$Comp
L MuxPi:R R74
U 1 1 5A9F2C03
P 7750 3300
F 0 "R74" V 7650 3300 50  0000 C CNN
F 1 "10K 1%" V 7850 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7680 3300 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 7750 3300 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-073k3/rezystory-smd-0805/yageo/rc0805fr-073k3l/" V 7750 3300 60  0001 C CNN "Shop link"
	1    7750 3300
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R70
U 1 1 5A9F2C0B
P 6300 3700
F 0 "R70" V 6200 3700 50  0000 C CNN
F 1 "10K 1%" V 6400 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 3700 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 6300 3700 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 6300 3700 60  0001 C CNN "Shop link"
	1    6300 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 3100 6900 3700
Wire Wire Line
	6900 3100 7000 3100
Wire Wire Line
	7750 3150 7750 3000
$Comp
L MuxPi:R R71
U 1 1 5AA00267
P 6600 2700
F 0 "R71" V 6500 2700 50  0000 C CNN
F 1 "30K 1%" V 6700 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 2700 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/7b8fed8c112f8a94930279c22c957f7f/rc0805yageo.pdf" H 6600 2700 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/rc0805fr-07100k/rezystory-smd-0805/yageo/rc0805fr-07100kl/" V 6600 2700 60  0001 C CNN "Shop link"
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R72
U 1 1 5AA01B90
P 6600 3100
F 0 "R72" V 6500 3100 50  0000 C CNN
F 1 "8.2K 1%" V 6700 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 3100 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/b315665a56acbc42df513c99b390ad98/ROYALOHM-THICKFILM.pdf" H 6600 3100 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/crcw08058k20fktabc/rezystory-smd-0805/vishay/" V 6600 3100 60  0001 C CNN "Shop link"
	1    6600 3100
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:GND #PWR0213
U 1 1 5AA04F80
P 6600 3800
F 0 "#PWR0213" H 6600 3550 50  0001 C CNN
F 1 "GND" H 6600 3650 50  0000 C CNN
F 2 "" H 6600 3800 60  0000 C CNN
F 3 "" H 6600 3800 60  0000 C CNN
	1    6600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3700 6450 3700
Wire Wire Line
	5900 3700 6150 3700
Wire Wire Line
	5900 3700 5900 2050
$Comp
L MuxPi:2N7002 Q1
U 1 1 5A8B550D
P 3700 5400
F 0 "Q1" H 3891 5446 50  0000 L CNN
F 1 "2N7002" H 3891 5355 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3900 5325 50  0001 L CIN
F 3 "https://www.nxp.com/documents/data_sheet/2N7002.pdf" H 3700 5400 50  0001 L CNN
F 4 "http://www.tme.eu/pl/details/2n7002/tranzystory-z-kanalem-n-smd/fairchild-semiconductor/" H 3700 5400 60  0001 C CNN "Shop link"
F 5 "ON SEMICONDUCTOR (FAIRCHILD)" H 3700 5400 50  0001 C CNN "Manufacturer"
F 6 "2N7002" H 3700 5400 50  0001 C CNN "Symbol"
	1    3700 5400
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:CONN_01X02 P3
U 1 1 5A8B8B5B
P 5450 4000
F 0 "P3" H 5528 4041 50  0000 L CNN
F 1 "XY2500V-D(5.08)-2PIN" H 5528 3950 50  0000 L CNN
F 2 "mux-footprints:TerminalBlock_XY2500V-D(5.08)" H 5450 4000 50  0001 C CNN
F 3 "http://www.cresttech.com.au/pdf/Pluggable_connector.pdf" H 5450 4000 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/tbg-5-pw-2p-gn/listwy-zaciskowe-do-druku/xinya/xy2500v-d508-2pin/" H 5450 4000 60  0001 C CNN "Shop link"
F 5 "http://www.tme.eu/pl/details/tbw-5.08-2p/listwy-zaciskowe-do-druku/xinya/xy2500f-bv508-2p/" H 5450 4000 60  0001 C CNN "Complementary device"
F 6 "XINYA" H 5450 4000 50  0001 C CNN "Complementary manufacturer"
F 7 "XY2500F-BV(5.08)-2P" H 5450 4000 50  0001 C CNN "Complementary symbol"
F 8 "XINYA" H 5450 4000 50  0001 C CNN "Manufacturer"
F 9 "XY2500V-D(5.08)-2PIN" H 5450 4000 50  0001 C CNN "Symbol"
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:MCP6002 U15
U 1 1 5A8BCDE3
P 7300 3000
F 0 "U15" H 7300 3200 50  0000 L CNN
F 1 "MCP6002-E/SN" H 6950 2700 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 7200 3050 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 7300 3150 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 7300 3000 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 7300 3000 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 7300 3000 50  0001 C CNN "Symbol"
	1    7300 3000
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR0199
U 1 1 5AE406E3
P 6600 2500
F 0 "#PWR0199" H 6600 2350 50  0001 C CNN
F 1 "VDD" H 6600 2650 50  0000 C CNN
F 2 "" H 6600 2500 60  0000 C CNN
F 3 "" H 6600 2500 60  0000 C CNN
	1    6600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2500 6600 2550
$Comp
L MuxPi:VDD #PWR0212
U 1 1 5AE44466
P 7200 2650
F 0 "#PWR0212" H 7200 2500 50  0001 C CNN
F 1 "VDD" H 7200 2800 50  0000 C CNN
F 2 "" H 7200 2650 60  0000 C CNN
F 3 "" H 7200 2650 60  0000 C CNN
	1    7200 2650
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:VDD #PWR0214
U 1 1 5AE46727
P 8850 2750
F 0 "#PWR0214" H 8850 2600 50  0001 C CNN
F 1 "VDD" H 8850 2900 50  0000 C CNN
F 2 "" H 8850 2750 60  0000 C CNN
F 3 "" H 8850 2750 60  0000 C CNN
	1    8850 2750
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:R R78
U 1 1 5AE828B8
P 8300 3200
F 0 "R78" V 8200 3200 50  0000 C CNN
F 1 "1K 1%" V 8400 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8230 3200 30  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/cd08025e8728292bb79d3f4577300b82/rezystor-smd.pdf" H 8300 3200 30  0001 C CNN
F 4 "https://www.tme.eu/pl/details/smd0805-1k-1%25/rezystory-smd-0805/royal-ohm/0805s8f1001t5e/" V 8300 3200 60  0001 C CNN "Shop link"
	1    8300 3200
	0    -1   -1   0   
$EndComp
$Comp
L MuxPi:GND #PWR0216
U 1 1 5AE9BB47
P 8600 3700
F 0 "#PWR0216" H 8600 3450 50  0001 C CNN
F 1 "GND" H 8600 3550 50  0000 C CNN
F 2 "" H 8600 3700 60  0000 C CNN
F 3 "" H 8600 3700 60  0000 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:D D13
U 1 1 5AEA63A0
P 9650 2650
F 0 "D13" H 9650 2750 50  0000 C CNN
F 1 "STPS1L30A" H 9650 2550 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 9650 2650 60  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/db6e659bbdb403bb0467e7bdd05bc1d0/STPS1L30A.pdf" H 9650 2650 60  0001 C CNN
F 4 "https://www.tme.eu/pl/details/stps1l30a/diody-schottky-smd/st-microelectronics/" H 9650 2650 60  0001 C CNN "Shop link"
F 5 "TAIWAN SEMICONDUCTOR" H 9650 2650 50  0001 C CNN "Manufacturer"
F 6 "STPS1L30A" H 9650 2650 50  0001 C CNN "Symbol"
	1    9650 2650
	0    1    1    0   
$EndComp
$Comp
L MuxPi:GND #PWR0218
U 1 1 5AEA854F
P 9650 2900
F 0 "#PWR0218" H 9650 2650 50  0001 C CNN
F 1 "GND" H 9650 2750 50  0000 C CNN
F 2 "" H 9650 2900 60  0000 C CNN
F 3 "" H 9650 2900 60  0000 C CNN
	1    9650 2900
	1    0    0    -1  
$EndComp
$Comp
L MuxPi:ICL7660 U16
U 1 1 5AEB2061
P 7190 4970
F 0 "U16" H 7215 5367 60  0000 C CNN
F 1 "ICL7660" H 7215 5261 60  0000 C CNN
F 2 "mux-footprints:SOIC-8" H 6940 4920 60  0001 C CNN
F 3 "https://www.tme.eu/pl/Document/a0cf339e6d3a59b4335a12ffe0a88af6/ICL7660x-DTE.pdf" H 6940 4920 60  0001 C CNN
	1    7190 4970
	1    0    0    -1  
$EndComp
NoConn ~ 6740 4820
NoConn ~ 7690 4920
NoConn ~ 7690 5020
$Comp
L MuxPi:GND #PWR0215
U 1 1 5AEB91A2
P 6660 5190
F 0 "#PWR0215" H 6660 4940 50  0001 C CNN
F 1 "GND" H 6660 5040 50  0000 C CNN
F 2 "" H 6660 5190 60  0000 C CNN
F 3 "" H 6660 5190 60  0000 C CNN
	1    6660 5190
	1    0    0    -1  
$EndComp
Wire Wire Line
	6660 5190 6660 5020
Wire Wire Line
	6660 5020 6740 5020
$Comp
L MuxPi:VDD #PWR0217
U 1 1 5AEBB4DD
P 7780 4720
F 0 "#PWR0217" H 7780 4570 50  0001 C CNN
F 1 "VDD" H 7780 4870 50  0000 C CNN
F 2 "" H 7780 4720 60  0000 C CNN
F 3 "" H 7780 4720 60  0000 C CNN
	1    7780 4720
	1    0    0    -1  
$EndComp
Wire Wire Line
	7780 4720 7780 4820
Wire Wire Line
	7780 4820 7690 4820
$Comp
L MuxPi:CP C81
U 1 1 5AEBFEEE
P 6370 4920
F 0 "C81" V 6210 4880 50  0000 L CNN
F 1 "10uF/10V" V 6500 4760 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 6408 4770 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 6370 4920 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 6370 4920 60  0001 C CNN "Shop link"
F 5 "KEMET" H 6370 4920 50  0001 C CNN "Manufacturer"
F 6 "T491A106M016AT" H 6370 4920 50  0001 C CNN "Symbol"
	1    6370 4920
	0    1    1    0   
$EndComp
Wire Wire Line
	6520 4920 6740 4920
Wire Wire Line
	6740 5120 6150 5120
Wire Wire Line
	6150 5120 6150 4920
Wire Wire Line
	6150 4920 6220 4920
Wire Wire Line
	7690 5120 7790 5120
$Comp
L MuxPi:CP C82
U 1 1 5AECFCE5
P 7790 5330
F 0 "C82" V 7630 5290 50  0000 L CNN
F 1 "10uF/10V" V 7920 5170 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 7828 5180 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/0ff508dea7a8224c6fb12ae10be076aa/KEM_T2005_T491.pdf" H 7790 5330 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/t491a106m016at/kondensatory-tantalowe-smd/kemet/" H 7790 5330 60  0001 C CNN "Shop link"
F 5 "KEMET" H 7790 5330 50  0001 C CNN "Manufacturer"
F 6 "T491A106M016AT" H 7790 5330 50  0001 C CNN "Symbol"
	1    7790 5330
	-1   0    0    1   
$EndComp
$Comp
L MuxPi:GND #PWR0219
U 1 1 5AECFE4C
P 7790 5550
F 0 "#PWR0219" H 7790 5300 50  0001 C CNN
F 1 "GND" H 7790 5400 50  0000 C CNN
F 2 "" H 7790 5550 60  0000 C CNN
F 3 "" H 7790 5550 60  0000 C CNN
	1    7790 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7790 5480 7790 5550
Wire Wire Line
	7790 5180 7790 5120
Connection ~ 7790 5120
Wire Wire Line
	7790 5120 8670 5120
Text Label 8670 5120 2    60   ~ 0
-VDD
Text Label 7580 3600 2    60   ~ 0
-VDD
Wire Wire Line
	3350 2050 5900 2050
$Comp
L MuxPi:MCP6002 U15
U 2 1 5A8BF6A4
P 8950 3100
F 0 "U15" H 8950 3300 50  0000 L CNN
F 1 "MCP6002-E/SN" H 8600 2800 50  0000 L CNN
F 2 "mux-footprints:SOIC-8" H 8850 3150 50  0001 C CNN
F 3 "http://www.tme.eu/pl/Document/c98656c49a036767b89c9bb93e3dda4a/mcp6001_2_4.pdf" H 8950 3250 50  0001 C CNN
F 4 "http://www.tme.eu/pl/details/mcp6002-e_sn/wzmacniacze-operacyjne-smd/microchip-technology/" H 8950 3100 60  0001 C CNN "Shop link"
F 5 "MICROCHIP TECHNOLOGY" H 8950 3100 50  0001 C CNN "Manufacturer"
F 6 "MCP6002-E/SN" H 8950 3100 50  0001 C CNN "Symbol"
	2    8950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3000 8050 3000
Connection ~ 7750 3000
Wire Wire Line
	7200 3300 7200 3600
Wire Wire Line
	7750 3450 7750 3700
Wire Wire Line
	7750 3700 6900 3700
Connection ~ 6900 3700
NoConn ~ 6600 3340
Wire Notes Line
	10100 1800 10100 5850
Wire Notes Line
	10100 5850 5700 5850
Wire Notes Line
	5700 5850 5700 3350
Wire Notes Line
	5700 3350 2700 3350
Wire Notes Line
	2700 3350 2700 1800
Wire Notes Line
	2700 1800 10100 1800
Text Notes 5750 5750 0    60   Italic 12
* CMC  (Current Measurement Circuitry)
Text Notes 650  6450 0    60   Italic 12
NOTE:
Text Notes 1000 6450 0    60   ~ 0
If you don't want current measurement functionality then populate DNP resistors and do not populate component marked as CMC.
Text Notes 650  1000 0    60   Italic 12
NOTE:
Text Notes 650  1150 0    60   ~ 0
Although power switching and current measurement is galvanically isolated from the rest of MuxPi's components,
Text Notes 650  1250 0    60   ~ 0
it is recommended to connect power supply for DUT to P3 connector with positive to its pin #1.
Text Notes 650  1350 0    60   ~ 0
This way you will still be able to power off the DUT even if its GND is somwhere else connected to MixPi's GND.
Text Notes 650  1450 0    60   ~ 0
Also it will make possible to measure current as CMC measures current flowing only in one direction.
Text Notes 7000 1000 0    60   Italic 12
NOTE:
Text Notes 7000 1250 0    60   ~ 0
of small value current measurement.
$Comp
L MuxPi:POT RV2
U 1 1 5B764616
P 6600 3500
F 0 "RV2" H 6530 3546 50  0000 R CNN
F 1 "5k" H 6530 3455 50  0000 R CNN
F 2 "MuxPi:Potentiometer_Trimmer_Bourns_3224W" H 6600 3500 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/36537/pot-53w.pdf" H 6600 3500 50  0001 C CNN
F 4 "https://www.maritex.com.pl/elementy_pasywne/potencjometry/wieloobrotowe/wieloobrotowe_smd/potencjometry_precyzyjne_wieloobrotowe_smd/pot53w502.html" H 6600 3500 50  0001 C CNN "Shop link"
F 5 "3224W-502-1LF" H 6600 3500 50  0001 C CNN "Symbol"
F 6 "ALLCONNE" H 6600 3500 50  0001 C CNN "Manufacturer"
	1    6600 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3650 6600 3800
Wire Wire Line
	6600 2850 6600 2900
Wire Wire Line
	7000 2900 6600 2900
Connection ~ 6600 2900
Wire Wire Line
	6600 2900 6600 2950
Wire Wire Line
	6600 3250 6600 3300
Wire Wire Line
	6600 3300 6800 3300
Wire Wire Line
	6800 3300 6800 3500
Wire Wire Line
	6800 3500 6750 3500
Wire Wire Line
	8600 3000 8650 3000
Wire Wire Line
	8450 3200 8550 3200
Wire Wire Line
	8050 3000 8050 3200
Wire Wire Line
	8050 3200 8150 3200
Connection ~ 8550 3200
Wire Wire Line
	8550 3200 8650 3200
Wire Wire Line
	9250 2400 9400 2400
Wire Wire Line
	9400 2400 9400 3100
Wire Wire Line
	9400 3100 9250 3100
Wire Wire Line
	9650 2800 9650 2900
Wire Wire Line
	9400 2400 9650 2400
Connection ~ 9400 2400
Wire Wire Line
	9650 2500 9650 2400
Connection ~ 9650 2400
Wire Wire Line
	9650 2400 10200 2400
Wire Wire Line
	8550 2200 9100 2200
Wire Wire Line
	9100 2200 9100 2250
Wire Wire Line
	8550 2200 8550 3200
NoConn ~ 8950 2400
$Comp
L MuxPi:POT RV3
U 1 1 5C397750
P 9100 2400
F 0 "RV3" H 9030 2446 50  0000 R CNN
F 1 "5k" H 9030 2355 50  0000 R CNN
F 2 "MuxPi:Potentiometer_Trimmer_Bourns_3224W" H 9100 2400 50  0001 C CNN
F 3 "https://www.maritex.com.pl/product/attachment/36537/pot-53w.pdf" H 9100 2400 50  0001 C CNN
F 4 "https://www.maritex.com.pl/elementy_pasywne/potencjometry/wieloobrotowe/wieloobrotowe_smd/potencjometry_precyzyjne_wieloobrotowe_smd/pot53w502.html" H 9100 2400 50  0001 C CNN "Shop link"
F 5 "3224W-502-1LF" H 9100 2400 50  0001 C CNN "Symbol"
F 6 "ALLCONNE" H 9100 2400 50  0001 C CNN "Manufacturer"
	1    9100 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 2750 8850 2800
Wire Wire Line
	7200 3600 8850 3600
Wire Wire Line
	8850 3600 8850 3400
Wire Wire Line
	8600 3000 8600 3700
Text Notes 7000 1150 0    60   ~ 0
U4 can be changed to ACS723* to increase acuracy
$EndSCHEMATC
