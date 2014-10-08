EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 5800 0    60   Output ~ 0
DO_D
Text HLabel 1100 2900 0    60   Input ~ 0
GND
Text HLabel 1100 1450 0    60   Input ~ 0
DI_D
Text HLabel 1100 3300 0    60   Input ~ 0
5V
$Comp
L GND #PWR017
U 1 1 542E3299
P 1300 2950
F 0 "#PWR017" H 1300 2950 30  0001 C CNN
F 1 "GND" H 1300 2880 30  0001 C CNN
F 2 "" H 1300 2950 60  0001 C CNN
F 3 "" H 1300 2950 60  0001 C CNN
	1    1300 2950
	1    0    0    -1  
$EndComp
$Comp
L C2 C54
U 1 1 542E32A7
P 1850 3100
F 0 "C54" H 1875 3200 50  0000 L CNN
F 1 "100n" H 1875 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1850 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 4000 60  0001 L CNN "Field11"
	1    1850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2900 1300 2950
Wire Wire Line
	1100 1450 1750 1450
Wire Wire Line
	1750 1450 1750 1550
Connection ~ 1300 2900
Wire Wire Line
	1950 1550 1950 1450
Wire Wire Line
	1950 1450 3150 1450
Wire Wire Line
	3150 1450 3150 1550
Wire Wire Line
	3350 1550 3350 1450
Wire Wire Line
	3350 1450 4550 1450
Wire Wire Line
	4550 1450 4550 1550
Wire Wire Line
	4750 1550 4750 1450
Wire Wire Line
	4750 1450 5950 1450
Wire Wire Line
	5950 1450 5950 1550
Wire Wire Line
	6150 1550 6150 1450
Wire Wire Line
	6150 1450 7350 1450
Wire Wire Line
	7350 1450 7350 1550
Wire Wire Line
	7550 1550 7550 1450
Wire Wire Line
	7550 1450 8750 1450
Wire Wire Line
	8750 1450 8750 1550
Wire Wire Line
	8950 1550 8950 1450
Wire Wire Line
	8950 1450 10150 1450
Wire Wire Line
	10150 1450 10150 1550
Wire Wire Line
	10350 1550 10350 1450
Wire Wire Line
	10350 1450 10750 1450
Wire Wire Line
	10750 3650 1750 3650
Wire Wire Line
	1750 3650 1750 3950
Wire Wire Line
	1950 3950 1950 3850
Wire Wire Line
	1950 3850 3150 3850
Wire Wire Line
	3150 3850 3150 3950
Wire Wire Line
	3350 3950 3350 3850
Wire Wire Line
	3350 3850 4550 3850
Wire Wire Line
	4550 3850 4550 3950
Wire Wire Line
	4750 3950 4750 3850
Wire Wire Line
	4750 3850 5950 3850
Wire Wire Line
	5950 3850 5950 3950
Wire Wire Line
	6150 3950 6150 3850
Wire Wire Line
	6150 3850 7350 3850
Wire Wire Line
	7350 3850 7350 3950
Wire Wire Line
	7550 3950 7550 3850
Wire Wire Line
	7550 3850 8750 3850
Wire Wire Line
	8750 3850 8750 3950
Wire Wire Line
	8950 3950 8950 3850
Wire Wire Line
	8950 3850 10150 3850
Wire Wire Line
	10150 3850 10150 3950
Wire Wire Line
	10350 3950 10350 3850
Wire Wire Line
	10350 3850 10750 3850
Wire Wire Line
	10750 3850 10750 5800
Wire Wire Line
	10750 5800 1100 5800
Wire Wire Line
	10750 1450 10750 3650
Wire Wire Line
	1100 2900 10350 2900
Wire Wire Line
	10350 2900 10350 2750
Wire Wire Line
	1100 3300 10250 3300
Wire Wire Line
	1950 2750 1950 2900
Connection ~ 1950 2900
Wire Wire Line
	3350 2750 3350 2900
Connection ~ 3350 2900
Wire Wire Line
	4750 2750 4750 2900
Connection ~ 4750 2900
Wire Wire Line
	6150 2750 6150 2900
Connection ~ 6150 2900
Wire Wire Line
	7550 2750 7550 2900
Connection ~ 7550 2900
Wire Wire Line
	8950 2750 8950 2900
Connection ~ 8950 2900
Wire Wire Line
	10150 3300 10150 2750
Wire Wire Line
	8750 2750 8750 3300
Connection ~ 8750 3300
Wire Wire Line
	7350 2750 7350 3300
Connection ~ 7350 3300
Wire Wire Line
	5950 2750 5950 3300
Connection ~ 5950 3300
Wire Wire Line
	4550 2750 4550 3300
Connection ~ 4550 3300
Wire Wire Line
	3150 2750 3150 3300
Connection ~ 3150 3300
Wire Wire Line
	1750 2750 1750 3300
Connection ~ 1750 3300
$Comp
L C2 C55
U 1 1 542E3302
P 3250 3100
F 0 "C55" H 3275 3200 50  0000 L CNN
F 1 "100n" H 3275 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 3100 50  0001 C CNN
F 3 "" H 3250 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3250 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 4000 60  0001 L CNN "Field11"
	1    3250 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C56
U 1 1 542E3310
P 4650 3100
F 0 "C56" H 4675 3200 50  0000 L CNN
F 1 "100n" H 4675 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 3100 50  0001 C CNN
F 3 "" H 4650 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4650 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 4000 60  0001 L CNN "Field11"
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C57
U 1 1 542E331E
P 6050 3100
F 0 "C57" H 6075 3200 50  0000 L CNN
F 1 "100n" H 6075 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 3100 50  0001 C CNN
F 3 "" H 6050 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6050 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 4000 60  0001 L CNN "Field11"
	1    6050 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C58
U 1 1 542E332C
P 7450 3100
F 0 "C58" H 7475 3200 50  0000 L CNN
F 1 "100n" H 7475 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 3100 50  0001 C CNN
F 3 "" H 7450 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7450 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 4000 60  0001 L CNN "Field11"
	1    7450 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C59
U 1 1 542E333A
P 8850 3100
F 0 "C59" H 8875 3200 50  0000 L CNN
F 1 "100n" H 8875 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 3100 50  0001 C CNN
F 3 "" H 8850 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 3300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8850 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 4000 60  0001 L CNN "Field11"
	1    8850 3100
	1    0    0    -1  
$EndComp
$Comp
L C2 C60
U 1 1 542E3348
P 10250 3100
F 0 "C60" H 10275 3200 50  0000 L CNN
F 1 "100n" H 10275 3000 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 3100 50  0001 C CNN
F 3 "" H 10250 3100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 3300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10250 3400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 3500 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 3600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 3700 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 3800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 3900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 4000 60  0001 L CNN "Field11"
	1    10250 3100
	1    0    0    -1  
$EndComp
Connection ~ 10150 3300
$Comp
L C2 C61
U 1 1 542E3357
P 1850 5450
F 0 "C61" H 1875 5550 50  0000 L CNN
F 1 "100n" H 1875 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 5450 50  0001 C CNN
F 3 "" H 1850 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1850 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 6350 60  0001 L CNN "Field11"
	1    1850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2900 1400 5250
Wire Wire Line
	1400 5250 10350 5250
Wire Wire Line
	1950 5250 1950 5150
Wire Wire Line
	10350 5250 10350 5150
Connection ~ 1950 5250
Wire Wire Line
	8950 5250 8950 5150
Connection ~ 8950 5250
Wire Wire Line
	7550 5250 7550 5150
Connection ~ 7550 5250
Wire Wire Line
	6150 5250 6150 5150
Connection ~ 6150 5250
Wire Wire Line
	4750 5250 4750 5150
Connection ~ 4750 5250
Wire Wire Line
	3350 5250 3350 5150
Connection ~ 3350 5250
Connection ~ 1850 5250
Connection ~ 7450 2900
Connection ~ 8850 2900
Connection ~ 6050 2900
Connection ~ 6050 3300
Connection ~ 7450 3300
Connection ~ 8850 3300
Connection ~ 10250 2900
Connection ~ 10250 3300
Connection ~ 4650 2900
Connection ~ 4650 3300
Connection ~ 3250 3300
Connection ~ 3250 2900
Connection ~ 1850 2900
Connection ~ 1850 3300
Wire Wire Line
	1250 3300 1250 5650
Wire Wire Line
	1250 5650 10250 5650
Connection ~ 1250 3300
Wire Wire Line
	10150 5150 10150 5650
Connection ~ 1850 5650
Wire Wire Line
	8750 5150 8750 5650
Connection ~ 8750 5650
Wire Wire Line
	7350 5150 7350 5650
Connection ~ 7350 5650
Wire Wire Line
	5950 5150 5950 5650
Connection ~ 5950 5650
Wire Wire Line
	4550 5150 4550 5650
Connection ~ 4550 5650
Wire Wire Line
	3150 5150 3150 5650
Connection ~ 3150 5650
Wire Wire Line
	1750 5150 1750 5650
Connection ~ 1750 5650
$Comp
L C2 C62
U 1 1 542E3394
P 3250 5450
F 0 "C62" H 3275 5550 50  0000 L CNN
F 1 "100n" H 3275 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 5450 50  0001 C CNN
F 3 "" H 3250 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3250 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 6350 60  0001 L CNN "Field11"
	1    3250 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C63
U 1 1 542E33A2
P 4650 5450
F 0 "C63" H 4675 5550 50  0000 L CNN
F 1 "100n" H 4675 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 5450 50  0001 C CNN
F 3 "" H 4650 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4650 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 6350 60  0001 L CNN "Field11"
	1    4650 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C64
U 1 1 542E33B0
P 6050 5450
F 0 "C64" H 6075 5550 50  0000 L CNN
F 1 "100n" H 6075 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 5450 50  0001 C CNN
F 3 "" H 6050 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6050 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 6350 60  0001 L CNN "Field11"
	1    6050 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C65
U 1 1 542E33BE
P 7450 5450
F 0 "C65" H 7475 5550 50  0000 L CNN
F 1 "100n" H 7475 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 5450 50  0001 C CNN
F 3 "" H 7450 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7450 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 6350 60  0001 L CNN "Field11"
	1    7450 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C66
U 1 1 542E33CC
P 8850 5450
F 0 "C66" H 8875 5550 50  0000 L CNN
F 1 "100n" H 8875 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 5450 50  0001 C CNN
F 3 "" H 8850 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 5650 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8850 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 6350 60  0001 L CNN "Field11"
	1    8850 5450
	1    0    0    -1  
$EndComp
$Comp
L C2 C67
U 1 1 542E33DA
P 10250 5450
F 0 "C67" H 10275 5550 50  0000 L CNN
F 1 "100n" H 10275 5350 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 5450 50  0001 C CNN
F 3 "" H 10250 5450 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 5650 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10250 5750 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 5850 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 5950 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 6050 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 6150 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 6250 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 6350 60  0001 L CNN "Field11"
	1    10250 5450
	1    0    0    -1  
$EndComp
Connection ~ 10250 5650
Connection ~ 10250 5250
Connection ~ 8850 5650
Connection ~ 8850 5250
Connection ~ 7450 5250
Connection ~ 7450 5650
Connection ~ 6050 5650
Connection ~ 6050 5250
Connection ~ 4650 5250
Connection ~ 4650 5650
Connection ~ 3250 5650
Connection ~ 3250 5250
Connection ~ 1400 2900
Connection ~ 10150 5650
$Comp
L WS2812B LED43
U 1 1 542E33EE
P 1675 2125
F 0 "LED43" V 1425 2125 60  0000 C CNN
F 1 "WS2812B" V 2075 2125 60  0001 C CNN
F 2 "~" H 1675 2125 60  0000 C CNN
F 3 "~" H 1675 2125 60  0000 C CNN
	1    1675 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED44
U 1 1 542E33F4
P 3075 2125
F 0 "LED44" V 2825 2125 60  0000 C CNN
F 1 "WS2812B" V 3475 2125 60  0001 C CNN
F 2 "~" H 3075 2125 60  0000 C CNN
F 3 "~" H 3075 2125 60  0000 C CNN
	1    3075 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED45
U 1 1 542E33FA
P 4475 2125
F 0 "LED45" V 4225 2125 60  0000 C CNN
F 1 "WS2812B" V 4875 2125 60  0001 C CNN
F 2 "~" H 4475 2125 60  0000 C CNN
F 3 "~" H 4475 2125 60  0000 C CNN
	1    4475 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED46
U 1 1 542E3400
P 5875 2125
F 0 "LED46" V 5625 2125 60  0000 C CNN
F 1 "WS2812B" V 6275 2125 60  0001 C CNN
F 2 "~" H 5875 2125 60  0000 C CNN
F 3 "~" H 5875 2125 60  0000 C CNN
	1    5875 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED47
U 1 1 542E3406
P 7275 2125
F 0 "LED47" V 7025 2125 60  0000 C CNN
F 1 "WS2812B" V 7675 2125 60  0001 C CNN
F 2 "~" H 7275 2125 60  0000 C CNN
F 3 "~" H 7275 2125 60  0000 C CNN
	1    7275 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED48
U 1 1 542E340C
P 8675 2125
F 0 "LED48" V 8425 2125 60  0000 C CNN
F 1 "WS2812B" V 9075 2125 60  0001 C CNN
F 2 "~" H 8675 2125 60  0000 C CNN
F 3 "~" H 8675 2125 60  0000 C CNN
	1    8675 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED49
U 1 1 542E3412
P 10075 2125
F 0 "LED49" V 9825 2125 60  0000 C CNN
F 1 "WS2812B" V 10475 2125 60  0001 C CNN
F 2 "~" H 10075 2125 60  0000 C CNN
F 3 "~" H 10075 2125 60  0000 C CNN
	1    10075 2125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED50
U 1 1 542E3418
P 1675 4525
F 0 "LED50" V 1425 4525 60  0000 C CNN
F 1 "WS2812B" V 2075 4525 60  0001 C CNN
F 2 "~" H 1675 4525 60  0000 C CNN
F 3 "~" H 1675 4525 60  0000 C CNN
	1    1675 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED51
U 1 1 542E341E
P 3075 4525
F 0 "LED51" V 2825 4525 60  0000 C CNN
F 1 "WS2812B" V 3475 4525 60  0001 C CNN
F 2 "~" H 3075 4525 60  0000 C CNN
F 3 "~" H 3075 4525 60  0000 C CNN
	1    3075 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED52
U 1 1 542E3424
P 4475 4525
F 0 "LED52" V 4225 4525 60  0000 C CNN
F 1 "WS2812B" V 4875 4525 60  0001 C CNN
F 2 "~" H 4475 4525 60  0000 C CNN
F 3 "~" H 4475 4525 60  0000 C CNN
	1    4475 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED53
U 1 1 542E342A
P 5875 4525
F 0 "LED53" V 5625 4525 60  0000 C CNN
F 1 "WS2812B" V 6275 4525 60  0001 C CNN
F 2 "~" H 5875 4525 60  0000 C CNN
F 3 "~" H 5875 4525 60  0000 C CNN
	1    5875 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED54
U 1 1 542E3430
P 7275 4525
F 0 "LED54" V 7025 4525 60  0000 C CNN
F 1 "WS2812B" V 7675 4525 60  0001 C CNN
F 2 "~" H 7275 4525 60  0000 C CNN
F 3 "~" H 7275 4525 60  0000 C CNN
	1    7275 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED55
U 1 1 542E3436
P 8675 4525
F 0 "LED55" V 8425 4525 60  0000 C CNN
F 1 "WS2812B" V 9075 4525 60  0001 C CNN
F 2 "~" H 8675 4525 60  0000 C CNN
F 3 "~" H 8675 4525 60  0000 C CNN
	1    8675 4525
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED56
U 1 1 542E343C
P 10075 4525
F 0 "LED56" V 9825 4525 60  0000 C CNN
F 1 "WS2812B" V 10475 4525 60  0001 C CNN
F 2 "~" H 10075 4525 60  0000 C CNN
F 3 "~" H 10075 4525 60  0000 C CNN
	1    10075 4525
	1    0    0    -1  
$EndComp
$EndSCHEMATC
