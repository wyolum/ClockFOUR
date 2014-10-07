EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 13 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 5700 0    60   Output ~ 0
DO_L
Text HLabel 1100 2800 0    60   Input ~ 0
GND
Text HLabel 1100 1350 0    60   Input ~ 0
DI_L
Text HLabel 1100 3200 0    60   Input ~ 0
5V
$Comp
L GND #PWR025
U 1 1 542E4011
P 1300 2850
F 0 "#PWR025" H 1300 2850 30  0001 C CNN
F 1 "GND" H 1300 2780 30  0001 C CNN
F 2 "" H 1300 2850 60  0001 C CNN
F 3 "" H 1300 2850 60  0001 C CNN
	1    1300 2850
	1    0    0    -1  
$EndComp
$Comp
L C2 C166
U 1 1 542E401F
P 1850 3000
F 0 "C166" H 1875 3100 50  0000 L CNN
F 1 "100n" H 1875 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 3000 50  0001 C CNN
F 3 "" H 1850 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1850 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 3900 60  0001 L CNN "Field11"
	1    1850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2800 1300 2850
Wire Wire Line
	1100 1350 1750 1350
Wire Wire Line
	1750 1350 1750 1450
Connection ~ 1300 2800
Wire Wire Line
	1950 1450 1950 1350
Wire Wire Line
	1950 1350 3150 1350
Wire Wire Line
	3150 1350 3150 1450
Wire Wire Line
	3350 1450 3350 1350
Wire Wire Line
	3350 1350 4550 1350
Wire Wire Line
	4550 1350 4550 1450
Wire Wire Line
	4750 1450 4750 1350
Wire Wire Line
	4750 1350 5950 1350
Wire Wire Line
	5950 1350 5950 1450
Wire Wire Line
	6150 1450 6150 1350
Wire Wire Line
	6150 1350 7350 1350
Wire Wire Line
	7350 1350 7350 1450
Wire Wire Line
	7550 1450 7550 1350
Wire Wire Line
	7550 1350 8750 1350
Wire Wire Line
	8750 1350 8750 1450
Wire Wire Line
	8950 1450 8950 1350
Wire Wire Line
	8950 1350 10150 1350
Wire Wire Line
	10150 1350 10150 1450
Wire Wire Line
	10350 1450 10350 1350
Wire Wire Line
	10350 1350 10750 1350
Wire Wire Line
	10750 3550 1750 3550
Wire Wire Line
	1750 3550 1750 3850
Wire Wire Line
	1950 3850 1950 3750
Wire Wire Line
	1950 3750 3150 3750
Wire Wire Line
	3150 3750 3150 3850
Wire Wire Line
	3350 3850 3350 3750
Wire Wire Line
	3350 3750 4550 3750
Wire Wire Line
	4550 3750 4550 3850
Wire Wire Line
	4750 3850 4750 3750
Wire Wire Line
	4750 3750 5950 3750
Wire Wire Line
	5950 3750 5950 3850
Wire Wire Line
	6150 3850 6150 3750
Wire Wire Line
	6150 3750 7350 3750
Wire Wire Line
	7350 3750 7350 3850
Wire Wire Line
	7550 3850 7550 3750
Wire Wire Line
	7550 3750 8750 3750
Wire Wire Line
	8750 3750 8750 3850
Wire Wire Line
	8950 3850 8950 3750
Wire Wire Line
	8950 3750 10150 3750
Wire Wire Line
	10150 3750 10150 3850
Wire Wire Line
	10350 3850 10350 3750
Wire Wire Line
	10350 3750 10750 3750
Wire Wire Line
	10750 3750 10750 5700
Wire Wire Line
	10750 5700 1100 5700
Wire Wire Line
	10750 1350 10750 3550
Wire Wire Line
	1100 2800 10350 2800
Wire Wire Line
	10350 2800 10350 2650
Wire Wire Line
	1100 3200 10250 3200
Wire Wire Line
	1950 2650 1950 2800
Connection ~ 1950 2800
Wire Wire Line
	3350 2650 3350 2800
Connection ~ 3350 2800
Wire Wire Line
	4750 2650 4750 2800
Connection ~ 4750 2800
Wire Wire Line
	6150 2650 6150 2800
Connection ~ 6150 2800
Wire Wire Line
	7550 2650 7550 2800
Connection ~ 7550 2800
Wire Wire Line
	8950 2650 8950 2800
Connection ~ 8950 2800
Wire Wire Line
	10150 3200 10150 2650
Wire Wire Line
	8750 2650 8750 3200
Connection ~ 8750 3200
Wire Wire Line
	7350 2650 7350 3200
Connection ~ 7350 3200
Wire Wire Line
	5950 2650 5950 3200
Connection ~ 5950 3200
Wire Wire Line
	4550 2650 4550 3200
Connection ~ 4550 3200
Wire Wire Line
	3150 2650 3150 3200
Connection ~ 3150 3200
Wire Wire Line
	1750 2650 1750 3200
Connection ~ 1750 3200
$Comp
L C2 C167
U 1 1 542E407A
P 3250 3000
F 0 "C167" H 3275 3100 50  0000 L CNN
F 1 "100n" H 3275 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 3000 50  0001 C CNN
F 3 "" H 3250 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3250 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 3900 60  0001 L CNN "Field11"
	1    3250 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C168
U 1 1 542E4088
P 4650 3000
F 0 "C168" H 4675 3100 50  0000 L CNN
F 1 "100n" H 4675 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 3000 50  0001 C CNN
F 3 "" H 4650 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4650 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 3900 60  0001 L CNN "Field11"
	1    4650 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C169
U 1 1 542E4096
P 6050 3000
F 0 "C169" H 6075 3100 50  0000 L CNN
F 1 "100n" H 6075 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6050 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 3900 60  0001 L CNN "Field11"
	1    6050 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C170
U 1 1 542E40A4
P 7450 3000
F 0 "C170" H 7475 3100 50  0000 L CNN
F 1 "100n" H 7475 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 3000 50  0001 C CNN
F 3 "" H 7450 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7450 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 3900 60  0001 L CNN "Field11"
	1    7450 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C171
U 1 1 542E40B2
P 8850 3000
F 0 "C171" H 8875 3100 50  0000 L CNN
F 1 "100n" H 8875 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 3000 50  0001 C CNN
F 3 "" H 8850 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 3200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8850 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 3900 60  0001 L CNN "Field11"
	1    8850 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C172
U 1 1 542E40C0
P 10250 3000
F 0 "C172" H 10275 3100 50  0000 L CNN
F 1 "100n" H 10275 2900 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 3000 50  0001 C CNN
F 3 "" H 10250 3000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 3200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10250 3300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 3400 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 3500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 3600 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 3700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 3800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 3900 60  0001 L CNN "Field11"
	1    10250 3000
	1    0    0    -1  
$EndComp
Connection ~ 10150 3200
$Comp
L C2 C173
U 1 1 542E40CF
P 1850 5350
F 0 "C173" H 1875 5450 50  0000 L CNN
F 1 "100n" H 1875 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1850 5350 50  0001 C CNN
F 3 "" H 1850 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1850 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 6250 60  0001 L CNN "Field11"
	1    1850 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2800 1400 5150
Wire Wire Line
	1400 5150 10350 5150
Wire Wire Line
	1950 5150 1950 5050
Wire Wire Line
	10350 5150 10350 5050
Connection ~ 1950 5150
Wire Wire Line
	8950 5150 8950 5050
Connection ~ 8950 5150
Wire Wire Line
	7550 5150 7550 5050
Connection ~ 7550 5150
Wire Wire Line
	6150 5150 6150 5050
Connection ~ 6150 5150
Wire Wire Line
	4750 5150 4750 5050
Connection ~ 4750 5150
Wire Wire Line
	3350 5150 3350 5050
Connection ~ 3350 5150
Connection ~ 1850 5150
Connection ~ 7450 2800
Connection ~ 8850 2800
Connection ~ 6050 2800
Connection ~ 6050 3200
Connection ~ 7450 3200
Connection ~ 8850 3200
Connection ~ 10250 2800
Connection ~ 10250 3200
Connection ~ 4650 2800
Connection ~ 4650 3200
Connection ~ 3250 3200
Connection ~ 3250 2800
Connection ~ 1850 2800
Connection ~ 1850 3200
Wire Wire Line
	1250 3200 1250 5550
Wire Wire Line
	1250 5550 10250 5550
Connection ~ 1250 3200
Wire Wire Line
	10150 5050 10150 5550
Connection ~ 1850 5550
Wire Wire Line
	8750 5050 8750 5550
Connection ~ 8750 5550
Wire Wire Line
	7350 5050 7350 5550
Connection ~ 7350 5550
Wire Wire Line
	5950 5050 5950 5550
Connection ~ 5950 5550
Wire Wire Line
	4550 5050 4550 5550
Connection ~ 4550 5550
Wire Wire Line
	3150 5050 3150 5550
Connection ~ 3150 5550
Wire Wire Line
	1750 5050 1750 5550
Connection ~ 1750 5550
$Comp
L C2 C174
U 1 1 542E410C
P 3250 5350
F 0 "C174" H 3275 5450 50  0000 L CNN
F 1 "100n" H 3275 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3250 5350 50  0001 C CNN
F 3 "" H 3250 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3250 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 6250 60  0001 L CNN "Field11"
	1    3250 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C175
U 1 1 542E411A
P 4650 5350
F 0 "C175" H 4675 5450 50  0000 L CNN
F 1 "100n" H 4675 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4650 5350 50  0001 C CNN
F 3 "" H 4650 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4650 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 6250 60  0001 L CNN "Field11"
	1    4650 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C176
U 1 1 542E4128
P 6050 5350
F 0 "C176" H 6075 5450 50  0000 L CNN
F 1 "100n" H 6075 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6050 5350 50  0001 C CNN
F 3 "" H 6050 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6050 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 6250 60  0001 L CNN "Field11"
	1    6050 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C177
U 1 1 542E4136
P 7450 5350
F 0 "C177" H 7475 5450 50  0000 L CNN
F 1 "100n" H 7475 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7450 5350 50  0001 C CNN
F 3 "" H 7450 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7450 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 6250 60  0001 L CNN "Field11"
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C178
U 1 1 542E4144
P 8850 5350
F 0 "C178" H 8875 5450 50  0000 L CNN
F 1 "100n" H 8875 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8850 5350 50  0001 C CNN
F 3 "" H 8850 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 5550 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8850 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 6250 60  0001 L CNN "Field11"
	1    8850 5350
	1    0    0    -1  
$EndComp
$Comp
L C2 C179
U 1 1 542E4152
P 10250 5350
F 0 "C179" H 10275 5450 50  0000 L CNN
F 1 "100n" H 10275 5250 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10250 5350 50  0001 C CNN
F 3 "" H 10250 5350 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 5550 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10250 5650 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 5750 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 5850 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 5950 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 6050 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 6150 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 6250 60  0001 L CNN "Field11"
	1    10250 5350
	1    0    0    -1  
$EndComp
Connection ~ 10250 5550
Connection ~ 10250 5150
Connection ~ 8850 5550
Connection ~ 8850 5150
Connection ~ 7450 5150
Connection ~ 7450 5550
Connection ~ 6050 5550
Connection ~ 6050 5150
Connection ~ 4650 5150
Connection ~ 4650 5550
Connection ~ 3250 5550
Connection ~ 3250 5150
Connection ~ 1400 2800
Connection ~ 10150 5550
$Comp
L WS2812B LED155
U 1 1 542E4166
P 1675 2025
F 0 "LED155" V 1425 2025 60  0000 C CNN
F 1 "WS2812B" V 2075 2025 60  0001 C CNN
F 2 "~" H 1675 2025 60  0000 C CNN
F 3 "~" H 1675 2025 60  0000 C CNN
	1    1675 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED156
U 1 1 542E416C
P 3075 2025
F 0 "LED156" V 2825 2025 60  0000 C CNN
F 1 "WS2812B" V 3475 2025 60  0001 C CNN
F 2 "~" H 3075 2025 60  0000 C CNN
F 3 "~" H 3075 2025 60  0000 C CNN
	1    3075 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED157
U 1 1 542E4172
P 4475 2025
F 0 "LED157" V 4225 2025 60  0000 C CNN
F 1 "WS2812B" V 4875 2025 60  0001 C CNN
F 2 "~" H 4475 2025 60  0000 C CNN
F 3 "~" H 4475 2025 60  0000 C CNN
	1    4475 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED158
U 1 1 542E4178
P 5875 2025
F 0 "LED158" V 5625 2025 60  0000 C CNN
F 1 "WS2812B" V 6275 2025 60  0001 C CNN
F 2 "~" H 5875 2025 60  0000 C CNN
F 3 "~" H 5875 2025 60  0000 C CNN
	1    5875 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED159
U 1 1 542E417E
P 7275 2025
F 0 "LED159" V 7025 2025 60  0000 C CNN
F 1 "WS2812B" V 7675 2025 60  0001 C CNN
F 2 "~" H 7275 2025 60  0000 C CNN
F 3 "~" H 7275 2025 60  0000 C CNN
	1    7275 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED160
U 1 1 542E4184
P 8675 2025
F 0 "LED160" V 8425 2025 60  0000 C CNN
F 1 "WS2812B" V 9075 2025 60  0001 C CNN
F 2 "~" H 8675 2025 60  0000 C CNN
F 3 "~" H 8675 2025 60  0000 C CNN
	1    8675 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED161
U 1 1 542E418A
P 10075 2025
F 0 "LED161" V 9825 2025 60  0000 C CNN
F 1 "WS2812B" V 10475 2025 60  0001 C CNN
F 2 "~" H 10075 2025 60  0000 C CNN
F 3 "~" H 10075 2025 60  0000 C CNN
	1    10075 2025
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED162
U 1 1 542E4190
P 1675 4425
F 0 "LED162" V 1425 4425 60  0000 C CNN
F 1 "WS2812B" V 2075 4425 60  0001 C CNN
F 2 "~" H 1675 4425 60  0000 C CNN
F 3 "~" H 1675 4425 60  0000 C CNN
	1    1675 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED163
U 1 1 542E4196
P 3075 4425
F 0 "LED163" V 2825 4425 60  0000 C CNN
F 1 "WS2812B" V 3475 4425 60  0001 C CNN
F 2 "~" H 3075 4425 60  0000 C CNN
F 3 "~" H 3075 4425 60  0000 C CNN
	1    3075 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED164
U 1 1 542E419C
P 4475 4425
F 0 "LED164" V 4225 4425 60  0000 C CNN
F 1 "WS2812B" V 4875 4425 60  0001 C CNN
F 2 "~" H 4475 4425 60  0000 C CNN
F 3 "~" H 4475 4425 60  0000 C CNN
	1    4475 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED165
U 1 1 542E41A2
P 5875 4425
F 0 "LED165" V 5625 4425 60  0000 C CNN
F 1 "WS2812B" V 6275 4425 60  0001 C CNN
F 2 "~" H 5875 4425 60  0000 C CNN
F 3 "~" H 5875 4425 60  0000 C CNN
	1    5875 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED166
U 1 1 542E41A8
P 7275 4425
F 0 "LED166" V 7025 4425 60  0000 C CNN
F 1 "WS2812B" V 7675 4425 60  0001 C CNN
F 2 "~" H 7275 4425 60  0000 C CNN
F 3 "~" H 7275 4425 60  0000 C CNN
	1    7275 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED167
U 1 1 542E41AE
P 8675 4425
F 0 "LED167" V 8425 4425 60  0000 C CNN
F 1 "WS2812B" V 9075 4425 60  0001 C CNN
F 2 "~" H 8675 4425 60  0000 C CNN
F 3 "~" H 8675 4425 60  0000 C CNN
	1    8675 4425
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED168
U 1 1 542E41B4
P 10075 4425
F 0 "LED168" V 9825 4425 60  0000 C CNN
F 1 "WS2812B" V 10475 4425 60  0001 C CNN
F 2 "~" H 10075 4425 60  0000 C CNN
F 3 "~" H 10075 4425 60  0000 C CNN
	1    10075 4425
	1    0    0    -1  
$EndComp
$EndSCHEMATC
