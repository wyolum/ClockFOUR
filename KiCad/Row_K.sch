EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 14
Title "ClockFOUR"
Date "1 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1150 5650 0    60   Output ~ 0
DO_K
Text HLabel 1150 2750 0    60   Input ~ 0
GND
Text HLabel 1150 1300 0    60   Input ~ 0
DI_K
Text HLabel 1150 3150 0    60   Input ~ 0
5V
$Comp
L GND #PWR024
U 1 1 542C17A6
P 1350 2800
F 0 "#PWR024" H 1350 2800 30  0001 C CNN
F 1 "GND" H 1350 2730 30  0001 C CNN
F 2 "" H 1350 2800 60  0001 C CNN
F 3 "" H 1350 2800 60  0001 C CNN
	1    1350 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C151
U 1 1 542C17B4
P 1900 2950
F 0 "C151" H 1925 3050 50  0000 L CNN
F 1 "100n" H 1925 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1900 2950 50  0001 C CNN
F 3 "" H 1900 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1900 3150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1900 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1900 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 1900 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1900 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 1900 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1900 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1900 3850 60  0001 L CNN "Field11"
	1    1900 2950
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U142
U 1 1 542C17BA
P 1725 1975
F 0 "U142" V 1475 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 2125 1975 60  0000 C CNN
F 2 "" H 1725 1975 60  0000 C CNN
F 3 "" H 1725 1975 60  0000 C CNN
	1    1725 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U143
U 1 1 542C17C0
P 3125 1975
F 0 "U143" V 2875 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 3525 1975 60  0000 C CNN
F 2 "" H 3125 1975 60  0000 C CNN
F 3 "" H 3125 1975 60  0000 C CNN
	1    3125 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U144
U 1 1 542C17C6
P 4525 1975
F 0 "U144" V 4275 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 4925 1975 60  0000 C CNN
F 2 "" H 4525 1975 60  0000 C CNN
F 3 "" H 4525 1975 60  0000 C CNN
	1    4525 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U145
U 1 1 542C17CC
P 5925 1975
F 0 "U145" V 5675 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 6325 1975 60  0000 C CNN
F 2 "" H 5925 1975 60  0000 C CNN
F 3 "" H 5925 1975 60  0000 C CNN
	1    5925 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U146
U 1 1 542C17D2
P 7325 1975
F 0 "U146" V 7075 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 7725 1975 60  0000 C CNN
F 2 "" H 7325 1975 60  0000 C CNN
F 3 "" H 7325 1975 60  0000 C CNN
	1    7325 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U147
U 1 1 542C17D8
P 8725 1975
F 0 "U147" V 8475 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 9125 1975 60  0000 C CNN
F 2 "" H 8725 1975 60  0000 C CNN
F 3 "" H 8725 1975 60  0000 C CNN
	1    8725 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U148
U 1 1 542C17DE
P 10125 1975
F 0 "U148" V 9875 1975 60  0000 C CNN
F 1 "RGB_WS2812B" V 10525 1975 60  0000 C CNN
F 2 "" H 10125 1975 60  0000 C CNN
F 3 "" H 10125 1975 60  0000 C CNN
	1    10125 1975
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U149
U 1 1 542C17E4
P 1725 4375
F 0 "U149" V 1475 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 2125 4375 60  0000 C CNN
F 2 "" H 1725 4375 60  0000 C CNN
F 3 "" H 1725 4375 60  0000 C CNN
	1    1725 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U150
U 1 1 542C17EA
P 3125 4375
F 0 "U150" V 2875 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 3525 4375 60  0000 C CNN
F 2 "" H 3125 4375 60  0000 C CNN
F 3 "" H 3125 4375 60  0000 C CNN
	1    3125 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U151
U 1 1 542C17F0
P 4525 4375
F 0 "U151" V 4275 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 4925 4375 60  0000 C CNN
F 2 "" H 4525 4375 60  0000 C CNN
F 3 "" H 4525 4375 60  0000 C CNN
	1    4525 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U152
U 1 1 542C17F6
P 5925 4375
F 0 "U152" V 5675 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 6325 4375 60  0000 C CNN
F 2 "" H 5925 4375 60  0000 C CNN
F 3 "" H 5925 4375 60  0000 C CNN
	1    5925 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U153
U 1 1 542C17FC
P 7325 4375
F 0 "U153" V 7075 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 7725 4375 60  0000 C CNN
F 2 "" H 7325 4375 60  0000 C CNN
F 3 "" H 7325 4375 60  0000 C CNN
	1    7325 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U154
U 1 1 542C1802
P 8725 4375
F 0 "U154" V 8475 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 9125 4375 60  0000 C CNN
F 2 "" H 8725 4375 60  0000 C CNN
F 3 "" H 8725 4375 60  0000 C CNN
	1    8725 4375
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U155
U 1 1 542C1808
P 10125 4375
F 0 "U155" V 9875 4375 60  0000 C CNN
F 1 "RGB_WS2812B" V 10525 4375 60  0000 C CNN
F 2 "" H 10125 4375 60  0000 C CNN
F 3 "" H 10125 4375 60  0000 C CNN
	1    10125 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2750 1350 2800
Wire Wire Line
	1150 1300 1800 1300
Wire Wire Line
	1800 1300 1800 1400
Connection ~ 1350 2750
Wire Wire Line
	2000 1400 2000 1300
Wire Wire Line
	2000 1300 3200 1300
Wire Wire Line
	3200 1300 3200 1400
Wire Wire Line
	3400 1400 3400 1300
Wire Wire Line
	3400 1300 4600 1300
Wire Wire Line
	4600 1300 4600 1400
Wire Wire Line
	4800 1400 4800 1300
Wire Wire Line
	4800 1300 6000 1300
Wire Wire Line
	6000 1300 6000 1400
Wire Wire Line
	6200 1400 6200 1300
Wire Wire Line
	6200 1300 7400 1300
Wire Wire Line
	7400 1300 7400 1400
Wire Wire Line
	7600 1400 7600 1300
Wire Wire Line
	7600 1300 8800 1300
Wire Wire Line
	8800 1300 8800 1400
Wire Wire Line
	9000 1400 9000 1300
Wire Wire Line
	9000 1300 10200 1300
Wire Wire Line
	10200 1300 10200 1400
Wire Wire Line
	10400 1400 10400 1300
Wire Wire Line
	10400 1300 10800 1300
Wire Wire Line
	10800 3500 1800 3500
Wire Wire Line
	1800 3500 1800 3800
Wire Wire Line
	2000 3800 2000 3700
Wire Wire Line
	2000 3700 3200 3700
Wire Wire Line
	3200 3700 3200 3800
Wire Wire Line
	3400 3800 3400 3700
Wire Wire Line
	3400 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3800
Wire Wire Line
	4800 3800 4800 3700
Wire Wire Line
	4800 3700 6000 3700
Wire Wire Line
	6000 3700 6000 3800
Wire Wire Line
	6200 3800 6200 3700
Wire Wire Line
	6200 3700 7400 3700
Wire Wire Line
	7400 3700 7400 3800
Wire Wire Line
	7600 3800 7600 3700
Wire Wire Line
	7600 3700 8800 3700
Wire Wire Line
	8800 3700 8800 3800
Wire Wire Line
	9000 3800 9000 3700
Wire Wire Line
	9000 3700 10200 3700
Wire Wire Line
	10200 3700 10200 3800
Wire Wire Line
	10400 3800 10400 3700
Wire Wire Line
	10400 3700 10800 3700
Wire Wire Line
	10800 3700 10800 5650
Wire Wire Line
	10800 5650 1150 5650
Wire Wire Line
	10800 1300 10800 3500
Wire Wire Line
	1150 2750 10400 2750
Wire Wire Line
	10400 2750 10400 2600
Wire Wire Line
	1150 3150 10300 3150
Wire Wire Line
	2000 2600 2000 2750
Connection ~ 2000 2750
Wire Wire Line
	3400 2600 3400 2750
Connection ~ 3400 2750
Wire Wire Line
	4800 2600 4800 2750
Connection ~ 4800 2750
Wire Wire Line
	6200 2600 6200 2750
Connection ~ 6200 2750
Wire Wire Line
	7600 2600 7600 2750
Connection ~ 7600 2750
Wire Wire Line
	9000 2600 9000 2750
Connection ~ 9000 2750
Wire Wire Line
	10200 3150 10200 2600
Wire Wire Line
	8800 2600 8800 3150
Connection ~ 8800 3150
Wire Wire Line
	7400 2600 7400 3150
Connection ~ 7400 3150
Wire Wire Line
	6000 2600 6000 3150
Connection ~ 6000 3150
Wire Wire Line
	4600 2600 4600 3150
Connection ~ 4600 3150
Wire Wire Line
	3200 2600 3200 3150
Connection ~ 3200 3150
Wire Wire Line
	1800 2600 1800 3150
Connection ~ 1800 3150
$Comp
L C2 C152
U 1 1 542C1863
P 3300 2950
F 0 "C152" H 3325 3050 50  0000 L CNN
F 1 "100n" H 3325 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3300 2950 50  0001 C CNN
F 3 "" H 3300 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3300 3150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3300 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3300 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 3300 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3300 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 3300 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3300 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3300 3850 60  0001 L CNN "Field11"
	1    3300 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C153
U 1 1 542C1871
P 4700 2950
F 0 "C153" H 4725 3050 50  0000 L CNN
F 1 "100n" H 4725 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4700 2950 50  0001 C CNN
F 3 "" H 4700 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4700 3150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4700 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4700 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 4700 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4700 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 4700 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4700 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4700 3850 60  0001 L CNN "Field11"
	1    4700 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C154
U 1 1 542C187F
P 6100 2950
F 0 "C154" H 6125 3050 50  0000 L CNN
F 1 "100n" H 6125 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6100 2950 50  0001 C CNN
F 3 "" H 6100 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6100 3150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6100 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6100 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 6100 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6100 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 6100 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6100 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6100 3850 60  0001 L CNN "Field11"
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C155
U 1 1 542C188D
P 7500 2950
F 0 "C155" H 7525 3050 50  0000 L CNN
F 1 "100n" H 7525 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7500 2950 50  0001 C CNN
F 3 "" H 7500 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7500 3150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7500 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7500 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 7500 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7500 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 7500 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7500 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7500 3850 60  0001 L CNN "Field11"
	1    7500 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C156
U 1 1 542C189B
P 8900 2950
F 0 "C156" H 8925 3050 50  0000 L CNN
F 1 "100n" H 8925 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8900 2950 50  0001 C CNN
F 3 "" H 8900 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8900 3150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8900 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8900 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 8900 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8900 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 8900 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8900 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8900 3850 60  0001 L CNN "Field11"
	1    8900 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C157
U 1 1 542C18A9
P 10300 2950
F 0 "C157" H 10325 3050 50  0000 L CNN
F 1 "100n" H 10325 2850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10300 2950 50  0001 C CNN
F 3 "" H 10300 2950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10300 3150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10300 3250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10300 3350 60  0001 L CNN "Field6"
F 7 "Kemet" H 10300 3450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10300 3550 60  0001 L CNN "Field8"
F 9 "Digikey" H 10300 3650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10300 3750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10300 3850 60  0001 L CNN "Field11"
	1    10300 2950
	1    0    0    -1  
$EndComp
Connection ~ 10200 3150
$Comp
L C2 C158
U 1 1 542C18B8
P 1900 5300
F 0 "C158" H 1925 5400 50  0000 L CNN
F 1 "100n" H 1925 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1900 5300 50  0001 C CNN
F 3 "" H 1900 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1900 5500 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1900 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1900 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 1900 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1900 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 1900 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1900 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1900 6200 60  0001 L CNN "Field11"
	1    1900 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2750 1450 5100
Wire Wire Line
	1450 5100 10400 5100
Wire Wire Line
	2000 5100 2000 5000
Wire Wire Line
	10400 5100 10400 5000
Connection ~ 2000 5100
Wire Wire Line
	9000 5100 9000 5000
Connection ~ 9000 5100
Wire Wire Line
	7600 5100 7600 5000
Connection ~ 7600 5100
Wire Wire Line
	6200 5100 6200 5000
Connection ~ 6200 5100
Wire Wire Line
	4800 5100 4800 5000
Connection ~ 4800 5100
Wire Wire Line
	3400 5100 3400 5000
Connection ~ 3400 5100
Connection ~ 1900 5100
Connection ~ 7500 2750
Connection ~ 8900 2750
Connection ~ 6100 2750
Connection ~ 6100 3150
Connection ~ 7500 3150
Connection ~ 8900 3150
Connection ~ 10300 2750
Connection ~ 10300 3150
Connection ~ 4700 2750
Connection ~ 4700 3150
Connection ~ 3300 3150
Connection ~ 3300 2750
Connection ~ 1900 2750
Connection ~ 1900 3150
Wire Wire Line
	1300 3150 1300 5500
Wire Wire Line
	1300 5500 10300 5500
Connection ~ 1300 3150
Wire Wire Line
	10200 5000 10200 5500
Connection ~ 1900 5500
Wire Wire Line
	8800 5000 8800 5500
Connection ~ 8800 5500
Wire Wire Line
	7400 5000 7400 5500
Connection ~ 7400 5500
Wire Wire Line
	6000 5000 6000 5500
Connection ~ 6000 5500
Wire Wire Line
	4600 5000 4600 5500
Connection ~ 4600 5500
Wire Wire Line
	3200 5000 3200 5500
Connection ~ 3200 5500
Wire Wire Line
	1800 5000 1800 5500
Connection ~ 1800 5500
$Comp
L C2 C159
U 1 1 542C18F5
P 3300 5300
F 0 "C159" H 3325 5400 50  0000 L CNN
F 1 "100n" H 3325 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3300 5300 50  0001 C CNN
F 3 "" H 3300 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3300 5500 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3300 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3300 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 3300 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3300 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 3300 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3300 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3300 6200 60  0001 L CNN "Field11"
	1    3300 5300
	1    0    0    -1  
$EndComp
$Comp
L C2 C160
U 1 1 542C1903
P 4700 5300
F 0 "C160" H 4725 5400 50  0000 L CNN
F 1 "100n" H 4725 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4700 5300 50  0001 C CNN
F 3 "" H 4700 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4700 5500 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4700 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4700 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 4700 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4700 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 4700 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4700 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4700 6200 60  0001 L CNN "Field11"
	1    4700 5300
	1    0    0    -1  
$EndComp
$Comp
L C2 C161
U 1 1 542C1911
P 6100 5300
F 0 "C161" H 6125 5400 50  0000 L CNN
F 1 "100n" H 6125 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6100 5300 50  0001 C CNN
F 3 "" H 6100 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6100 5500 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6100 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6100 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 6100 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6100 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 6100 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6100 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6100 6200 60  0001 L CNN "Field11"
	1    6100 5300
	1    0    0    -1  
$EndComp
$Comp
L C2 C162
U 1 1 542C191F
P 7500 5300
F 0 "C162" H 7525 5400 50  0000 L CNN
F 1 "100n" H 7525 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7500 5300 50  0001 C CNN
F 3 "" H 7500 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7500 5500 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7500 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7500 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 7500 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7500 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 7500 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7500 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7500 6200 60  0001 L CNN "Field11"
	1    7500 5300
	1    0    0    -1  
$EndComp
$Comp
L C2 C163
U 1 1 542C192D
P 8900 5300
F 0 "C163" H 8925 5400 50  0000 L CNN
F 1 "100n" H 8925 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8900 5300 50  0001 C CNN
F 3 "" H 8900 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8900 5500 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8900 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8900 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 8900 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8900 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 8900 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8900 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8900 6200 60  0001 L CNN "Field11"
	1    8900 5300
	1    0    0    -1  
$EndComp
$Comp
L C2 C164
U 1 1 542C193B
P 10300 5300
F 0 "C164" H 10325 5400 50  0000 L CNN
F 1 "100n" H 10325 5200 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10300 5300 50  0001 C CNN
F 3 "" H 10300 5300 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10300 5500 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10300 5600 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10300 5700 60  0001 L CNN "Field6"
F 7 "Kemet" H 10300 5800 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10300 5900 60  0001 L CNN "Field8"
F 9 "Digikey" H 10300 6000 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10300 6100 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10300 6200 60  0001 L CNN "Field11"
	1    10300 5300
	1    0    0    -1  
$EndComp
Connection ~ 10300 5500
Connection ~ 10300 5100
Connection ~ 8900 5500
Connection ~ 8900 5100
Connection ~ 7500 5100
Connection ~ 7500 5500
Connection ~ 6100 5500
Connection ~ 6100 5100
Connection ~ 4700 5100
Connection ~ 4700 5500
Connection ~ 3300 5500
Connection ~ 3300 5100
Connection ~ 10200 5500
Connection ~ 1450 2750
$EndSCHEMATC
