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
Sheet 14 14
Title "ClockFOUR"
Date "1 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1200 5800 0    60   Output ~ 0
DO_M
Text HLabel 1200 2900 0    60   Input ~ 0
GND
Text HLabel 1200 1450 0    60   Input ~ 0
DI_M
Text HLabel 1200 3300 0    60   Input ~ 0
5V
$Comp
L GND #PWR026
U 1 1 542C1B00
P 1400 2950
F 0 "#PWR026" H 1400 2950 30  0001 C CNN
F 1 "GND" H 1400 2880 30  0001 C CNN
F 2 "" H 1400 2950 60  0001 C CNN
F 3 "" H 1400 2950 60  0001 C CNN
	1    1400 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C179
U 1 1 542C1B0E
P 1950 3100
F 0 "C179" H 1975 3200 50  0000 L CNN
F 1 "100n" H 1975 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 3100 50  0001 C CNN
F 3 "" H 1950 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1950 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 4000 60  0001 L CNN "Field11"
	1    1950 3100
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U170
U 1 1 542C1B14
P 1775 2125
F 0 "U170" V 1525 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 2175 2125 60  0000 C CNN
F 2 "" H 1775 2125 60  0000 C CNN
F 3 "" H 1775 2125 60  0000 C CNN
	1    1775 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U171
U 1 1 542C1B1A
P 3175 2125
F 0 "U171" V 2925 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 3575 2125 60  0000 C CNN
F 2 "" H 3175 2125 60  0000 C CNN
F 3 "" H 3175 2125 60  0000 C CNN
	1    3175 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U172
U 1 1 542C1B20
P 4575 2125
F 0 "U172" V 4325 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 4975 2125 60  0000 C CNN
F 2 "" H 4575 2125 60  0000 C CNN
F 3 "" H 4575 2125 60  0000 C CNN
	1    4575 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U173
U 1 1 542C1B26
P 5975 2125
F 0 "U173" V 5725 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 6375 2125 60  0000 C CNN
F 2 "" H 5975 2125 60  0000 C CNN
F 3 "" H 5975 2125 60  0000 C CNN
	1    5975 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U174
U 1 1 542C1B2C
P 7375 2125
F 0 "U174" V 7125 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 7775 2125 60  0000 C CNN
F 2 "" H 7375 2125 60  0000 C CNN
F 3 "" H 7375 2125 60  0000 C CNN
	1    7375 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U175
U 1 1 542C1B32
P 8775 2125
F 0 "U175" V 8525 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 9175 2125 60  0000 C CNN
F 2 "" H 8775 2125 60  0000 C CNN
F 3 "" H 8775 2125 60  0000 C CNN
	1    8775 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U176
U 1 1 542C1B38
P 10175 2125
F 0 "U176" V 9925 2125 60  0000 C CNN
F 1 "RGB_WS2812B" V 10575 2125 60  0000 C CNN
F 2 "" H 10175 2125 60  0000 C CNN
F 3 "" H 10175 2125 60  0000 C CNN
	1    10175 2125
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U177
U 1 1 542C1B3E
P 1775 4525
F 0 "U177" V 1525 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 2175 4525 60  0000 C CNN
F 2 "" H 1775 4525 60  0000 C CNN
F 3 "" H 1775 4525 60  0000 C CNN
	1    1775 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U178
U 1 1 542C1B44
P 3175 4525
F 0 "U178" V 2925 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 3575 4525 60  0000 C CNN
F 2 "" H 3175 4525 60  0000 C CNN
F 3 "" H 3175 4525 60  0000 C CNN
	1    3175 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U179
U 1 1 542C1B4A
P 4575 4525
F 0 "U179" V 4325 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 4975 4525 60  0000 C CNN
F 2 "" H 4575 4525 60  0000 C CNN
F 3 "" H 4575 4525 60  0000 C CNN
	1    4575 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U180
U 1 1 542C1B50
P 5975 4525
F 0 "U180" V 5725 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 6375 4525 60  0000 C CNN
F 2 "" H 5975 4525 60  0000 C CNN
F 3 "" H 5975 4525 60  0000 C CNN
	1    5975 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U181
U 1 1 542C1B56
P 7375 4525
F 0 "U181" V 7125 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 7775 4525 60  0000 C CNN
F 2 "" H 7375 4525 60  0000 C CNN
F 3 "" H 7375 4525 60  0000 C CNN
	1    7375 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U182
U 1 1 542C1B5C
P 8775 4525
F 0 "U182" V 8525 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 9175 4525 60  0000 C CNN
F 2 "" H 8775 4525 60  0000 C CNN
F 3 "" H 8775 4525 60  0000 C CNN
	1    8775 4525
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U183
U 1 1 542C1B62
P 10175 4525
F 0 "U183" V 9925 4525 60  0000 C CNN
F 1 "RGB_WS2812B" V 10575 4525 60  0000 C CNN
F 2 "" H 10175 4525 60  0000 C CNN
F 3 "" H 10175 4525 60  0000 C CNN
	1    10175 4525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2900 1400 2950
Wire Wire Line
	1200 1450 1850 1450
Wire Wire Line
	1850 1450 1850 1550
Connection ~ 1400 2900
Wire Wire Line
	2050 1550 2050 1450
Wire Wire Line
	2050 1450 3250 1450
Wire Wire Line
	3250 1450 3250 1550
Wire Wire Line
	3450 1550 3450 1450
Wire Wire Line
	3450 1450 4650 1450
Wire Wire Line
	4650 1450 4650 1550
Wire Wire Line
	4850 1550 4850 1450
Wire Wire Line
	4850 1450 6050 1450
Wire Wire Line
	6050 1450 6050 1550
Wire Wire Line
	6250 1550 6250 1450
Wire Wire Line
	6250 1450 7450 1450
Wire Wire Line
	7450 1450 7450 1550
Wire Wire Line
	7650 1550 7650 1450
Wire Wire Line
	7650 1450 8850 1450
Wire Wire Line
	8850 1450 8850 1550
Wire Wire Line
	9050 1550 9050 1450
Wire Wire Line
	9050 1450 10250 1450
Wire Wire Line
	10250 1450 10250 1550
Wire Wire Line
	10450 1550 10450 1450
Wire Wire Line
	10450 1450 10850 1450
Wire Wire Line
	10850 3650 1850 3650
Wire Wire Line
	1850 3650 1850 3950
Wire Wire Line
	2050 3950 2050 3850
Wire Wire Line
	2050 3850 3250 3850
Wire Wire Line
	3250 3850 3250 3950
Wire Wire Line
	3450 3950 3450 3850
Wire Wire Line
	3450 3850 4650 3850
Wire Wire Line
	4650 3850 4650 3950
Wire Wire Line
	4850 3950 4850 3850
Wire Wire Line
	4850 3850 6050 3850
Wire Wire Line
	6050 3850 6050 3950
Wire Wire Line
	6250 3950 6250 3850
Wire Wire Line
	6250 3850 7450 3850
Wire Wire Line
	7450 3850 7450 3950
Wire Wire Line
	7650 3950 7650 3850
Wire Wire Line
	7650 3850 8850 3850
Wire Wire Line
	8850 3850 8850 3950
Wire Wire Line
	9050 3950 9050 3850
Wire Wire Line
	9050 3850 10250 3850
Wire Wire Line
	10250 3850 10250 3950
Wire Wire Line
	10450 3950 10450 3850
Wire Wire Line
	10450 3850 10850 3850
Wire Wire Line
	10850 3850 10850 5800
Wire Wire Line
	10850 5800 1200 5800
Wire Wire Line
	10850 1450 10850 3650
Wire Wire Line
	1200 2900 10450 2900
Wire Wire Line
	10450 2900 10450 2750
Wire Wire Line
	1200 3300 10350 3300
Wire Wire Line
	2050 2750 2050 2900
Connection ~ 2050 2900
Wire Wire Line
	3450 2750 3450 2900
Connection ~ 3450 2900
Wire Wire Line
	4850 2750 4850 2900
Connection ~ 4850 2900
Wire Wire Line
	6250 2750 6250 2900
Connection ~ 6250 2900
Wire Wire Line
	7650 2750 7650 2900
Connection ~ 7650 2900
Wire Wire Line
	9050 2750 9050 2900
Connection ~ 9050 2900
Wire Wire Line
	10250 3300 10250 2750
Wire Wire Line
	8850 2750 8850 3300
Connection ~ 8850 3300
Wire Wire Line
	7450 2750 7450 3300
Connection ~ 7450 3300
Wire Wire Line
	6050 2750 6050 3300
Connection ~ 6050 3300
Wire Wire Line
	4650 2750 4650 3300
Connection ~ 4650 3300
Wire Wire Line
	3250 2750 3250 3300
Connection ~ 3250 3300
Wire Wire Line
	1850 2750 1850 3300
Connection ~ 1850 3300
$Comp
L C2 C180
U 1 1 542C1BBD
P 3350 3100
F 0 "C180" H 3375 3200 50  0000 L CNN
F 1 "100n" H 3375 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 3100 50  0001 C CNN
F 3 "" H 3350 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3350 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 4000 60  0001 L CNN "Field11"
	1    3350 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C181
U 1 1 542C1BCB
P 4750 3100
F 0 "C181" H 4775 3200 50  0000 L CNN
F 1 "100n" H 4775 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 3100 50  0001 C CNN
F 3 "" H 4750 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4750 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 4000 60  0001 L CNN "Field11"
	1    4750 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C182
U 1 1 542C1BD9
P 6150 3100
F 0 "C182" H 6175 3200 50  0000 L CNN
F 1 "100n" H 6175 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 3100 50  0001 C CNN
F 3 "" H 6150 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6150 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 4000 60  0001 L CNN "Field11"
	1    6150 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C183
U 1 1 542C1BE7
P 7550 3100
F 0 "C183" H 7575 3200 50  0000 L CNN
F 1 "100n" H 7575 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 3100 50  0001 C CNN
F 3 "" H 7550 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7550 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 4000 60  0001 L CNN "Field11"
	1    7550 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C184
U 1 1 542C1BF5
P 8950 3100
F 0 "C184" H 8975 3200 50  0000 L CNN
F 1 "100n" H 8975 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 3100 50  0001 C CNN
F 3 "" H 8950 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8950 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 4000 60  0001 L CNN "Field11"
	1    8950 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C185
U 1 1 542C1C03
P 10350 3100
F 0 "C185" H 10375 3200 50  0000 L CNN
F 1 "100n" H 10375 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 3100 50  0001 C CNN
F 3 "" H 10350 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10350 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 4000 60  0001 L CNN "Field11"
	1    10350 3100
	1    0    0    -1  
$EndComp
Connection ~ 10250 3300
$Comp
L C2 C186
U 1 1 542C1C12
P 1950 5450
F 0 "C186" H 1975 5550 50  0000 L CNN
F 1 "100n" H 1975 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 5450 50  0001 C CNN
F 3 "" H 1950 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1950 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 6350 60  0001 L CNN "Field11"
	1    1950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2900 1500 5250
Wire Wire Line
	1500 5250 10450 5250
Wire Wire Line
	2050 5250 2050 5150
Wire Wire Line
	10450 5250 10450 5150
Connection ~ 2050 5250
Wire Wire Line
	9050 5250 9050 5150
Connection ~ 9050 5250
Wire Wire Line
	7650 5250 7650 5150
Connection ~ 7650 5250
Wire Wire Line
	6250 5250 6250 5150
Connection ~ 6250 5250
Wire Wire Line
	4850 5250 4850 5150
Connection ~ 4850 5250
Wire Wire Line
	3450 5250 3450 5150
Connection ~ 3450 5250
Connection ~ 1950 5250
Connection ~ 7550 2900
Connection ~ 8950 2900
Connection ~ 6150 2900
Connection ~ 6150 3300
Connection ~ 7550 3300
Connection ~ 8950 3300
Connection ~ 10350 2900
Connection ~ 10350 3300
Connection ~ 4750 2900
Connection ~ 4750 3300
Connection ~ 3350 3300
Connection ~ 3350 2900
Connection ~ 1950 2900
Connection ~ 1950 3300
Wire Wire Line
	1350 3300 1350 5650
Wire Wire Line
	1350 5650 10350 5650
Connection ~ 1350 3300
Wire Wire Line
	10250 5150 10250 5650
Connection ~ 1950 5650
Wire Wire Line
	8850 5150 8850 5650
Connection ~ 8850 5650
Wire Wire Line
	7450 5150 7450 5650
Connection ~ 7450 5650
Wire Wire Line
	6050 5150 6050 5650
Connection ~ 6050 5650
Wire Wire Line
	4650 5150 4650 5650
Connection ~ 4650 5650
Wire Wire Line
	3250 5150 3250 5650
Connection ~ 3250 5650
Wire Wire Line
	1850 5150 1850 5650
Connection ~ 1850 5650
$Comp
L C2 C187
U 1 1 542C1C4F
P 3350 5450
F 0 "C187" H 3375 5550 50  0000 L CNN
F 1 "100n" H 3375 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 5450 50  0001 C CNN
F 3 "" H 3350 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3350 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 6350 60  0001 L CNN "Field11"
	1    3350 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C188
U 1 1 542C1C5D
P 4750 5450
F 0 "C188" H 4775 5550 50  0000 L CNN
F 1 "100n" H 4775 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 5450 50  0001 C CNN
F 3 "" H 4750 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4750 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 6350 60  0001 L CNN "Field11"
	1    4750 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C189
U 1 1 542C1C6B
P 6150 5450
F 0 "C189" H 6175 5550 50  0000 L CNN
F 1 "100n" H 6175 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 5450 50  0001 C CNN
F 3 "" H 6150 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6150 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 6350 60  0001 L CNN "Field11"
	1    6150 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C190
U 1 1 542C1C79
P 7550 5450
F 0 "C190" H 7575 5550 50  0000 L CNN
F 1 "100n" H 7575 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 5450 50  0001 C CNN
F 3 "" H 7550 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7550 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 6350 60  0001 L CNN "Field11"
	1    7550 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C191
U 1 1 542C1C87
P 8950 5450
F 0 "C191" H 8975 5550 50  0000 L CNN
F 1 "100n" H 8975 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 5450 50  0001 C CNN
F 3 "" H 8950 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8950 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 6350 60  0001 L CNN "Field11"
	1    8950 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C192
U 1 1 542C1C95
P 10350 5450
F 0 "C192" H 10375 5550 50  0000 L CNN
F 1 "100n" H 10375 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 5450 50  0001 C CNN
F 3 "" H 10350 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10350 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 6350 60  0001 L CNN "Field11"
	1    10350 5450
	1    0    0    -1  
$EndComp
Connection ~ 10350 5650
Connection ~ 10350 5250
Connection ~ 8950 5650
Connection ~ 8950 5250
Connection ~ 7550 5250
Connection ~ 7550 5650
Connection ~ 6150 5650
Connection ~ 6150 5250
Connection ~ 4750 5250
Connection ~ 4750 5650
Connection ~ 3350 5650
Connection ~ 3350 5250
Connection ~ 10250 5650
Connection ~ 1500 2900
$EndSCHEMATC
