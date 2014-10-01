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
Sheet 10 14
Title "ClockFOUR"
Date "1 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1200 5550 0    60   Output ~ 0
DO_I
Text HLabel 1200 2650 0    60   Input ~ 0
GND
Text HLabel 1200 1200 0    60   Input ~ 0
DI_I
Text HLabel 1200 3050 0    60   Input ~ 0
5V
$Comp
L C2 C123
U 1 1 542C145A
P 1950 2850
F 0 "C123" H 1975 2950 50  0000 L CNN
F 1 "100n" H 1975 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 3050 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1950 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 3750 60  0001 L CNN "Field11"
	1    1950 2850
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U114
U 1 1 542C1460
P 1775 1875
F 0 "U114" V 1525 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 2175 1875 60  0000 C CNN
F 2 "" H 1775 1875 60  0000 C CNN
F 3 "" H 1775 1875 60  0000 C CNN
	1    1775 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U115
U 1 1 542C1466
P 3175 1875
F 0 "U115" V 2925 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 3575 1875 60  0000 C CNN
F 2 "" H 3175 1875 60  0000 C CNN
F 3 "" H 3175 1875 60  0000 C CNN
	1    3175 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U116
U 1 1 542C146C
P 4575 1875
F 0 "U116" V 4325 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 4975 1875 60  0000 C CNN
F 2 "" H 4575 1875 60  0000 C CNN
F 3 "" H 4575 1875 60  0000 C CNN
	1    4575 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U117
U 1 1 542C1472
P 5975 1875
F 0 "U117" V 5725 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 6375 1875 60  0000 C CNN
F 2 "" H 5975 1875 60  0000 C CNN
F 3 "" H 5975 1875 60  0000 C CNN
	1    5975 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U118
U 1 1 542C1478
P 7375 1875
F 0 "U118" V 7125 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 7775 1875 60  0000 C CNN
F 2 "" H 7375 1875 60  0000 C CNN
F 3 "" H 7375 1875 60  0000 C CNN
	1    7375 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U120
U 1 1 542C1484
P 10175 1875
F 0 "U120" V 9925 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 10575 1875 60  0000 C CNN
F 2 "" H 10175 1875 60  0000 C CNN
F 3 "" H 10175 1875 60  0000 C CNN
	1    10175 1875
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U121
U 1 1 542C148A
P 1775 4275
F 0 "U121" V 1525 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 2175 4275 60  0000 C CNN
F 2 "" H 1775 4275 60  0000 C CNN
F 3 "" H 1775 4275 60  0000 C CNN
	1    1775 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U122
U 1 1 542C1490
P 3175 4275
F 0 "U122" V 2925 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 3575 4275 60  0000 C CNN
F 2 "" H 3175 4275 60  0000 C CNN
F 3 "" H 3175 4275 60  0000 C CNN
	1    3175 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U123
U 1 1 542C1496
P 4575 4275
F 0 "U123" V 4325 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 4975 4275 60  0000 C CNN
F 2 "" H 4575 4275 60  0000 C CNN
F 3 "" H 4575 4275 60  0000 C CNN
	1    4575 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U124
U 1 1 542C149C
P 5975 4275
F 0 "U124" V 5725 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 6375 4275 60  0000 C CNN
F 2 "" H 5975 4275 60  0000 C CNN
F 3 "" H 5975 4275 60  0000 C CNN
	1    5975 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U125
U 1 1 542C14A2
P 7375 4275
F 0 "U125" V 7125 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 7775 4275 60  0000 C CNN
F 2 "" H 7375 4275 60  0000 C CNN
F 3 "" H 7375 4275 60  0000 C CNN
	1    7375 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U126
U 1 1 542C14A8
P 8775 4275
F 0 "U126" V 8525 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 9175 4275 60  0000 C CNN
F 2 "" H 8775 4275 60  0000 C CNN
F 3 "" H 8775 4275 60  0000 C CNN
	1    8775 4275
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U127
U 1 1 542C14AE
P 10175 4275
F 0 "U127" V 9925 4275 60  0000 C CNN
F 1 "RGB_WS2812B" V 10575 4275 60  0000 C CNN
F 2 "" H 10175 4275 60  0000 C CNN
F 3 "" H 10175 4275 60  0000 C CNN
	1    10175 4275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1200 1850 1200
Wire Wire Line
	1850 1200 1850 1300
Wire Wire Line
	2050 1300 2050 1200
Wire Wire Line
	2050 1200 3250 1200
Wire Wire Line
	3250 1200 3250 1300
Wire Wire Line
	3450 1300 3450 1200
Wire Wire Line
	3450 1200 4650 1200
Wire Wire Line
	4650 1200 4650 1300
Wire Wire Line
	4850 1300 4850 1200
Wire Wire Line
	4850 1200 6050 1200
Wire Wire Line
	6050 1200 6050 1300
Wire Wire Line
	6250 1300 6250 1200
Wire Wire Line
	6250 1200 7450 1200
Wire Wire Line
	7450 1200 7450 1300
Wire Wire Line
	7650 1300 7650 1200
Wire Wire Line
	7650 1200 8850 1200
Wire Wire Line
	8850 1200 8850 1300
Wire Wire Line
	9050 1300 9050 1200
Wire Wire Line
	9050 1200 10250 1200
Wire Wire Line
	10250 1200 10250 1300
Wire Wire Line
	10450 1300 10450 1200
Wire Wire Line
	10450 1200 10850 1200
Wire Wire Line
	10850 3400 1850 3400
Wire Wire Line
	1850 3400 1850 3700
Wire Wire Line
	2050 3700 2050 3600
Wire Wire Line
	2050 3600 3250 3600
Wire Wire Line
	3250 3600 3250 3700
Wire Wire Line
	3450 3700 3450 3600
Wire Wire Line
	3450 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3700
Wire Wire Line
	4850 3700 4850 3600
Wire Wire Line
	4850 3600 6050 3600
Wire Wire Line
	6050 3600 6050 3700
Wire Wire Line
	6250 3700 6250 3600
Wire Wire Line
	6250 3600 7450 3600
Wire Wire Line
	7450 3600 7450 3700
Wire Wire Line
	7650 3700 7650 3600
Wire Wire Line
	7650 3600 8850 3600
Wire Wire Line
	8850 3600 8850 3700
Wire Wire Line
	9050 3700 9050 3600
Wire Wire Line
	9050 3600 10250 3600
Wire Wire Line
	10250 3600 10250 3700
Wire Wire Line
	10450 3700 10450 3600
Wire Wire Line
	10450 3600 10850 3600
Wire Wire Line
	10850 3600 10850 5550
Wire Wire Line
	10850 5550 1200 5550
Wire Wire Line
	10850 1200 10850 3400
Wire Wire Line
	10450 2650 10450 2500
Wire Wire Line
	1200 3050 10350 3050
Wire Wire Line
	2050 2500 2050 2650
Connection ~ 2050 2650
Wire Wire Line
	3450 2500 3450 2650
Connection ~ 3450 2650
Wire Wire Line
	4850 2500 4850 2650
Connection ~ 4850 2650
Wire Wire Line
	6250 2500 6250 2650
Connection ~ 6250 2650
Wire Wire Line
	7650 2500 7650 2650
Connection ~ 7650 2650
Wire Wire Line
	10250 3050 10250 2500
Wire Wire Line
	8850 2500 8850 3050
Connection ~ 8850 3050
Wire Wire Line
	7450 2500 7450 3050
Connection ~ 7450 3050
Wire Wire Line
	6050 2500 6050 3050
Connection ~ 6050 3050
Wire Wire Line
	4650 2500 4650 3050
Connection ~ 4650 3050
Wire Wire Line
	3250 2500 3250 3050
Connection ~ 3250 3050
Wire Wire Line
	1850 2500 1850 3050
Connection ~ 1850 3050
$Comp
L C2 C124
U 1 1 542C1509
P 3350 2850
F 0 "C124" H 3375 2950 50  0000 L CNN
F 1 "100n" H 3375 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 2850 50  0001 C CNN
F 3 "" H 3350 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 3050 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3350 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 3750 60  0001 L CNN "Field11"
	1    3350 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C125
U 1 1 542C1517
P 4750 2850
F 0 "C125" H 4775 2950 50  0000 L CNN
F 1 "100n" H 4775 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 2850 50  0001 C CNN
F 3 "" H 4750 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 3050 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4750 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 3750 60  0001 L CNN "Field11"
	1    4750 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C126
U 1 1 542C1525
P 6150 2850
F 0 "C126" H 6175 2950 50  0000 L CNN
F 1 "100n" H 6175 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 2850 50  0001 C CNN
F 3 "" H 6150 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 3050 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6150 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 3750 60  0001 L CNN "Field11"
	1    6150 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C127
U 1 1 542C1533
P 7550 2850
F 0 "C127" H 7575 2950 50  0000 L CNN
F 1 "100n" H 7575 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 2850 50  0001 C CNN
F 3 "" H 7550 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 3050 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7550 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 3750 60  0001 L CNN "Field11"
	1    7550 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C128
U 1 1 542C1541
P 8950 2850
F 0 "C128" H 8975 2950 50  0000 L CNN
F 1 "100n" H 8975 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 2850 50  0001 C CNN
F 3 "" H 8950 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 3050 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8950 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 3750 60  0001 L CNN "Field11"
	1    8950 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C129
U 1 1 542C154F
P 10350 2850
F 0 "C129" H 10375 2950 50  0000 L CNN
F 1 "100n" H 10375 2750 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 2850 50  0001 C CNN
F 3 "" H 10350 2850 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 3050 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10350 3150 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 3250 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 3350 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 3450 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 3550 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 3650 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 3750 60  0001 L CNN "Field11"
	1    10350 2850
	1    0    0    -1  
$EndComp
Connection ~ 10250 3050
$Comp
L C2 C130
U 1 1 542C155E
P 1950 5200
F 0 "C130" H 1975 5300 50  0000 L CNN
F 1 "100n" H 1975 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 5200 50  0001 C CNN
F 3 "" H 1950 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 5400 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1950 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 6100 60  0001 L CNN "Field11"
	1    1950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2650 1500 5000
Wire Wire Line
	1500 5000 10450 5000
Wire Wire Line
	2050 5000 2050 4900
Wire Wire Line
	10450 5000 10450 4900
Connection ~ 2050 5000
Wire Wire Line
	9050 5000 9050 4900
Connection ~ 9050 5000
Wire Wire Line
	7650 5000 7650 4900
Connection ~ 7650 5000
Wire Wire Line
	6250 5000 6250 4900
Connection ~ 6250 5000
Wire Wire Line
	4850 5000 4850 4900
Connection ~ 4850 5000
Wire Wire Line
	3450 5000 3450 4900
Connection ~ 3450 5000
Connection ~ 1950 5000
Connection ~ 7550 2650
Connection ~ 8950 2650
Connection ~ 6150 2650
Connection ~ 6150 3050
Connection ~ 7550 3050
Connection ~ 8950 3050
Connection ~ 10350 2650
Connection ~ 10350 3050
Connection ~ 4750 2650
Connection ~ 4750 3050
Connection ~ 3350 3050
Connection ~ 3350 2650
Connection ~ 1950 2650
Connection ~ 1950 3050
Wire Wire Line
	1350 3050 1350 5400
Wire Wire Line
	1350 5400 10350 5400
Connection ~ 1350 3050
Wire Wire Line
	10250 4900 10250 5400
Connection ~ 1950 5400
Wire Wire Line
	8850 4900 8850 5400
Connection ~ 8850 5400
Wire Wire Line
	7450 4900 7450 5400
Connection ~ 7450 5400
Wire Wire Line
	6050 4900 6050 5400
Connection ~ 6050 5400
Wire Wire Line
	4650 4900 4650 5400
Connection ~ 4650 5400
Wire Wire Line
	3250 4900 3250 5400
Connection ~ 3250 5400
Wire Wire Line
	1850 4900 1850 5400
Connection ~ 1850 5400
$Comp
L C2 C131
U 1 1 542C159B
P 3350 5200
F 0 "C131" H 3375 5300 50  0000 L CNN
F 1 "100n" H 3375 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 5200 50  0001 C CNN
F 3 "" H 3350 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 5400 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3350 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 6100 60  0001 L CNN "Field11"
	1    3350 5200
	1    0    0    -1  
$EndComp
$Comp
L C2 C132
U 1 1 542C15A9
P 4750 5200
F 0 "C132" H 4775 5300 50  0000 L CNN
F 1 "100n" H 4775 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 5200 50  0001 C CNN
F 3 "" H 4750 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 5400 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4750 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 6100 60  0001 L CNN "Field11"
	1    4750 5200
	1    0    0    -1  
$EndComp
$Comp
L C2 C133
U 1 1 542C15B7
P 6150 5200
F 0 "C133" H 6175 5300 50  0000 L CNN
F 1 "100n" H 6175 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 5200 50  0001 C CNN
F 3 "" H 6150 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 5400 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6150 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 6100 60  0001 L CNN "Field11"
	1    6150 5200
	1    0    0    -1  
$EndComp
$Comp
L C2 C134
U 1 1 542C15C5
P 7550 5200
F 0 "C134" H 7575 5300 50  0000 L CNN
F 1 "100n" H 7575 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 5200 50  0001 C CNN
F 3 "" H 7550 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 5400 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7550 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 6100 60  0001 L CNN "Field11"
	1    7550 5200
	1    0    0    -1  
$EndComp
$Comp
L C2 C135
U 1 1 542C15D3
P 8950 5200
F 0 "C135" H 8975 5300 50  0000 L CNN
F 1 "100n" H 8975 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 5200 50  0001 C CNN
F 3 "" H 8950 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 5400 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8950 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 6100 60  0001 L CNN "Field11"
	1    8950 5200
	1    0    0    -1  
$EndComp
$Comp
L C2 C136
U 1 1 542C15E1
P 10350 5200
F 0 "C136" H 10375 5300 50  0000 L CNN
F 1 "100n" H 10375 5100 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 5200 50  0001 C CNN
F 3 "" H 10350 5200 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 5400 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10350 5500 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 5600 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 5700 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 5800 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 5900 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 6000 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 6100 60  0001 L CNN "Field11"
	1    10350 5200
	1    0    0    -1  
$EndComp
Connection ~ 10350 5400
Connection ~ 10350 5000
Connection ~ 8950 5400
Connection ~ 8950 5000
Connection ~ 7550 5000
Connection ~ 7550 5400
Connection ~ 6150 5400
Connection ~ 6150 5000
Connection ~ 4750 5000
Connection ~ 4750 5400
Connection ~ 3350 5400
Connection ~ 3350 5000
Connection ~ 10250 5400
Connection ~ 1500 2650
$Comp
L RGB_WS2812B U119
U 1 1 542BEF5C
P 8775 1875
F 0 "U119" V 8525 1875 60  0000 C CNN
F 1 "RGB_WS2812B" V 9175 1875 60  0000 C CNN
F 2 "~" H 8775 1875 60  0000 C CNN
F 3 "~" H 8775 1875 60  0000 C CNN
	1    8775 1875
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2650 10450 2650
Wire Wire Line
	9050 2650 9050 2500
Connection ~ 9050 2650
Connection ~ 1400 2650
Wire Wire Line
	1400 2650 1400 2700
$Comp
L GND #PWR022
U 1 1 542C144C
P 1400 2700
F 0 "#PWR022" H 1400 2700 30  0001 C CNN
F 1 "GND" H 1400 2630 30  0001 C CNN
F 2 "" H 1400 2700 60  0001 C CNN
F 3 "" H 1400 2700 60  0001 C CNN
	1    1400 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
