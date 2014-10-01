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
Sheet 5 14
Title "ClockFOUR"
Date "1 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1250 5450 0    60   Output ~ 0
DO_D
Text HLabel 1250 2550 0    60   Input ~ 0
GND
Text HLabel 1250 1100 0    60   Input ~ 0
DI_D
Text HLabel 1250 2950 0    60   Input ~ 0
5V
$Comp
L GND #PWR017
U 1 1 542C0A8B
P 1450 2600
F 0 "#PWR017" H 1450 2600 30  0001 C CNN
F 1 "GND" H 1450 2530 30  0001 C CNN
F 2 "" H 1450 2600 60  0001 C CNN
F 3 "" H 1450 2600 60  0001 C CNN
	1    1450 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C53
U 1 1 542C0A99
P 2000 2750
F 0 "C53" H 2025 2850 50  0000 L CNN
F 1 "100n" H 2025 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 2000 2750 50  0001 C CNN
F 3 "" H 2000 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 2000 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 2000 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 2000 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 2000 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 2000 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 2000 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 2000 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 2000 3650 60  0001 L CNN "Field11"
	1    2000 2750
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U44
U 1 1 542C0A9F
P 1825 1775
F 0 "U44" V 1575 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 2225 1775 60  0000 C CNN
F 2 "" H 1825 1775 60  0000 C CNN
F 3 "" H 1825 1775 60  0000 C CNN
	1    1825 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U45
U 1 1 542C0AA5
P 3225 1775
F 0 "U45" V 2975 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 3625 1775 60  0000 C CNN
F 2 "" H 3225 1775 60  0000 C CNN
F 3 "" H 3225 1775 60  0000 C CNN
	1    3225 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U46
U 1 1 542C0AAB
P 4625 1775
F 0 "U46" V 4375 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 5025 1775 60  0000 C CNN
F 2 "" H 4625 1775 60  0000 C CNN
F 3 "" H 4625 1775 60  0000 C CNN
	1    4625 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U47
U 1 1 542C0AB1
P 6025 1775
F 0 "U47" V 5775 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 6425 1775 60  0000 C CNN
F 2 "" H 6025 1775 60  0000 C CNN
F 3 "" H 6025 1775 60  0000 C CNN
	1    6025 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U48
U 1 1 542C0AB7
P 7425 1775
F 0 "U48" V 7175 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 7825 1775 60  0000 C CNN
F 2 "" H 7425 1775 60  0000 C CNN
F 3 "" H 7425 1775 60  0000 C CNN
	1    7425 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U49
U 1 1 542C0ABD
P 8825 1775
F 0 "U49" V 8575 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 9225 1775 60  0000 C CNN
F 2 "" H 8825 1775 60  0000 C CNN
F 3 "" H 8825 1775 60  0000 C CNN
	1    8825 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U50
U 1 1 542C0AC3
P 10225 1775
F 0 "U50" V 9975 1775 60  0000 C CNN
F 1 "RGB_WS2812B" V 10625 1775 60  0000 C CNN
F 2 "" H 10225 1775 60  0000 C CNN
F 3 "" H 10225 1775 60  0000 C CNN
	1    10225 1775
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U51
U 1 1 542C0AC9
P 1825 4175
F 0 "U51" V 1575 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 2225 4175 60  0000 C CNN
F 2 "" H 1825 4175 60  0000 C CNN
F 3 "" H 1825 4175 60  0000 C CNN
	1    1825 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U52
U 1 1 542C0ACF
P 3225 4175
F 0 "U52" V 2975 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 3625 4175 60  0000 C CNN
F 2 "" H 3225 4175 60  0000 C CNN
F 3 "" H 3225 4175 60  0000 C CNN
	1    3225 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U53
U 1 1 542C0AD5
P 4625 4175
F 0 "U53" V 4375 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 5025 4175 60  0000 C CNN
F 2 "" H 4625 4175 60  0000 C CNN
F 3 "" H 4625 4175 60  0000 C CNN
	1    4625 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U54
U 1 1 542C0ADB
P 6025 4175
F 0 "U54" V 5775 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 6425 4175 60  0000 C CNN
F 2 "" H 6025 4175 60  0000 C CNN
F 3 "" H 6025 4175 60  0000 C CNN
	1    6025 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U55
U 1 1 542C0AE1
P 7425 4175
F 0 "U55" V 7175 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 7825 4175 60  0000 C CNN
F 2 "" H 7425 4175 60  0000 C CNN
F 3 "" H 7425 4175 60  0000 C CNN
	1    7425 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U56
U 1 1 542C0AE7
P 8825 4175
F 0 "U56" V 8575 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 9225 4175 60  0000 C CNN
F 2 "" H 8825 4175 60  0000 C CNN
F 3 "" H 8825 4175 60  0000 C CNN
	1    8825 4175
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B U57
U 1 1 542C0AED
P 10225 4175
F 0 "U57" V 9975 4175 60  0000 C CNN
F 1 "RGB_WS2812B" V 10625 4175 60  0000 C CNN
F 2 "" H 10225 4175 60  0000 C CNN
F 3 "" H 10225 4175 60  0000 C CNN
	1    10225 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1450 2600
Wire Wire Line
	1250 1100 1900 1100
Wire Wire Line
	1900 1100 1900 1200
Connection ~ 1450 2550
Wire Wire Line
	2100 1200 2100 1100
Wire Wire Line
	2100 1100 3300 1100
Wire Wire Line
	3300 1100 3300 1200
Wire Wire Line
	3500 1200 3500 1100
Wire Wire Line
	3500 1100 4700 1100
Wire Wire Line
	4700 1100 4700 1200
Wire Wire Line
	4900 1200 4900 1100
Wire Wire Line
	4900 1100 6100 1100
Wire Wire Line
	6100 1100 6100 1200
Wire Wire Line
	6300 1200 6300 1100
Wire Wire Line
	6300 1100 7500 1100
Wire Wire Line
	7500 1100 7500 1200
Wire Wire Line
	7700 1200 7700 1100
Wire Wire Line
	7700 1100 8900 1100
Wire Wire Line
	8900 1100 8900 1200
Wire Wire Line
	9100 1200 9100 1100
Wire Wire Line
	9100 1100 10300 1100
Wire Wire Line
	10300 1100 10300 1200
Wire Wire Line
	10500 1200 10500 1100
Wire Wire Line
	10500 1100 10900 1100
Wire Wire Line
	10900 3300 1900 3300
Wire Wire Line
	1900 3300 1900 3600
Wire Wire Line
	2100 3600 2100 3500
Wire Wire Line
	2100 3500 3300 3500
Wire Wire Line
	3300 3500 3300 3600
Wire Wire Line
	3500 3600 3500 3500
Wire Wire Line
	3500 3500 4700 3500
Wire Wire Line
	4700 3500 4700 3600
Wire Wire Line
	4900 3600 4900 3500
Wire Wire Line
	4900 3500 6100 3500
Wire Wire Line
	6100 3500 6100 3600
Wire Wire Line
	6300 3600 6300 3500
Wire Wire Line
	6300 3500 7500 3500
Wire Wire Line
	7500 3500 7500 3600
Wire Wire Line
	7700 3600 7700 3500
Wire Wire Line
	7700 3500 8900 3500
Wire Wire Line
	8900 3500 8900 3600
Wire Wire Line
	9100 3600 9100 3500
Wire Wire Line
	9100 3500 10300 3500
Wire Wire Line
	10300 3500 10300 3600
Wire Wire Line
	10500 3600 10500 3500
Wire Wire Line
	10500 3500 10900 3500
Wire Wire Line
	10900 3500 10900 5450
Wire Wire Line
	10900 5450 1250 5450
Wire Wire Line
	10900 1100 10900 3300
Wire Wire Line
	1250 2550 10500 2550
Wire Wire Line
	10500 2550 10500 2400
Wire Wire Line
	1250 2950 10400 2950
Wire Wire Line
	2100 2400 2100 2550
Connection ~ 2100 2550
Wire Wire Line
	3500 2400 3500 2550
Connection ~ 3500 2550
Wire Wire Line
	4900 2400 4900 2550
Connection ~ 4900 2550
Wire Wire Line
	6300 2400 6300 2550
Connection ~ 6300 2550
Wire Wire Line
	7700 2400 7700 2550
Connection ~ 7700 2550
Wire Wire Line
	9100 2400 9100 2550
Connection ~ 9100 2550
Wire Wire Line
	10300 2950 10300 2400
Wire Wire Line
	8900 2400 8900 2950
Connection ~ 8900 2950
Wire Wire Line
	7500 2400 7500 2950
Connection ~ 7500 2950
Wire Wire Line
	6100 2400 6100 2950
Connection ~ 6100 2950
Wire Wire Line
	4700 2400 4700 2950
Connection ~ 4700 2950
Wire Wire Line
	3300 2400 3300 2950
Connection ~ 3300 2950
Wire Wire Line
	1900 2400 1900 2950
Connection ~ 1900 2950
$Comp
L C2 C54
U 1 1 542C0B48
P 3400 2750
F 0 "C54" H 3425 2850 50  0000 L CNN
F 1 "100n" H 3425 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3400 2750 50  0001 C CNN
F 3 "" H 3400 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3400 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3400 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3400 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 3400 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3400 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 3400 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3400 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3400 3650 60  0001 L CNN "Field11"
	1    3400 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C55
U 1 1 542C0B56
P 4800 2750
F 0 "C55" H 4825 2850 50  0000 L CNN
F 1 "100n" H 4825 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4800 2750 50  0001 C CNN
F 3 "" H 4800 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4800 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4800 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4800 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 4800 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4800 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 4800 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4800 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4800 3650 60  0001 L CNN "Field11"
	1    4800 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C56
U 1 1 542C0B64
P 6200 2750
F 0 "C56" H 6225 2850 50  0000 L CNN
F 1 "100n" H 6225 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6200 2750 50  0001 C CNN
F 3 "" H 6200 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6200 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6200 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6200 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 6200 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6200 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 6200 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6200 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6200 3650 60  0001 L CNN "Field11"
	1    6200 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C57
U 1 1 542C0B72
P 7600 2750
F 0 "C57" H 7625 2850 50  0000 L CNN
F 1 "100n" H 7625 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7600 2750 50  0001 C CNN
F 3 "" H 7600 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7600 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7600 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7600 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 7600 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7600 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 7600 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7600 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7600 3650 60  0001 L CNN "Field11"
	1    7600 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C58
U 1 1 542C0B80
P 9000 2750
F 0 "C58" H 9025 2850 50  0000 L CNN
F 1 "100n" H 9025 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 9000 2750 50  0001 C CNN
F 3 "" H 9000 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 9000 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 9000 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 9000 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 9000 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 9000 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 9000 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 9000 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 9000 3650 60  0001 L CNN "Field11"
	1    9000 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C59
U 1 1 542C0B8E
P 10400 2750
F 0 "C59" H 10425 2850 50  0000 L CNN
F 1 "100n" H 10425 2650 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10400 2750 50  0001 C CNN
F 3 "" H 10400 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10400 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10400 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10400 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 10400 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10400 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 10400 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10400 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10400 3650 60  0001 L CNN "Field11"
	1    10400 2750
	1    0    0    -1  
$EndComp
Connection ~ 10300 2950
$Comp
L C2 C60
U 1 1 542C0B9D
P 2000 5100
F 0 "C60" H 2025 5200 50  0000 L CNN
F 1 "100n" H 2025 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 2000 5100 50  0001 C CNN
F 3 "" H 2000 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 2000 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 2000 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 2000 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 2000 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 2000 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 2000 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 2000 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 2000 6000 60  0001 L CNN "Field11"
	1    2000 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2550 1550 4900
Wire Wire Line
	1550 4900 10500 4900
Wire Wire Line
	2100 4900 2100 4800
Wire Wire Line
	10500 4900 10500 4800
Connection ~ 2100 4900
Wire Wire Line
	9100 4900 9100 4800
Connection ~ 9100 4900
Wire Wire Line
	7700 4900 7700 4800
Connection ~ 7700 4900
Wire Wire Line
	6300 4900 6300 4800
Connection ~ 6300 4900
Wire Wire Line
	4900 4900 4900 4800
Connection ~ 4900 4900
Wire Wire Line
	3500 4900 3500 4800
Connection ~ 3500 4900
Connection ~ 2000 4900
Connection ~ 7600 2550
Connection ~ 9000 2550
Connection ~ 6200 2550
Connection ~ 6200 2950
Connection ~ 7600 2950
Connection ~ 9000 2950
Connection ~ 10400 2550
Connection ~ 10400 2950
Connection ~ 4800 2550
Connection ~ 4800 2950
Connection ~ 3400 2950
Connection ~ 3400 2550
Connection ~ 2000 2550
Connection ~ 2000 2950
Wire Wire Line
	1400 2950 1400 5300
Wire Wire Line
	1400 5300 10400 5300
Connection ~ 1400 2950
Wire Wire Line
	10300 4800 10300 5300
Connection ~ 2000 5300
Wire Wire Line
	8900 4800 8900 5300
Connection ~ 8900 5300
Wire Wire Line
	7500 4800 7500 5300
Connection ~ 7500 5300
Wire Wire Line
	6100 4800 6100 5300
Connection ~ 6100 5300
Wire Wire Line
	4700 4800 4700 5300
Connection ~ 4700 5300
Wire Wire Line
	3300 4800 3300 5300
Connection ~ 3300 5300
Wire Wire Line
	1900 4800 1900 5300
Connection ~ 1900 5300
$Comp
L C2 C61
U 1 1 542C0BDA
P 3400 5100
F 0 "C61" H 3425 5200 50  0000 L CNN
F 1 "100n" H 3425 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3400 5100 50  0001 C CNN
F 3 "" H 3400 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3400 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3400 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3400 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 3400 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3400 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 3400 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3400 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3400 6000 60  0001 L CNN "Field11"
	1    3400 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C62
U 1 1 542C0BE8
P 4800 5100
F 0 "C62" H 4825 5200 50  0000 L CNN
F 1 "100n" H 4825 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4800 5100 50  0001 C CNN
F 3 "" H 4800 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4800 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4800 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4800 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 4800 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4800 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 4800 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4800 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4800 6000 60  0001 L CNN "Field11"
	1    4800 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C63
U 1 1 542C0BF6
P 6200 5100
F 0 "C63" H 6225 5200 50  0000 L CNN
F 1 "100n" H 6225 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6200 5100 50  0001 C CNN
F 3 "" H 6200 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6200 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6200 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6200 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 6200 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6200 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 6200 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6200 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6200 6000 60  0001 L CNN "Field11"
	1    6200 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C64
U 1 1 542C0C04
P 7600 5100
F 0 "C64" H 7625 5200 50  0000 L CNN
F 1 "100n" H 7625 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7600 5100 50  0001 C CNN
F 3 "" H 7600 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7600 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7600 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7600 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 7600 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7600 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 7600 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7600 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7600 6000 60  0001 L CNN "Field11"
	1    7600 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C65
U 1 1 542C0C12
P 9000 5100
F 0 "C65" H 9025 5200 50  0000 L CNN
F 1 "100n" H 9025 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 9000 5100 50  0001 C CNN
F 3 "" H 9000 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 9000 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 9000 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 9000 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 9000 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 9000 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 9000 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 9000 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 9000 6000 60  0001 L CNN "Field11"
	1    9000 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C66
U 1 1 542C0C20
P 10400 5100
F 0 "C66" H 10425 5200 50  0000 L CNN
F 1 "100n" H 10425 5000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10400 5100 50  0001 C CNN
F 3 "" H 10400 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10400 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10400 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10400 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 10400 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10400 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 10400 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10400 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10400 6000 60  0001 L CNN "Field11"
	1    10400 5100
	1    0    0    -1  
$EndComp
Connection ~ 10400 5300
Connection ~ 10400 4900
Connection ~ 9000 5300
Connection ~ 9000 4900
Connection ~ 7600 4900
Connection ~ 7600 5300
Connection ~ 6200 5300
Connection ~ 6200 4900
Connection ~ 4800 4900
Connection ~ 4800 5300
Connection ~ 3400 5300
Connection ~ 3400 4900
Connection ~ 10300 5300
Connection ~ 1550 2550
$EndSCHEMATC
