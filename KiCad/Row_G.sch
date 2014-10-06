EESchema Schematic File Version 2
LIBS:ClockFOUR
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
LIBS:ClockFOUR-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 14
Title "ClockFOUR"
Date "6 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 5500 0    60   Output ~ 0
DO_G
Text HLabel 1100 2600 0    60   Input ~ 0
GND
Text HLabel 1100 1150 0    60   Input ~ 0
DI_G
Text HLabel 1100 3000 0    60   Input ~ 0
5V
$Comp
L GND #PWR17
U 1 1 542E37A6
P 1300 2650
F 0 "#PWR17" H 1300 2650 30  0001 C CNN
F 1 "GND" H 1300 2580 30  0001 C CNN
F 2 "" H 1300 2650 60  0001 C CNN
F 3 "" H 1300 2650 60  0001 C CNN
	1    1300 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C96
U 1 1 542E37B4
P 1850 2800
F 0 "C96" H 1875 2900 50  0000 L CNN
F 1 "100n" H 1875 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 2800 50  0001 C CNN
F 3 "" H 1850 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1850 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 3700 60  0001 L CNN "Field11"
	1    1850 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2600 1300 2650
Wire Wire Line
	1100 1150 1750 1150
Wire Wire Line
	1750 1150 1750 1250
Connection ~ 1300 2600
Wire Wire Line
	1950 1250 1950 1150
Wire Wire Line
	1950 1150 3150 1150
Wire Wire Line
	3150 1150 3150 1250
Wire Wire Line
	3350 1250 3350 1150
Wire Wire Line
	3350 1150 4550 1150
Wire Wire Line
	4550 1150 4550 1250
Wire Wire Line
	4750 1250 4750 1150
Wire Wire Line
	4750 1150 5950 1150
Wire Wire Line
	5950 1150 5950 1250
Wire Wire Line
	6150 1250 6150 1150
Wire Wire Line
	6150 1150 7350 1150
Wire Wire Line
	7350 1150 7350 1250
Wire Wire Line
	7550 1250 7550 1150
Wire Wire Line
	7550 1150 8750 1150
Wire Wire Line
	8750 1150 8750 1250
Wire Wire Line
	8950 1250 8950 1150
Wire Wire Line
	8950 1150 10150 1150
Wire Wire Line
	10150 1150 10150 1250
Wire Wire Line
	10350 1250 10350 1150
Wire Wire Line
	10350 1150 10750 1150
Wire Wire Line
	10750 3350 1750 3350
Wire Wire Line
	1750 3350 1750 3650
Wire Wire Line
	1950 3650 1950 3550
Wire Wire Line
	1950 3550 3150 3550
Wire Wire Line
	3150 3550 3150 3650
Wire Wire Line
	3350 3650 3350 3550
Wire Wire Line
	3350 3550 4550 3550
Wire Wire Line
	4550 3550 4550 3650
Wire Wire Line
	4750 3650 4750 3550
Wire Wire Line
	4750 3550 5950 3550
Wire Wire Line
	5950 3550 5950 3650
Wire Wire Line
	6150 3650 6150 3550
Wire Wire Line
	6150 3550 7350 3550
Wire Wire Line
	7350 3550 7350 3650
Wire Wire Line
	7550 3650 7550 3550
Wire Wire Line
	7550 3550 8750 3550
Wire Wire Line
	8750 3550 8750 3650
Wire Wire Line
	8950 3650 8950 3550
Wire Wire Line
	8950 3550 10150 3550
Wire Wire Line
	10150 3550 10150 3650
Wire Wire Line
	10350 3650 10350 3550
Wire Wire Line
	10350 3550 10750 3550
Wire Wire Line
	10750 3550 10750 5500
Wire Wire Line
	10750 5500 1100 5500
Wire Wire Line
	10750 1150 10750 3350
Wire Wire Line
	1100 2600 10350 2600
Wire Wire Line
	10350 2600 10350 2450
Wire Wire Line
	1100 3000 10250 3000
Wire Wire Line
	1950 2450 1950 2600
Connection ~ 1950 2600
Wire Wire Line
	3350 2450 3350 2600
Connection ~ 3350 2600
Wire Wire Line
	4750 2450 4750 2600
Connection ~ 4750 2600
Wire Wire Line
	6150 2450 6150 2600
Connection ~ 6150 2600
Wire Wire Line
	7550 2450 7550 2600
Connection ~ 7550 2600
Wire Wire Line
	8950 2450 8950 2600
Connection ~ 8950 2600
Wire Wire Line
	10150 3000 10150 2450
Wire Wire Line
	8750 2450 8750 3000
Connection ~ 8750 3000
Wire Wire Line
	7350 2450 7350 3000
Connection ~ 7350 3000
Wire Wire Line
	5950 2450 5950 3000
Connection ~ 5950 3000
Wire Wire Line
	4550 2450 4550 3000
Connection ~ 4550 3000
Wire Wire Line
	3150 2450 3150 3000
Connection ~ 3150 3000
Wire Wire Line
	1750 2450 1750 3000
Connection ~ 1750 3000
$Comp
L C2 C97
U 1 1 542E380F
P 3250 2800
F 0 "C97" H 3275 2900 50  0000 L CNN
F 1 "100n" H 3275 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 2800 50  0001 C CNN
F 3 "" H 3250 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3250 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 3700 60  0001 L CNN "Field11"
	1    3250 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C98
U 1 1 542E381D
P 4650 2800
F 0 "C98" H 4675 2900 50  0000 L CNN
F 1 "100n" H 4675 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 2800 50  0001 C CNN
F 3 "" H 4650 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4650 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 3700 60  0001 L CNN "Field11"
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C99
U 1 1 542E382B
P 6050 2800
F 0 "C99" H 6075 2900 50  0000 L CNN
F 1 "100n" H 6075 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 2800 50  0001 C CNN
F 3 "" H 6050 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6050 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 3700 60  0001 L CNN "Field11"
	1    6050 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C100
U 1 1 542E3839
P 7450 2800
F 0 "C100" H 7475 2900 50  0000 L CNN
F 1 "100n" H 7475 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 2800 50  0001 C CNN
F 3 "" H 7450 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7450 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 3700 60  0001 L CNN "Field11"
	1    7450 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C101
U 1 1 542E3847
P 8850 2800
F 0 "C101" H 8875 2900 50  0000 L CNN
F 1 "100n" H 8875 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 2800 50  0001 C CNN
F 3 "" H 8850 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8850 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 3700 60  0001 L CNN "Field11"
	1    8850 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C102
U 1 1 542E3855
P 10250 2800
F 0 "C102" H 10275 2900 50  0000 L CNN
F 1 "100n" H 10275 2700 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 2800 50  0001 C CNN
F 3 "" H 10250 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10250 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 3700 60  0001 L CNN "Field11"
	1    10250 2800
	1    0    0    -1  
$EndComp
Connection ~ 10150 3000
$Comp
L C2 C103
U 1 1 542E3864
P 1850 5150
F 0 "C103" H 1875 5250 50  0000 L CNN
F 1 "100n" H 1875 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 5150 50  0001 C CNN
F 3 "" H 1850 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1850 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 6050 60  0001 L CNN "Field11"
	1    1850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2600 1400 4950
Wire Wire Line
	1400 4950 10350 4950
Wire Wire Line
	1950 4950 1950 4850
Wire Wire Line
	10350 4950 10350 4850
Connection ~ 1950 4950
Wire Wire Line
	8950 4950 8950 4850
Connection ~ 8950 4950
Wire Wire Line
	7550 4950 7550 4850
Connection ~ 7550 4950
Wire Wire Line
	6150 4950 6150 4850
Connection ~ 6150 4950
Wire Wire Line
	4750 4950 4750 4850
Connection ~ 4750 4950
Wire Wire Line
	3350 4950 3350 4850
Connection ~ 3350 4950
Connection ~ 1850 4950
Connection ~ 7450 2600
Connection ~ 8850 2600
Connection ~ 6050 2600
Connection ~ 6050 3000
Connection ~ 7450 3000
Connection ~ 8850 3000
Connection ~ 10250 2600
Connection ~ 10250 3000
Connection ~ 4650 2600
Connection ~ 4650 3000
Connection ~ 3250 3000
Connection ~ 3250 2600
Connection ~ 1850 2600
Connection ~ 1850 3000
Wire Wire Line
	1250 3000 1250 5350
Wire Wire Line
	1250 5350 10250 5350
Connection ~ 1250 3000
Wire Wire Line
	10150 4850 10150 5350
Connection ~ 1850 5350
Wire Wire Line
	8750 4850 8750 5350
Connection ~ 8750 5350
Wire Wire Line
	7350 4850 7350 5350
Connection ~ 7350 5350
Wire Wire Line
	5950 4850 5950 5350
Connection ~ 5950 5350
Wire Wire Line
	4550 4850 4550 5350
Connection ~ 4550 5350
Wire Wire Line
	3150 4850 3150 5350
Connection ~ 3150 5350
Wire Wire Line
	1750 4850 1750 5350
Connection ~ 1750 5350
$Comp
L C2 C104
U 1 1 542E38A1
P 3250 5150
F 0 "C104" H 3275 5250 50  0000 L CNN
F 1 "100n" H 3275 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 5150 50  0001 C CNN
F 3 "" H 3250 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3250 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 6050 60  0001 L CNN "Field11"
	1    3250 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C105
U 1 1 542E38AF
P 4650 5150
F 0 "C105" H 4675 5250 50  0000 L CNN
F 1 "100n" H 4675 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 5150 50  0001 C CNN
F 3 "" H 4650 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4650 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 6050 60  0001 L CNN "Field11"
	1    4650 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C106
U 1 1 542E38BD
P 6050 5150
F 0 "C106" H 6075 5250 50  0000 L CNN
F 1 "100n" H 6075 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 5150 50  0001 C CNN
F 3 "" H 6050 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6050 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 6050 60  0001 L CNN "Field11"
	1    6050 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C107
U 1 1 542E38CB
P 7450 5150
F 0 "C107" H 7475 5250 50  0000 L CNN
F 1 "100n" H 7475 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 5150 50  0001 C CNN
F 3 "" H 7450 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7450 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 6050 60  0001 L CNN "Field11"
	1    7450 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C108
U 1 1 542E38D9
P 8850 5150
F 0 "C108" H 8875 5250 50  0000 L CNN
F 1 "100n" H 8875 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 5150 50  0001 C CNN
F 3 "" H 8850 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8850 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 6050 60  0001 L CNN "Field11"
	1    8850 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C109
U 1 1 542E38E7
P 10250 5150
F 0 "C109" H 10275 5250 50  0000 L CNN
F 1 "100n" H 10275 5050 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 5150 50  0001 C CNN
F 3 "" H 10250 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10250 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 6050 60  0001 L CNN "Field11"
	1    10250 5150
	1    0    0    -1  
$EndComp
Connection ~ 10250 5350
Connection ~ 10250 4950
Connection ~ 8850 5350
Connection ~ 8850 4950
Connection ~ 7450 4950
Connection ~ 7450 5350
Connection ~ 6050 5350
Connection ~ 6050 4950
Connection ~ 4650 4950
Connection ~ 4650 5350
Connection ~ 3250 5350
Connection ~ 3250 4950
Connection ~ 1400 2600
Connection ~ 10150 5350
$Comp
L WS2812B LED85
U 1 1 542E38FB
P 1675 1825
F 0 "LED85" V 1425 1825 60  0000 C CNN
F 1 "WS2812B" V 2075 1825 60  0001 C CNN
F 2 "~" H 1675 1825 60  0000 C CNN
F 3 "~" H 1675 1825 60  0000 C CNN
	1    1675 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED86
U 1 1 542E3901
P 3075 1825
F 0 "LED86" V 2825 1825 60  0000 C CNN
F 1 "WS2812B" V 3475 1825 60  0001 C CNN
F 2 "~" H 3075 1825 60  0000 C CNN
F 3 "~" H 3075 1825 60  0000 C CNN
	1    3075 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED87
U 1 1 542E3907
P 4475 1825
F 0 "LED87" V 4225 1825 60  0000 C CNN
F 1 "WS2812B" V 4875 1825 60  0001 C CNN
F 2 "~" H 4475 1825 60  0000 C CNN
F 3 "~" H 4475 1825 60  0000 C CNN
	1    4475 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED88
U 1 1 542E390D
P 5875 1825
F 0 "LED88" V 5625 1825 60  0000 C CNN
F 1 "WS2812B" V 6275 1825 60  0001 C CNN
F 2 "~" H 5875 1825 60  0000 C CNN
F 3 "~" H 5875 1825 60  0000 C CNN
	1    5875 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED89
U 1 1 542E3913
P 7275 1825
F 0 "LED89" V 7025 1825 60  0000 C CNN
F 1 "WS2812B" V 7675 1825 60  0001 C CNN
F 2 "~" H 7275 1825 60  0000 C CNN
F 3 "~" H 7275 1825 60  0000 C CNN
	1    7275 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED90
U 1 1 542E3919
P 8675 1825
F 0 "LED90" V 8425 1825 60  0000 C CNN
F 1 "WS2812B" V 9075 1825 60  0001 C CNN
F 2 "~" H 8675 1825 60  0000 C CNN
F 3 "~" H 8675 1825 60  0000 C CNN
	1    8675 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED91
U 1 1 542E391F
P 10075 1825
F 0 "LED91" V 9825 1825 60  0000 C CNN
F 1 "WS2812B" V 10475 1825 60  0001 C CNN
F 2 "~" H 10075 1825 60  0000 C CNN
F 3 "~" H 10075 1825 60  0000 C CNN
	1    10075 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED92
U 1 1 542E3925
P 1675 4225
F 0 "LED92" V 1425 4225 60  0000 C CNN
F 1 "WS2812B" V 2075 4225 60  0001 C CNN
F 2 "~" H 1675 4225 60  0000 C CNN
F 3 "~" H 1675 4225 60  0000 C CNN
	1    1675 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED93
U 1 1 542E392B
P 3075 4225
F 0 "LED93" V 2825 4225 60  0000 C CNN
F 1 "WS2812B" V 3475 4225 60  0001 C CNN
F 2 "~" H 3075 4225 60  0000 C CNN
F 3 "~" H 3075 4225 60  0000 C CNN
	1    3075 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED94
U 1 1 542E3931
P 4475 4225
F 0 "LED94" V 4225 4225 60  0000 C CNN
F 1 "WS2812B" V 4875 4225 60  0001 C CNN
F 2 "~" H 4475 4225 60  0000 C CNN
F 3 "~" H 4475 4225 60  0000 C CNN
	1    4475 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED95
U 1 1 542E3937
P 5875 4225
F 0 "LED95" V 5625 4225 60  0000 C CNN
F 1 "WS2812B" V 6275 4225 60  0001 C CNN
F 2 "~" H 5875 4225 60  0000 C CNN
F 3 "~" H 5875 4225 60  0000 C CNN
	1    5875 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED96
U 1 1 542E393D
P 7275 4225
F 0 "LED96" V 7025 4225 60  0000 C CNN
F 1 "WS2812B" V 7675 4225 60  0001 C CNN
F 2 "~" H 7275 4225 60  0000 C CNN
F 3 "~" H 7275 4225 60  0000 C CNN
	1    7275 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED97
U 1 1 542E3943
P 8675 4225
F 0 "LED97" V 8425 4225 60  0000 C CNN
F 1 "WS2812B" V 9075 4225 60  0001 C CNN
F 2 "~" H 8675 4225 60  0000 C CNN
F 3 "~" H 8675 4225 60  0000 C CNN
	1    8675 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED98
U 1 1 542E3949
P 10075 4225
F 0 "LED98" V 9825 4225 60  0000 C CNN
F 1 "WS2812B" V 10475 4225 60  0001 C CNN
F 2 "~" H 10075 4225 60  0000 C CNN
F 3 "~" H 10075 4225 60  0000 C CNN
	1    10075 4225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
