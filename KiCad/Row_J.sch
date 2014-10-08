EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1200 5700 0    60   Output ~ 0
DO_J
Text HLabel 1200 2800 0    60   Input ~ 0
GND
Text HLabel 1200 1350 0    60   Input ~ 0
DI_J
Text HLabel 1200 3200 0    60   Input ~ 0
5V
$Comp
L GND #PWR023
U 1 1 542E3CB3
P 1400 2850
F 0 "#PWR023" H 1400 2850 30  0001 C CNN
F 1 "GND" H 1400 2780 30  0001 C CNN
F 2 "" H 1400 2850 60  0001 C CNN
F 3 "" H 1400 2850 60  0001 C CNN
	1    1400 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C138
U 1 1 542E3CC1
P 1950 3000
F 0 "C138" H 1975 3100 50  0000 L CNN
F 1 "100n" H 1975 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 3000 50  0001 C CNN
F 3 "" H 1950 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1950 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 3900 60  0001 L CNN "Field11"
	1    1950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2800 1400 2850
Wire Wire Line
	1200 1350 1850 1350
Wire Wire Line
	1850 1350 1850 1450
Connection ~ 1400 2800
Wire Wire Line
	2050 1450 2050 1350
Wire Wire Line
	2050 1350 3250 1350
Wire Wire Line
	3250 1350 3250 1450
Wire Wire Line
	3450 1450 3450 1350
Wire Wire Line
	3450 1350 4650 1350
Wire Wire Line
	4650 1350 4650 1450
Wire Wire Line
	4850 1450 4850 1350
Wire Wire Line
	4850 1350 6050 1350
Wire Wire Line
	6050 1350 6050 1450
Wire Wire Line
	6250 1450 6250 1350
Wire Wire Line
	6250 1350 7450 1350
Wire Wire Line
	7450 1350 7450 1450
Wire Wire Line
	7650 1450 7650 1350
Wire Wire Line
	7650 1350 8850 1350
Wire Wire Line
	8850 1350 8850 1450
Wire Wire Line
	9050 1450 9050 1350
Wire Wire Line
	9050 1350 10250 1350
Wire Wire Line
	10250 1350 10250 1450
Wire Wire Line
	10450 1450 10450 1350
Wire Wire Line
	10450 1350 10850 1350
Wire Wire Line
	10850 3550 1850 3550
Wire Wire Line
	1850 3550 1850 3850
Wire Wire Line
	2050 3850 2050 3750
Wire Wire Line
	2050 3750 3250 3750
Wire Wire Line
	3250 3750 3250 3850
Wire Wire Line
	3450 3850 3450 3750
Wire Wire Line
	3450 3750 4650 3750
Wire Wire Line
	4650 3750 4650 3850
Wire Wire Line
	4850 3850 4850 3750
Wire Wire Line
	4850 3750 6050 3750
Wire Wire Line
	6050 3750 6050 3850
Wire Wire Line
	6250 3850 6250 3750
Wire Wire Line
	6250 3750 7450 3750
Wire Wire Line
	7450 3750 7450 3850
Wire Wire Line
	7650 3850 7650 3750
Wire Wire Line
	7650 3750 8850 3750
Wire Wire Line
	8850 3750 8850 3850
Wire Wire Line
	9050 3850 9050 3750
Wire Wire Line
	9050 3750 10250 3750
Wire Wire Line
	10250 3750 10250 3850
Wire Wire Line
	10450 3850 10450 3750
Wire Wire Line
	10450 3750 10850 3750
Wire Wire Line
	10850 3750 10850 5700
Wire Wire Line
	10850 5700 1200 5700
Wire Wire Line
	10850 1350 10850 3550
Wire Wire Line
	1200 2800 10450 2800
Wire Wire Line
	10450 2800 10450 2650
Wire Wire Line
	1200 3200 10350 3200
Wire Wire Line
	2050 2650 2050 2800
Connection ~ 2050 2800
Wire Wire Line
	3450 2650 3450 2800
Connection ~ 3450 2800
Wire Wire Line
	4850 2650 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	6250 2650 6250 2800
Connection ~ 6250 2800
Wire Wire Line
	7650 2650 7650 2800
Connection ~ 7650 2800
Wire Wire Line
	9050 2650 9050 2800
Connection ~ 9050 2800
Wire Wire Line
	10250 3200 10250 2650
Wire Wire Line
	8850 2650 8850 3200
Connection ~ 8850 3200
Wire Wire Line
	7450 2650 7450 3200
Connection ~ 7450 3200
Wire Wire Line
	6050 2650 6050 3200
Connection ~ 6050 3200
Wire Wire Line
	4650 2650 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	3250 2650 3250 3200
Connection ~ 3250 3200
Wire Wire Line
	1850 2650 1850 3200
Connection ~ 1850 3200
$Comp
L C2 C139
U 1 1 542E3D1C
P 3350 3000
F 0 "C139" H 3375 3100 50  0000 L CNN
F 1 "100n" H 3375 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 3000 50  0001 C CNN
F 3 "" H 3350 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3350 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 3900 60  0001 L CNN "Field11"
	1    3350 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C140
U 1 1 542E3D2A
P 4750 3000
F 0 "C140" H 4775 3100 50  0000 L CNN
F 1 "100n" H 4775 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 3000 50  0001 C CNN
F 3 "" H 4750 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4750 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 3900 60  0001 L CNN "Field11"
	1    4750 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C141
U 1 1 542E3D38
P 6150 3000
F 0 "C141" H 6175 3100 50  0000 L CNN
F 1 "100n" H 6175 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 3000 50  0001 C CNN
F 3 "" H 6150 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6150 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 3900 60  0001 L CNN "Field11"
	1    6150 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C142
U 1 1 542E3D46
P 7550 3000
F 0 "C142" H 7575 3100 50  0000 L CNN
F 1 "100n" H 7575 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 3000 50  0001 C CNN
F 3 "" H 7550 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7550 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 3900 60  0001 L CNN "Field11"
	1    7550 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C143
U 1 1 542E3D54
P 8950 3000
F 0 "C143" H 8975 3100 50  0000 L CNN
F 1 "100n" H 8975 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 3000 50  0001 C CNN
F 3 "" H 8950 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8950 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 3900 60  0001 L CNN "Field11"
	1    8950 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C144
U 1 1 542E3D62
P 10350 3000
F 0 "C144" H 10375 3100 50  0000 L CNN
F 1 "100n" H 10375 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 3000 50  0001 C CNN
F 3 "" H 10350 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10350 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 3900 60  0001 L CNN "Field11"
	1    10350 3000
	1    0    0    -1  
$EndComp
Connection ~ 10250 3200
$Comp
L C2 C145
U 1 1 542E3D71
P 1950 5350
F 0 "C145" H 1975 5450 50  0000 L CNN
F 1 "100n" H 1975 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1950 5350 50  0001 C CNN
F 3 "" H 1950 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1950 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1950 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1950 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 1950 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1950 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 1950 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1950 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1950 6250 60  0001 L CNN "Field11"
	1    1950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2800 1500 5150
Wire Wire Line
	1500 5150 10450 5150
Wire Wire Line
	2050 5150 2050 5050
Wire Wire Line
	10450 5150 10450 5050
Connection ~ 2050 5150
Wire Wire Line
	9050 5150 9050 5050
Connection ~ 9050 5150
Wire Wire Line
	7650 5150 7650 5050
Connection ~ 7650 5150
Wire Wire Line
	6250 5150 6250 5050
Connection ~ 6250 5150
Wire Wire Line
	4850 5150 4850 5050
Connection ~ 4850 5150
Wire Wire Line
	3450 5150 3450 5050
Connection ~ 3450 5150
Connection ~ 1950 5150
Connection ~ 7550 2800
Connection ~ 8950 2800
Connection ~ 6150 2800
Connection ~ 6150 3200
Connection ~ 7550 3200
Connection ~ 8950 3200
Connection ~ 10350 2800
Connection ~ 10350 3200
Connection ~ 4750 2800
Connection ~ 4750 3200
Connection ~ 3350 3200
Connection ~ 3350 2800
Connection ~ 1950 2800
Connection ~ 1950 3200
Wire Wire Line
	1350 3200 1350 5550
Wire Wire Line
	1350 5550 10350 5550
Connection ~ 1350 3200
Wire Wire Line
	10250 5050 10250 5550
Connection ~ 1950 5550
Wire Wire Line
	8850 5050 8850 5550
Connection ~ 8850 5550
Wire Wire Line
	7450 5050 7450 5550
Connection ~ 7450 5550
Wire Wire Line
	6050 5050 6050 5550
Connection ~ 6050 5550
Wire Wire Line
	4650 5050 4650 5550
Connection ~ 4650 5550
Wire Wire Line
	3250 5050 3250 5550
Connection ~ 3250 5550
Wire Wire Line
	1850 5050 1850 5550
Connection ~ 1850 5550
$Comp
L C2 C146
U 1 1 542E3DAE
P 3350 5350
F 0 "C146" H 3375 5450 50  0000 L CNN
F 1 "100n" H 3375 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3350 5350 50  0001 C CNN
F 3 "" H 3350 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3350 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3350 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3350 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 3350 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3350 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 3350 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3350 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3350 6250 60  0001 L CNN "Field11"
	1    3350 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C147
U 1 1 542E3DBC
P 4750 5350
F 0 "C147" H 4775 5450 50  0000 L CNN
F 1 "100n" H 4775 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4750 5350 50  0001 C CNN
F 3 "" H 4750 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4750 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4750 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4750 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 4750 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4750 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 4750 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4750 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4750 6250 60  0001 L CNN "Field11"
	1    4750 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C148
U 1 1 542E3DCA
P 6150 5350
F 0 "C148" H 6175 5450 50  0000 L CNN
F 1 "100n" H 6175 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6150 5350 50  0001 C CNN
F 3 "" H 6150 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6150 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6150 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6150 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 6150 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6150 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 6150 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6150 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6150 6250 60  0001 L CNN "Field11"
	1    6150 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C149
U 1 1 542E3DD8
P 7550 5350
F 0 "C149" H 7575 5450 50  0000 L CNN
F 1 "100n" H 7575 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7550 5350 50  0001 C CNN
F 3 "" H 7550 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7550 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7550 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7550 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 7550 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7550 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 7550 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7550 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7550 6250 60  0001 L CNN "Field11"
	1    7550 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C150
U 1 1 542E3DE6
P 8950 5350
F 0 "C150" H 8975 5450 50  0000 L CNN
F 1 "100n" H 8975 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8950 5350 50  0001 C CNN
F 3 "" H 8950 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8950 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8950 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8950 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 8950 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8950 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 8950 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8950 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8950 6250 60  0001 L CNN "Field11"
	1    8950 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C151
U 1 1 542E3DF4
P 10350 5350
F 0 "C151" H 10375 5450 50  0000 L CNN
F 1 "100n" H 10375 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10350 5350 50  0001 C CNN
F 3 "" H 10350 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10350 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10350 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10350 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 10350 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10350 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 10350 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10350 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10350 6250 60  0001 L CNN "Field11"
	1    10350 5350
	1    0    0    -1  
$EndComp
Connection ~ 10350 5550
Connection ~ 10350 5150
Connection ~ 8950 5550
Connection ~ 8950 5150
Connection ~ 7550 5150
Connection ~ 7550 5550
Connection ~ 6150 5550
Connection ~ 6150 5150
Connection ~ 4750 5150
Connection ~ 4750 5550
Connection ~ 3350 5550
Connection ~ 3350 5150
Connection ~ 1500 2800
Connection ~ 10250 5550
$Comp
L WS2812B LED127
U 1 1 542E3E08
P 1775 2025
F 0 "LED127" V 1525 2025 60  0000 C CNN
F 1 "WS2812B" V 2175 2025 60  0001 C CNN
F 2 "~" H 1775 2025 60  0000 C CNN
F 3 "~" H 1775 2025 60  0000 C CNN
	1    1775 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED128
U 1 1 542E3E0E
P 3175 2025
F 0 "LED128" V 2925 2025 60  0000 C CNN
F 1 "WS2812B" V 3575 2025 60  0001 C CNN
F 2 "~" H 3175 2025 60  0000 C CNN
F 3 "~" H 3175 2025 60  0000 C CNN
	1    3175 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED129
U 1 1 542E3E14
P 4575 2025
F 0 "LED129" V 4325 2025 60  0000 C CNN
F 1 "WS2812B" V 4975 2025 60  0001 C CNN
F 2 "~" H 4575 2025 60  0000 C CNN
F 3 "~" H 4575 2025 60  0000 C CNN
	1    4575 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED130
U 1 1 542E3E1A
P 5975 2025
F 0 "LED130" V 5725 2025 60  0000 C CNN
F 1 "WS2812B" V 6375 2025 60  0001 C CNN
F 2 "~" H 5975 2025 60  0000 C CNN
F 3 "~" H 5975 2025 60  0000 C CNN
	1    5975 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED131
U 1 1 542E3E20
P 7375 2025
F 0 "LED131" V 7125 2025 60  0000 C CNN
F 1 "WS2812B" V 7775 2025 60  0001 C CNN
F 2 "~" H 7375 2025 60  0000 C CNN
F 3 "~" H 7375 2025 60  0000 C CNN
	1    7375 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED132
U 1 1 542E3E26
P 8775 2025
F 0 "LED132" V 8525 2025 60  0000 C CNN
F 1 "WS2812B" V 9175 2025 60  0001 C CNN
F 2 "~" H 8775 2025 60  0000 C CNN
F 3 "~" H 8775 2025 60  0000 C CNN
	1    8775 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED133
U 1 1 542E3E2C
P 10175 2025
F 0 "LED133" V 9925 2025 60  0000 C CNN
F 1 "WS2812B" V 10575 2025 60  0001 C CNN
F 2 "~" H 10175 2025 60  0000 C CNN
F 3 "~" H 10175 2025 60  0000 C CNN
	1    10175 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED134
U 1 1 542E3E32
P 1775 4425
F 0 "LED134" V 1525 4425 60  0000 C CNN
F 1 "WS2812B" V 2175 4425 60  0001 C CNN
F 2 "~" H 1775 4425 60  0000 C CNN
F 3 "~" H 1775 4425 60  0000 C CNN
	1    1775 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED135
U 1 1 542E3E38
P 3175 4425
F 0 "LED135" V 2925 4425 60  0000 C CNN
F 1 "WS2812B" V 3575 4425 60  0001 C CNN
F 2 "~" H 3175 4425 60  0000 C CNN
F 3 "~" H 3175 4425 60  0000 C CNN
	1    3175 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED136
U 1 1 542E3E3E
P 4575 4425
F 0 "LED136" V 4325 4425 60  0000 C CNN
F 1 "WS2812B" V 4975 4425 60  0001 C CNN
F 2 "~" H 4575 4425 60  0000 C CNN
F 3 "~" H 4575 4425 60  0000 C CNN
	1    4575 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED137
U 1 1 542E3E44
P 5975 4425
F 0 "LED137" V 5725 4425 60  0000 C CNN
F 1 "WS2812B" V 6375 4425 60  0001 C CNN
F 2 "~" H 5975 4425 60  0000 C CNN
F 3 "~" H 5975 4425 60  0000 C CNN
	1    5975 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED138
U 1 1 542E3E4A
P 7375 4425
F 0 "LED138" V 7125 4425 60  0000 C CNN
F 1 "WS2812B" V 7775 4425 60  0001 C CNN
F 2 "~" H 7375 4425 60  0000 C CNN
F 3 "~" H 7375 4425 60  0000 C CNN
	1    7375 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED139
U 1 1 542E3E50
P 8775 4425
F 0 "LED139" V 8525 4425 60  0000 C CNN
F 1 "WS2812B" V 9175 4425 60  0001 C CNN
F 2 "~" H 8775 4425 60  0000 C CNN
F 3 "~" H 8775 4425 60  0000 C CNN
	1    8775 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED140
U 1 1 542E3E56
P 10175 4425
F 0 "LED140" V 9925 4425 60  0000 C CNN
F 1 "WS2812B" V 10575 4425 60  0001 C CNN
F 2 "~" H 10175 4425 60  0000 C CNN
F 3 "~" H 10175 4425 60  0000 C CNN
	1    10175 4425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
