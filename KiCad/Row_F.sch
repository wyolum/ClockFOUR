EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1000 5500 0    60   Output ~ 0
DO_F
Text HLabel 1000 2600 0    60   Input ~ 0
GND
Text HLabel 1000 1150 0    60   Input ~ 0
DI_F
Text HLabel 1000 3000 0    60   Input ~ 0
5V
$Comp
L GND #PWR019
U 1 1 542E35F7
P 1200 2650
F 0 "#PWR019" H 1200 2650 30  0001 C CNN
F 1 "GND" H 1200 2580 30  0001 C CNN
F 2 "" H 1200 2650 60  0001 C CNN
F 3 "" H 1200 2650 60  0001 C CNN
	1    1200 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C82
U 1 1 542E3605
P 1750 2800
F 0 "C82" H 1775 2900 50  0000 L CNN
F 1 "100n" H 1775 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1750 2800 50  0001 C CNN
F 3 "" H 1750 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1750 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1750 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1750 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 1750 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1750 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 1750 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1750 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1750 3700 60  0001 L CNN "Field11"
	1    1750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2600 1200 2650
Wire Wire Line
	1000 1150 1650 1150
Wire Wire Line
	1650 1150 1650 1250
Connection ~ 1200 2600
Wire Wire Line
	1850 1250 1850 1150
Wire Wire Line
	1850 1150 3050 1150
Wire Wire Line
	3050 1150 3050 1250
Wire Wire Line
	3250 1250 3250 1150
Wire Wire Line
	3250 1150 4450 1150
Wire Wire Line
	4450 1150 4450 1250
Wire Wire Line
	4650 1250 4650 1150
Wire Wire Line
	4650 1150 5850 1150
Wire Wire Line
	5850 1150 5850 1250
Wire Wire Line
	6050 1250 6050 1150
Wire Wire Line
	6050 1150 7250 1150
Wire Wire Line
	7250 1150 7250 1250
Wire Wire Line
	7450 1250 7450 1150
Wire Wire Line
	7450 1150 8650 1150
Wire Wire Line
	8650 1150 8650 1250
Wire Wire Line
	8850 1250 8850 1150
Wire Wire Line
	8850 1150 10050 1150
Wire Wire Line
	10050 1150 10050 1250
Wire Wire Line
	10250 1250 10250 1150
Wire Wire Line
	10250 1150 10650 1150
Wire Wire Line
	10650 3350 1650 3350
Wire Wire Line
	1650 3350 1650 3650
Wire Wire Line
	1850 3650 1850 3550
Wire Wire Line
	1850 3550 3050 3550
Wire Wire Line
	3050 3550 3050 3650
Wire Wire Line
	3250 3650 3250 3550
Wire Wire Line
	3250 3550 4450 3550
Wire Wire Line
	4450 3550 4450 3650
Wire Wire Line
	4650 3650 4650 3550
Wire Wire Line
	4650 3550 5850 3550
Wire Wire Line
	5850 3550 5850 3650
Wire Wire Line
	6050 3650 6050 3550
Wire Wire Line
	6050 3550 7250 3550
Wire Wire Line
	7250 3550 7250 3650
Wire Wire Line
	7450 3650 7450 3550
Wire Wire Line
	7450 3550 8650 3550
Wire Wire Line
	8650 3550 8650 3650
Wire Wire Line
	8850 3650 8850 3550
Wire Wire Line
	8850 3550 10050 3550
Wire Wire Line
	10050 3550 10050 3650
Wire Wire Line
	10250 3650 10250 3550
Wire Wire Line
	10250 3550 10650 3550
Wire Wire Line
	10650 3550 10650 5500
Wire Wire Line
	10650 5500 1000 5500
Wire Wire Line
	10650 1150 10650 3350
Wire Wire Line
	1000 2600 10250 2600
Wire Wire Line
	10250 2600 10250 2450
Wire Wire Line
	1000 3000 10150 3000
Wire Wire Line
	1850 2450 1850 2600
Connection ~ 1850 2600
Wire Wire Line
	3250 2450 3250 2600
Connection ~ 3250 2600
Wire Wire Line
	4650 2450 4650 2600
Connection ~ 4650 2600
Wire Wire Line
	6050 2450 6050 2600
Connection ~ 6050 2600
Wire Wire Line
	7450 2450 7450 2600
Connection ~ 7450 2600
Wire Wire Line
	8850 2450 8850 2600
Connection ~ 8850 2600
Wire Wire Line
	10050 3000 10050 2450
Wire Wire Line
	8650 2450 8650 3000
Connection ~ 8650 3000
Wire Wire Line
	7250 2450 7250 3000
Connection ~ 7250 3000
Wire Wire Line
	5850 2450 5850 3000
Connection ~ 5850 3000
Wire Wire Line
	4450 2450 4450 3000
Connection ~ 4450 3000
Wire Wire Line
	3050 2450 3050 3000
Connection ~ 3050 3000
Wire Wire Line
	1650 2450 1650 3000
Connection ~ 1650 3000
$Comp
L C2 C83
U 1 1 542E3660
P 3150 2800
F 0 "C83" H 3175 2900 50  0000 L CNN
F 1 "100n" H 3175 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3150 2800 50  0001 C CNN
F 3 "" H 3150 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3150 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3150 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3150 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 3150 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3150 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 3150 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3150 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3150 3700 60  0001 L CNN "Field11"
	1    3150 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C84
U 1 1 542E366E
P 4550 2800
F 0 "C84" H 4575 2900 50  0000 L CNN
F 1 "100n" H 4575 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4550 2800 50  0001 C CNN
F 3 "" H 4550 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4550 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4550 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4550 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 4550 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4550 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 4550 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4550 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4550 3700 60  0001 L CNN "Field11"
	1    4550 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C85
U 1 1 542E367C
P 5950 2800
F 0 "C85" H 5975 2900 50  0000 L CNN
F 1 "100n" H 5975 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 5950 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 5950 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 5950 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 5950 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 5950 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 5950 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 5950 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 5950 3700 60  0001 L CNN "Field11"
	1    5950 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C86
U 1 1 542E368A
P 7350 2800
F 0 "C86" H 7375 2900 50  0000 L CNN
F 1 "100n" H 7375 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7350 2800 50  0001 C CNN
F 3 "" H 7350 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7350 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7350 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7350 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 7350 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7350 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 7350 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7350 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7350 3700 60  0001 L CNN "Field11"
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C87
U 1 1 542E3698
P 8750 2800
F 0 "C87" H 8775 2900 50  0000 L CNN
F 1 "100n" H 8775 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8750 2800 50  0001 C CNN
F 3 "" H 8750 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8750 3000 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8750 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8750 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 8750 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8750 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 8750 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8750 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8750 3700 60  0001 L CNN "Field11"
	1    8750 2800
	1    0    0    -1  
$EndComp
$Comp
L C2 C88
U 1 1 542E36A6
P 10150 2800
F 0 "C88" H 10175 2900 50  0000 L CNN
F 1 "100n" H 10175 2700 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10150 2800 50  0001 C CNN
F 3 "" H 10150 2800 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10150 3000 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10150 3100 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10150 3200 60  0001 L CNN "Field6"
F 7 "Kemet" H 10150 3300 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10150 3400 60  0001 L CNN "Field8"
F 9 "Digikey" H 10150 3500 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10150 3600 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10150 3700 60  0001 L CNN "Field11"
	1    10150 2800
	1    0    0    -1  
$EndComp
Connection ~ 10050 3000
$Comp
L C2 C89
U 1 1 542E36B5
P 1750 5150
F 0 "C89" H 1775 5250 50  0000 L CNN
F 1 "100n" H 1775 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1750 5150 50  0001 C CNN
F 3 "" H 1750 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1750 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1750 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1750 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 1750 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1750 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 1750 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1750 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1750 6050 60  0001 L CNN "Field11"
	1    1750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2600 1300 4950
Wire Wire Line
	1300 4950 10250 4950
Wire Wire Line
	1850 4950 1850 4850
Wire Wire Line
	10250 4950 10250 4850
Connection ~ 1850 4950
Wire Wire Line
	8850 4950 8850 4850
Connection ~ 8850 4950
Wire Wire Line
	7450 4950 7450 4850
Connection ~ 7450 4950
Wire Wire Line
	6050 4950 6050 4850
Connection ~ 6050 4950
Wire Wire Line
	4650 4950 4650 4850
Connection ~ 4650 4950
Wire Wire Line
	3250 4950 3250 4850
Connection ~ 3250 4950
Connection ~ 1750 4950
Connection ~ 7350 2600
Connection ~ 8750 2600
Connection ~ 5950 2600
Connection ~ 5950 3000
Connection ~ 7350 3000
Connection ~ 8750 3000
Connection ~ 10150 2600
Connection ~ 10150 3000
Connection ~ 4550 2600
Connection ~ 4550 3000
Connection ~ 3150 3000
Connection ~ 3150 2600
Connection ~ 1750 2600
Connection ~ 1750 3000
Wire Wire Line
	1150 3000 1150 5350
Wire Wire Line
	1150 5350 10150 5350
Connection ~ 1150 3000
Wire Wire Line
	10050 4850 10050 5350
Connection ~ 1750 5350
Wire Wire Line
	8650 4850 8650 5350
Connection ~ 8650 5350
Wire Wire Line
	7250 4850 7250 5350
Connection ~ 7250 5350
Wire Wire Line
	5850 4850 5850 5350
Connection ~ 5850 5350
Wire Wire Line
	4450 4850 4450 5350
Connection ~ 4450 5350
Wire Wire Line
	3050 4850 3050 5350
Connection ~ 3050 5350
Wire Wire Line
	1650 4850 1650 5350
Connection ~ 1650 5350
$Comp
L C2 C90
U 1 1 542E36F2
P 3150 5150
F 0 "C90" H 3175 5250 50  0000 L CNN
F 1 "100n" H 3175 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3150 5150 50  0001 C CNN
F 3 "" H 3150 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3150 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3150 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3150 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 3150 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3150 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 3150 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3150 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3150 6050 60  0001 L CNN "Field11"
	1    3150 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C91
U 1 1 542E3700
P 4550 5150
F 0 "C91" H 4575 5250 50  0000 L CNN
F 1 "100n" H 4575 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4550 5150 50  0001 C CNN
F 3 "" H 4550 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4550 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4550 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4550 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 4550 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4550 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 4550 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4550 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4550 6050 60  0001 L CNN "Field11"
	1    4550 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C92
U 1 1 542E370E
P 5950 5150
F 0 "C92" H 5975 5250 50  0000 L CNN
F 1 "100n" H 5975 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 5950 5150 50  0001 C CNN
F 3 "" H 5950 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 5950 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 5950 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 5950 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 5950 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 5950 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 5950 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 5950 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 5950 6050 60  0001 L CNN "Field11"
	1    5950 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C93
U 1 1 542E371C
P 7350 5150
F 0 "C93" H 7375 5250 50  0000 L CNN
F 1 "100n" H 7375 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7350 5150 50  0001 C CNN
F 3 "" H 7350 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7350 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7350 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7350 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 7350 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7350 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 7350 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7350 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7350 6050 60  0001 L CNN "Field11"
	1    7350 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C94
U 1 1 542E372A
P 8750 5150
F 0 "C94" H 8775 5250 50  0000 L CNN
F 1 "100n" H 8775 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8750 5150 50  0001 C CNN
F 3 "" H 8750 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8750 5350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8750 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8750 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 8750 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8750 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 8750 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8750 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8750 6050 60  0001 L CNN "Field11"
	1    8750 5150
	1    0    0    -1  
$EndComp
$Comp
L C2 C95
U 1 1 542E3738
P 10150 5150
F 0 "C95" H 10175 5250 50  0000 L CNN
F 1 "100n" H 10175 5050 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10150 5150 50  0001 C CNN
F 3 "" H 10150 5150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10150 5350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10150 5450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10150 5550 60  0001 L CNN "Field6"
F 7 "Kemet" H 10150 5650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10150 5750 60  0001 L CNN "Field8"
F 9 "Digikey" H 10150 5850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10150 5950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10150 6050 60  0001 L CNN "Field11"
	1    10150 5150
	1    0    0    -1  
$EndComp
Connection ~ 10150 5350
Connection ~ 10150 4950
Connection ~ 8750 5350
Connection ~ 8750 4950
Connection ~ 7350 4950
Connection ~ 7350 5350
Connection ~ 5950 5350
Connection ~ 5950 4950
Connection ~ 4550 4950
Connection ~ 4550 5350
Connection ~ 3150 5350
Connection ~ 3150 4950
Connection ~ 1300 2600
Connection ~ 10050 5350
$Comp
L WS2812B LED71
U 1 1 542E374C
P 1575 1825
F 0 "LED71" V 1325 1825 60  0000 C CNN
F 1 "WS2812B" V 1975 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1575 1825 60  0001 C CNN
F 3 "~" H 1575 1825 60  0000 C CNN
	1    1575 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED72
U 1 1 542E3752
P 2975 1825
F 0 "LED72" V 2725 1825 60  0000 C CNN
F 1 "WS2812B" V 3375 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 2975 1825 60  0001 C CNN
F 3 "~" H 2975 1825 60  0000 C CNN
	1    2975 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED73
U 1 1 542E3758
P 4375 1825
F 0 "LED73" V 4125 1825 60  0000 C CNN
F 1 "WS2812B" V 4775 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4375 1825 60  0001 C CNN
F 3 "~" H 4375 1825 60  0000 C CNN
	1    4375 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED74
U 1 1 542E375E
P 5775 1825
F 0 "LED74" V 5525 1825 60  0000 C CNN
F 1 "WS2812B" V 6175 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5775 1825 60  0001 C CNN
F 3 "~" H 5775 1825 60  0000 C CNN
	1    5775 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED75
U 1 1 542E3764
P 7175 1825
F 0 "LED75" V 6925 1825 60  0000 C CNN
F 1 "WS2812B" V 7575 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7175 1825 60  0001 C CNN
F 3 "~" H 7175 1825 60  0000 C CNN
	1    7175 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED76
U 1 1 542E376A
P 8575 1825
F 0 "LED76" V 8325 1825 60  0000 C CNN
F 1 "WS2812B" V 8975 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8575 1825 60  0001 C CNN
F 3 "~" H 8575 1825 60  0000 C CNN
	1    8575 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED77
U 1 1 542E3770
P 9975 1825
F 0 "LED77" V 9725 1825 60  0000 C CNN
F 1 "WS2812B" V 10375 1825 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 9975 1825 60  0001 C CNN
F 3 "~" H 9975 1825 60  0000 C CNN
	1    9975 1825
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED78
U 1 1 542E3776
P 1575 4225
F 0 "LED78" V 1325 4225 60  0000 C CNN
F 1 "WS2812B" V 1975 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1575 4225 60  0001 C CNN
F 3 "~" H 1575 4225 60  0000 C CNN
	1    1575 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED79
U 1 1 542E377C
P 2975 4225
F 0 "LED79" V 2725 4225 60  0000 C CNN
F 1 "WS2812B" V 3375 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 2975 4225 60  0001 C CNN
F 3 "~" H 2975 4225 60  0000 C CNN
	1    2975 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED80
U 1 1 542E3782
P 4375 4225
F 0 "LED80" V 4125 4225 60  0000 C CNN
F 1 "WS2812B" V 4775 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4375 4225 60  0001 C CNN
F 3 "~" H 4375 4225 60  0000 C CNN
	1    4375 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED81
U 1 1 542E3788
P 5775 4225
F 0 "LED81" V 5525 4225 60  0000 C CNN
F 1 "WS2812B" V 6175 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5775 4225 60  0001 C CNN
F 3 "~" H 5775 4225 60  0000 C CNN
	1    5775 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED82
U 1 1 542E378E
P 7175 4225
F 0 "LED82" V 6925 4225 60  0000 C CNN
F 1 "WS2812B" V 7575 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7175 4225 60  0001 C CNN
F 3 "~" H 7175 4225 60  0000 C CNN
	1    7175 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED83
U 1 1 542E3794
P 8575 4225
F 0 "LED83" V 8325 4225 60  0000 C CNN
F 1 "WS2812B" V 8975 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8575 4225 60  0001 C CNN
F 3 "~" H 8575 4225 60  0000 C CNN
	1    8575 4225
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED84
U 1 1 542E379A
P 9975 4225
F 0 "LED84" V 9725 4225 60  0000 C CNN
F 1 "WS2812B" V 10375 4225 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 9975 4225 60  0001 C CNN
F 3 "~" H 9975 4225 60  0000 C CNN
	1    9975 4225
	1    0    0    -1  
$EndComp
$EndSCHEMATC
