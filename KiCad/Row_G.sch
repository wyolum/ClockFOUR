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
Sheet 8 14
Title "ClockFOUR"
Date "1 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 5400 0    60   Output ~ 0
DO_G
Text HLabel 1100 2500 0    60   Input ~ 0
GND
Text HLabel 1100 1050 0    60   Input ~ 0
DI_G
Text HLabel 1100 2900 0    60   Input ~ 0
5V
$Comp
L GND #PWR020
U 1 1 542C0F92
P 1300 2550
F 0 "#PWR020" H 1300 2550 30  0001 C CNN
F 1 "GND" H 1300 2480 30  0001 C CNN
F 2 "" H 1300 2550 60  0001 C CNN
F 3 "" H 1300 2550 60  0001 C CNN
	1    1300 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C95
U 1 1 542C0FA0
P 1850 2700
F 0 "C95" H 1875 2800 50  0000 L CNN
F 1 "100n" H 1875 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 2700 50  0001 C CNN
F 3 "" H 1850 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1850 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 3600 60  0001 L CNN "Field11"
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U86
U 1 1 542C0FA6
P 1675 1725
F 0 "U86" V 1425 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 2075 1725 60  0000 C CNN
F 2 "" H 1675 1725 60  0000 C CNN
F 3 "" H 1675 1725 60  0000 C CNN
	1    1675 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U87
U 1 1 542C0FAC
P 3075 1725
F 0 "U87" V 2825 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 3475 1725 60  0000 C CNN
F 2 "" H 3075 1725 60  0000 C CNN
F 3 "" H 3075 1725 60  0000 C CNN
	1    3075 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U88
U 1 1 542C0FB2
P 4475 1725
F 0 "U88" V 4225 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 4875 1725 60  0000 C CNN
F 2 "" H 4475 1725 60  0000 C CNN
F 3 "" H 4475 1725 60  0000 C CNN
	1    4475 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U89
U 1 1 542C0FB8
P 5875 1725
F 0 "U89" V 5625 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 6275 1725 60  0000 C CNN
F 2 "" H 5875 1725 60  0000 C CNN
F 3 "" H 5875 1725 60  0000 C CNN
	1    5875 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U90
U 1 1 542C0FBE
P 7275 1725
F 0 "U90" V 7025 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 7675 1725 60  0000 C CNN
F 2 "" H 7275 1725 60  0000 C CNN
F 3 "" H 7275 1725 60  0000 C CNN
	1    7275 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U91
U 1 1 542C0FC4
P 8675 1725
F 0 "U91" V 8425 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 9075 1725 60  0000 C CNN
F 2 "" H 8675 1725 60  0000 C CNN
F 3 "" H 8675 1725 60  0000 C CNN
	1    8675 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U92
U 1 1 542C0FCA
P 10075 1725
F 0 "U92" V 9825 1725 60  0000 C CNN
F 1 "RGB_WS2812B" V 10475 1725 60  0000 C CNN
F 2 "" H 10075 1725 60  0000 C CNN
F 3 "" H 10075 1725 60  0000 C CNN
	1    10075 1725
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U93
U 1 1 542C0FD0
P 1675 4125
F 0 "U93" V 1425 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 2075 4125 60  0000 C CNN
F 2 "" H 1675 4125 60  0000 C CNN
F 3 "" H 1675 4125 60  0000 C CNN
	1    1675 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U94
U 1 1 542C0FD6
P 3075 4125
F 0 "U94" V 2825 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 3475 4125 60  0000 C CNN
F 2 "" H 3075 4125 60  0000 C CNN
F 3 "" H 3075 4125 60  0000 C CNN
	1    3075 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U95
U 1 1 542C0FDC
P 4475 4125
F 0 "U95" V 4225 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 4875 4125 60  0000 C CNN
F 2 "" H 4475 4125 60  0000 C CNN
F 3 "" H 4475 4125 60  0000 C CNN
	1    4475 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U96
U 1 1 542C0FE2
P 5875 4125
F 0 "U96" V 5625 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 6275 4125 60  0000 C CNN
F 2 "" H 5875 4125 60  0000 C CNN
F 3 "" H 5875 4125 60  0000 C CNN
	1    5875 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U97
U 1 1 542C0FE8
P 7275 4125
F 0 "U97" V 7025 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 7675 4125 60  0000 C CNN
F 2 "" H 7275 4125 60  0000 C CNN
F 3 "" H 7275 4125 60  0000 C CNN
	1    7275 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U98
U 1 1 542C0FEE
P 8675 4125
F 0 "U98" V 8425 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 9075 4125 60  0000 C CNN
F 2 "" H 8675 4125 60  0000 C CNN
F 3 "" H 8675 4125 60  0000 C CNN
	1    8675 4125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U99
U 1 1 542C0FF4
P 10075 4125
F 0 "U99" V 9825 4125 60  0000 C CNN
F 1 "RGB_WS2812B" V 10475 4125 60  0000 C CNN
F 2 "" H 10075 4125 60  0000 C CNN
F 3 "" H 10075 4125 60  0000 C CNN
	1    10075 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2500 1300 2550
Wire Wire Line
	1100 1050 1750 1050
Wire Wire Line
	1750 1050 1750 1150
Connection ~ 1300 2500
Wire Wire Line
	1950 1150 1950 1050
Wire Wire Line
	1950 1050 3150 1050
Wire Wire Line
	3150 1050 3150 1150
Wire Wire Line
	3350 1150 3350 1050
Wire Wire Line
	3350 1050 4550 1050
Wire Wire Line
	4550 1050 4550 1150
Wire Wire Line
	4750 1150 4750 1050
Wire Wire Line
	4750 1050 5950 1050
Wire Wire Line
	5950 1050 5950 1150
Wire Wire Line
	6150 1150 6150 1050
Wire Wire Line
	6150 1050 7350 1050
Wire Wire Line
	7350 1050 7350 1150
Wire Wire Line
	7550 1150 7550 1050
Wire Wire Line
	7550 1050 8750 1050
Wire Wire Line
	8750 1050 8750 1150
Wire Wire Line
	8950 1150 8950 1050
Wire Wire Line
	8950 1050 10150 1050
Wire Wire Line
	10150 1050 10150 1150
Wire Wire Line
	10350 1150 10350 1050
Wire Wire Line
	10350 1050 10750 1050
Wire Wire Line
	10750 3250 1750 3250
Wire Wire Line
	1750 3250 1750 3550
Wire Wire Line
	1950 3550 1950 3450
Wire Wire Line
	1950 3450 3150 3450
Wire Wire Line
	3150 3450 3150 3550
Wire Wire Line
	3350 3550 3350 3450
Wire Wire Line
	3350 3450 4550 3450
Wire Wire Line
	4550 3450 4550 3550
Wire Wire Line
	4750 3550 4750 3450
Wire Wire Line
	4750 3450 5950 3450
Wire Wire Line
	5950 3450 5950 3550
Wire Wire Line
	6150 3550 6150 3450
Wire Wire Line
	6150 3450 7350 3450
Wire Wire Line
	7350 3450 7350 3550
Wire Wire Line
	7550 3550 7550 3450
Wire Wire Line
	7550 3450 8750 3450
Wire Wire Line
	8750 3450 8750 3550
Wire Wire Line
	8950 3550 8950 3450
Wire Wire Line
	8950 3450 10150 3450
Wire Wire Line
	10150 3450 10150 3550
Wire Wire Line
	10350 3550 10350 3450
Wire Wire Line
	10350 3450 10750 3450
Wire Wire Line
	10750 3450 10750 5400
Wire Wire Line
	10750 5400 1100 5400
Wire Wire Line
	10750 1050 10750 3250
Wire Wire Line
	1100 2500 10350 2500
Wire Wire Line
	10350 2500 10350 2350
Wire Wire Line
	1100 2900 10250 2900
Wire Wire Line
	1950 2350 1950 2500
Connection ~ 1950 2500
Wire Wire Line
	3350 2350 3350 2500
Connection ~ 3350 2500
Wire Wire Line
	4750 2350 4750 2500
Connection ~ 4750 2500
Wire Wire Line
	6150 2350 6150 2500
Connection ~ 6150 2500
Wire Wire Line
	7550 2350 7550 2500
Connection ~ 7550 2500
Wire Wire Line
	8950 2350 8950 2500
Connection ~ 8950 2500
Wire Wire Line
	10150 2900 10150 2350
Wire Wire Line
	8750 2350 8750 2900
Connection ~ 8750 2900
Wire Wire Line
	7350 2350 7350 2900
Connection ~ 7350 2900
Wire Wire Line
	5950 2350 5950 2900
Connection ~ 5950 2900
Wire Wire Line
	4550 2350 4550 2900
Connection ~ 4550 2900
Wire Wire Line
	3150 2350 3150 2900
Connection ~ 3150 2900
Wire Wire Line
	1750 2350 1750 2900
Connection ~ 1750 2900
$Comp
L C2 C96
U 1 1 542C104F
P 3250 2700
F 0 "C96" H 3275 2800 50  0000 L CNN
F 1 "100n" H 3275 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 2700 50  0001 C CNN
F 3 "" H 3250 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3250 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 3600 60  0001 L CNN "Field11"
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C97
U 1 1 542C105D
P 4650 2700
F 0 "C97" H 4675 2800 50  0000 L CNN
F 1 "100n" H 4675 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 2700 50  0001 C CNN
F 3 "" H 4650 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4650 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 3600 60  0001 L CNN "Field11"
	1    4650 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C98
U 1 1 542C106B
P 6050 2700
F 0 "C98" H 6075 2800 50  0000 L CNN
F 1 "100n" H 6075 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 2700 50  0001 C CNN
F 3 "" H 6050 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6050 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 3600 60  0001 L CNN "Field11"
	1    6050 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C99
U 1 1 542C1079
P 7450 2700
F 0 "C99" H 7475 2800 50  0000 L CNN
F 1 "100n" H 7475 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 2700 50  0001 C CNN
F 3 "" H 7450 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7450 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 3600 60  0001 L CNN "Field11"
	1    7450 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C100
U 1 1 542C1087
P 8850 2700
F 0 "C100" H 8875 2800 50  0000 L CNN
F 1 "100n" H 8875 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 2700 50  0001 C CNN
F 3 "" H 8850 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8850 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 3600 60  0001 L CNN "Field11"
	1    8850 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C101
U 1 1 542C1095
P 10250 2700
F 0 "C101" H 10275 2800 50  0000 L CNN
F 1 "100n" H 10275 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 2700 50  0001 C CNN
F 3 "" H 10250 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10250 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 3600 60  0001 L CNN "Field11"
	1    10250 2700
	1    0    0    -1  
$EndComp
Connection ~ 10150 2900
$Comp
L C2 C102
U 1 1 542C10A4
P 1850 5050
F 0 "C102" H 1875 5150 50  0000 L CNN
F 1 "100n" H 1875 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 5050 50  0001 C CNN
F 3 "" H 1850 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1850 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 5950 60  0001 L CNN "Field11"
	1    1850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2500 1400 4850
Wire Wire Line
	1400 4850 10350 4850
Wire Wire Line
	1950 4850 1950 4750
Wire Wire Line
	10350 4850 10350 4750
Connection ~ 1950 4850
Wire Wire Line
	8950 4850 8950 4750
Connection ~ 8950 4850
Wire Wire Line
	7550 4850 7550 4750
Connection ~ 7550 4850
Wire Wire Line
	6150 4850 6150 4750
Connection ~ 6150 4850
Wire Wire Line
	4750 4850 4750 4750
Connection ~ 4750 4850
Wire Wire Line
	3350 4850 3350 4750
Connection ~ 3350 4850
Connection ~ 1850 4850
Connection ~ 7450 2500
Connection ~ 8850 2500
Connection ~ 6050 2500
Connection ~ 6050 2900
Connection ~ 7450 2900
Connection ~ 8850 2900
Connection ~ 10250 2500
Connection ~ 10250 2900
Connection ~ 4650 2500
Connection ~ 4650 2900
Connection ~ 3250 2900
Connection ~ 3250 2500
Connection ~ 1850 2500
Connection ~ 1850 2900
Wire Wire Line
	1250 2900 1250 5250
Wire Wire Line
	1250 5250 10250 5250
Connection ~ 1250 2900
Wire Wire Line
	10150 4750 10150 5250
Connection ~ 1850 5250
Wire Wire Line
	8750 4750 8750 5250
Connection ~ 8750 5250
Wire Wire Line
	7350 4750 7350 5250
Connection ~ 7350 5250
Wire Wire Line
	5950 4750 5950 5250
Connection ~ 5950 5250
Wire Wire Line
	4550 4750 4550 5250
Connection ~ 4550 5250
Wire Wire Line
	1750 4750 1750 5250
Connection ~ 1750 5250
$Comp
L C2 C103
U 1 1 542C10E1
P 3250 5050
F 0 "C103" H 3275 5150 50  0000 L CNN
F 1 "100n" H 3275 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 5050 50  0001 C CNN
F 3 "" H 3250 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3250 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 5950 60  0001 L CNN "Field11"
	1    3250 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C104
U 1 1 542C10EF
P 4650 5050
F 0 "C104" H 4675 5150 50  0000 L CNN
F 1 "100n" H 4675 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 5050 50  0001 C CNN
F 3 "" H 4650 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4650 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 5950 60  0001 L CNN "Field11"
	1    4650 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C105
U 1 1 542C10FD
P 6050 5050
F 0 "C105" H 6075 5150 50  0000 L CNN
F 1 "100n" H 6075 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 5050 50  0001 C CNN
F 3 "" H 6050 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6050 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 5950 60  0001 L CNN "Field11"
	1    6050 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C106
U 1 1 542C110B
P 7450 5050
F 0 "C106" H 7475 5150 50  0000 L CNN
F 1 "100n" H 7475 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 5050 50  0001 C CNN
F 3 "" H 7450 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7450 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 5950 60  0001 L CNN "Field11"
	1    7450 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C107
U 1 1 542C1119
P 8850 5050
F 0 "C107" H 8875 5150 50  0000 L CNN
F 1 "100n" H 8875 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 5050 50  0001 C CNN
F 3 "" H 8850 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8850 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 5950 60  0001 L CNN "Field11"
	1    8850 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C108
U 1 1 542C1127
P 10250 5050
F 0 "C108" H 10275 5150 50  0000 L CNN
F 1 "100n" H 10275 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 5050 50  0001 C CNN
F 3 "" H 10250 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10250 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 5950 60  0001 L CNN "Field11"
	1    10250 5050
	1    0    0    -1  
$EndComp
Connection ~ 10250 5250
Connection ~ 10250 4850
Connection ~ 8850 5250
Connection ~ 8850 4850
Connection ~ 7450 4850
Connection ~ 7450 5250
Connection ~ 6050 5250
Connection ~ 6050 4850
Connection ~ 4650 4850
Connection ~ 4650 5250
Connection ~ 3250 5250
Connection ~ 3250 4850
Connection ~ 10150 5250
Connection ~ 1400 2500
Wire Wire Line
	3150 4750 3150 5250
Connection ~ 3150 5250
$EndSCHEMATC
