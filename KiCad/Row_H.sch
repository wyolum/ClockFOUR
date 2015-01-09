EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 5350 0    60   Output ~ 0
DO_H
Text HLabel 1100 2450 0    60   Input ~ 0
GND
Text HLabel 1100 1000 0    60   Input ~ 0
DI_H
Text HLabel 1100 2850 0    60   Input ~ 0
5V
$Comp
L GND #PWR018
U 1 1 542E3955
P 1300 2500
F 0 "#PWR018" H 1300 2500 30  0001 C CNN
F 1 "GND" H 1300 2430 30  0001 C CNN
F 2 "" H 1300 2500 60  0001 C CNN
F 3 "" H 1300 2500 60  0001 C CNN
	1    1300 2500
	1    0    0    -1  
$EndComp
$Comp
L C2 C110
U 1 1 542E3963
P 1850 2650
F 0 "C110" H 1875 2750 50  0000 L CNN
F 1 "100n" H 1875 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1850 2650 50  0001 C CNN
F 3 "" H 1850 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 2850 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1850 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 3550 60  0001 L CNN "Field11"
	1    1850 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2450 1300 2500
Wire Wire Line
	1100 1000 1750 1000
Wire Wire Line
	1750 1000 1750 1100
Connection ~ 1300 2450
Wire Wire Line
	1950 1100 1950 1000
Wire Wire Line
	1950 1000 3150 1000
Wire Wire Line
	3150 1000 3150 1100
Wire Wire Line
	3350 1100 3350 1000
Wire Wire Line
	3350 1000 4550 1000
Wire Wire Line
	4550 1000 4550 1100
Wire Wire Line
	4750 1100 4750 1000
Wire Wire Line
	4750 1000 5950 1000
Wire Wire Line
	5950 1000 5950 1100
Wire Wire Line
	6150 1100 6150 1000
Wire Wire Line
	6150 1000 7350 1000
Wire Wire Line
	7350 1000 7350 1100
Wire Wire Line
	7550 1100 7550 1000
Wire Wire Line
	7550 1000 8750 1000
Wire Wire Line
	8750 1000 8750 1100
Wire Wire Line
	8950 1100 8950 1000
Wire Wire Line
	8950 1000 10150 1000
Wire Wire Line
	10150 1000 10150 1100
Wire Wire Line
	10350 1100 10350 1000
Wire Wire Line
	10350 1000 10750 1000
Wire Wire Line
	10750 3200 1750 3200
Wire Wire Line
	1750 3200 1750 3500
Wire Wire Line
	1950 3500 1950 3400
Wire Wire Line
	1950 3400 3150 3400
Wire Wire Line
	3150 3400 3150 3500
Wire Wire Line
	3350 3500 3350 3400
Wire Wire Line
	3350 3400 4550 3400
Wire Wire Line
	4550 3400 4550 3500
Wire Wire Line
	4750 3500 4750 3400
Wire Wire Line
	4750 3400 5950 3400
Wire Wire Line
	5950 3400 5950 3500
Wire Wire Line
	6150 3500 6150 3400
Wire Wire Line
	6150 3400 7350 3400
Wire Wire Line
	7350 3400 7350 3500
Wire Wire Line
	7550 3500 7550 3400
Wire Wire Line
	7550 3400 8750 3400
Wire Wire Line
	8750 3400 8750 3500
Wire Wire Line
	8950 3500 8950 3400
Wire Wire Line
	8950 3400 10150 3400
Wire Wire Line
	10150 3400 10150 3500
Wire Wire Line
	10350 3500 10350 3400
Wire Wire Line
	10350 3400 10750 3400
Wire Wire Line
	10750 3400 10750 5350
Wire Wire Line
	10750 5350 1100 5350
Wire Wire Line
	10750 1000 10750 3200
Wire Wire Line
	1100 2450 10350 2450
Wire Wire Line
	10350 2450 10350 2300
Wire Wire Line
	1100 2850 10250 2850
Wire Wire Line
	1950 2300 1950 2450
Connection ~ 1950 2450
Wire Wire Line
	3350 2300 3350 2450
Connection ~ 3350 2450
Wire Wire Line
	4750 2300 4750 2450
Connection ~ 4750 2450
Wire Wire Line
	6150 2300 6150 2450
Connection ~ 6150 2450
Wire Wire Line
	7550 2300 7550 2450
Connection ~ 7550 2450
Wire Wire Line
	8950 2300 8950 2450
Connection ~ 8950 2450
Wire Wire Line
	10150 2850 10150 2300
Wire Wire Line
	8750 2300 8750 2850
Connection ~ 8750 2850
Wire Wire Line
	7350 2300 7350 2850
Connection ~ 7350 2850
Wire Wire Line
	5950 2300 5950 2850
Connection ~ 5950 2850
Wire Wire Line
	4550 2300 4550 2850
Connection ~ 4550 2850
Wire Wire Line
	3150 2300 3150 2850
Connection ~ 3150 2850
Wire Wire Line
	1750 2300 1750 2850
Connection ~ 1750 2850
$Comp
L C2 C111
U 1 1 542E39BE
P 3250 2650
F 0 "C111" H 3275 2750 50  0000 L CNN
F 1 "100n" H 3275 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3250 2650 50  0001 C CNN
F 3 "" H 3250 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 2850 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3250 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 3550 60  0001 L CNN "Field11"
	1    3250 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C112
U 1 1 542E39CC
P 4650 2650
F 0 "C112" H 4675 2750 50  0000 L CNN
F 1 "100n" H 4675 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4650 2650 50  0001 C CNN
F 3 "" H 4650 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 2850 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4650 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 3550 60  0001 L CNN "Field11"
	1    4650 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C113
U 1 1 542E39DA
P 6050 2650
F 0 "C113" H 6075 2750 50  0000 L CNN
F 1 "100n" H 6075 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 6050 2650 50  0001 C CNN
F 3 "" H 6050 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 2850 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6050 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 3550 60  0001 L CNN "Field11"
	1    6050 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C114
U 1 1 542E39E8
P 7450 2650
F 0 "C114" H 7475 2750 50  0000 L CNN
F 1 "100n" H 7475 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7450 2650 50  0001 C CNN
F 3 "" H 7450 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 2850 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7450 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 3550 60  0001 L CNN "Field11"
	1    7450 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C115
U 1 1 542E39F6
P 8850 2650
F 0 "C115" H 8875 2750 50  0000 L CNN
F 1 "100n" H 8875 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8850 2650 50  0001 C CNN
F 3 "" H 8850 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 2850 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8850 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 3550 60  0001 L CNN "Field11"
	1    8850 2650
	1    0    0    -1  
$EndComp
$Comp
L C2 C116
U 1 1 542E3A04
P 10250 2650
F 0 "C116" H 10275 2750 50  0000 L CNN
F 1 "100n" H 10275 2550 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10250 2650 50  0001 C CNN
F 3 "" H 10250 2650 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 2850 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10250 2950 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 3050 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 3150 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 3250 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 3350 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 3450 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 3550 60  0001 L CNN "Field11"
	1    10250 2650
	1    0    0    -1  
$EndComp
Connection ~ 10150 2850
$Comp
L C2 C117
U 1 1 542E3A13
P 1850 5000
F 0 "C117" H 1875 5100 50  0000 L CNN
F 1 "100n" H 1875 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1850 5000 50  0001 C CNN
F 3 "" H 1850 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1850 5200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1850 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1850 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 1850 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1850 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 1850 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1850 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1850 5900 60  0001 L CNN "Field11"
	1    1850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2450 1400 4800
Wire Wire Line
	1400 4800 10350 4800
Wire Wire Line
	1950 4800 1950 4700
Wire Wire Line
	10350 4800 10350 4700
Connection ~ 1950 4800
Wire Wire Line
	8950 4800 8950 4700
Connection ~ 8950 4800
Wire Wire Line
	7550 4800 7550 4700
Connection ~ 7550 4800
Wire Wire Line
	6150 4800 6150 4700
Connection ~ 6150 4800
Wire Wire Line
	4750 4800 4750 4700
Connection ~ 4750 4800
Wire Wire Line
	3350 4800 3350 4700
Connection ~ 3350 4800
Connection ~ 1850 4800
Connection ~ 7450 2450
Connection ~ 8850 2450
Connection ~ 6050 2450
Connection ~ 6050 2850
Connection ~ 7450 2850
Connection ~ 8850 2850
Connection ~ 10250 2450
Connection ~ 10250 2850
Connection ~ 4650 2450
Connection ~ 4650 2850
Connection ~ 3250 2850
Connection ~ 3250 2450
Connection ~ 1850 2450
Connection ~ 1850 2850
Wire Wire Line
	1250 2850 1250 5200
Wire Wire Line
	1250 5200 10250 5200
Connection ~ 1250 2850
Wire Wire Line
	10150 4700 10150 5200
Connection ~ 1850 5200
Wire Wire Line
	8750 4700 8750 5200
Connection ~ 8750 5200
Wire Wire Line
	7350 4700 7350 5200
Connection ~ 7350 5200
Wire Wire Line
	5950 4700 5950 5200
Connection ~ 5950 5200
Wire Wire Line
	4550 4700 4550 5200
Connection ~ 4550 5200
Wire Wire Line
	3150 4700 3150 5200
Connection ~ 3150 5200
Wire Wire Line
	1750 4700 1750 5200
Connection ~ 1750 5200
$Comp
L C2 C118
U 1 1 542E3A50
P 3250 5000
F 0 "C118" H 3275 5100 50  0000 L CNN
F 1 "100n" H 3275 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3250 5000 50  0001 C CNN
F 3 "" H 3250 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3250 5200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3250 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3250 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 3250 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3250 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 3250 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3250 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3250 5900 60  0001 L CNN "Field11"
	1    3250 5000
	1    0    0    -1  
$EndComp
$Comp
L C2 C119
U 1 1 542E3A5E
P 4650 5000
F 0 "C119" H 4675 5100 50  0000 L CNN
F 1 "100n" H 4675 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4650 5000 50  0001 C CNN
F 3 "" H 4650 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4650 5200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4650 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4650 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 4650 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4650 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 4650 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4650 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4650 5900 60  0001 L CNN "Field11"
	1    4650 5000
	1    0    0    -1  
$EndComp
$Comp
L C2 C120
U 1 1 542E3A6C
P 6050 5000
F 0 "C120" H 6075 5100 50  0000 L CNN
F 1 "100n" H 6075 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 6050 5000 50  0001 C CNN
F 3 "" H 6050 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6050 5200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6050 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6050 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 6050 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6050 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 6050 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6050 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6050 5900 60  0001 L CNN "Field11"
	1    6050 5000
	1    0    0    -1  
$EndComp
$Comp
L C2 C121
U 1 1 542E3A7A
P 7450 5000
F 0 "C121" H 7475 5100 50  0000 L CNN
F 1 "100n" H 7475 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7450 5000 50  0001 C CNN
F 3 "" H 7450 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7450 5200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7450 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7450 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 7450 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7450 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 7450 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7450 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7450 5900 60  0001 L CNN "Field11"
	1    7450 5000
	1    0    0    -1  
$EndComp
$Comp
L C2 C122
U 1 1 542E3A88
P 8850 5000
F 0 "C122" H 8875 5100 50  0000 L CNN
F 1 "100n" H 8875 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8850 5000 50  0001 C CNN
F 3 "" H 8850 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8850 5200 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8850 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8850 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 8850 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8850 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 8850 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8850 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8850 5900 60  0001 L CNN "Field11"
	1    8850 5000
	1    0    0    -1  
$EndComp
$Comp
L C2 C123
U 1 1 542E3A96
P 10250 5000
F 0 "C123" H 10275 5100 50  0000 L CNN
F 1 "100n" H 10275 4900 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10250 5000 50  0001 C CNN
F 3 "" H 10250 5000 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10250 5200 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10250 5300 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10250 5400 60  0001 L CNN "Field6"
F 7 "Kemet" H 10250 5500 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10250 5600 60  0001 L CNN "Field8"
F 9 "Digikey" H 10250 5700 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10250 5800 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10250 5900 60  0001 L CNN "Field11"
	1    10250 5000
	1    0    0    -1  
$EndComp
Connection ~ 10250 5200
Connection ~ 10250 4800
Connection ~ 8850 5200
Connection ~ 8850 4800
Connection ~ 7450 4800
Connection ~ 7450 5200
Connection ~ 6050 5200
Connection ~ 6050 4800
Connection ~ 4650 4800
Connection ~ 4650 5200
Connection ~ 3250 5200
Connection ~ 3250 4800
Connection ~ 1400 2450
Connection ~ 10150 5200
$Comp
L WS2812B LED99
U 1 1 542E3AAA
P 1675 1675
F 0 "LED99" V 1425 1675 60  0000 C CNN
F 1 "WS2812B" V 2075 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1675 1675 60  0001 C CNN
F 3 "~" H 1675 1675 60  0000 C CNN
	1    1675 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED100
U 1 1 542E3AB0
P 3075 1675
F 0 "LED100" V 2825 1675 60  0000 C CNN
F 1 "WS2812B" V 3475 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3075 1675 60  0001 C CNN
F 3 "~" H 3075 1675 60  0000 C CNN
	1    3075 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED101
U 1 1 542E3AB6
P 4475 1675
F 0 "LED101" V 4225 1675 60  0000 C CNN
F 1 "WS2812B" V 4875 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4475 1675 60  0001 C CNN
F 3 "~" H 4475 1675 60  0000 C CNN
	1    4475 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED102
U 1 1 542E3ABC
P 5875 1675
F 0 "LED102" V 5625 1675 60  0000 C CNN
F 1 "WS2812B" V 6275 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5875 1675 60  0001 C CNN
F 3 "~" H 5875 1675 60  0000 C CNN
	1    5875 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED103
U 1 1 542E3AC2
P 7275 1675
F 0 "LED103" V 7025 1675 60  0000 C CNN
F 1 "WS2812B" V 7675 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7275 1675 60  0001 C CNN
F 3 "~" H 7275 1675 60  0000 C CNN
	1    7275 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED104
U 1 1 542E3AC8
P 8675 1675
F 0 "LED104" V 8425 1675 60  0000 C CNN
F 1 "WS2812B" V 9075 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8675 1675 60  0001 C CNN
F 3 "~" H 8675 1675 60  0000 C CNN
	1    8675 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED105
U 1 1 542E3ACE
P 10075 1675
F 0 "LED105" V 9825 1675 60  0000 C CNN
F 1 "WS2812B" V 10475 1675 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10075 1675 60  0001 C CNN
F 3 "~" H 10075 1675 60  0000 C CNN
	1    10075 1675
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED106
U 1 1 542E3AD4
P 1675 4075
F 0 "LED106" V 1425 4075 60  0000 C CNN
F 1 "WS2812B" V 2075 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1675 4075 60  0001 C CNN
F 3 "~" H 1675 4075 60  0000 C CNN
	1    1675 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED107
U 1 1 542E3ADA
P 3075 4075
F 0 "LED107" V 2825 4075 60  0000 C CNN
F 1 "WS2812B" V 3475 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3075 4075 60  0001 C CNN
F 3 "~" H 3075 4075 60  0000 C CNN
	1    3075 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED108
U 1 1 542E3AE0
P 4475 4075
F 0 "LED108" V 4225 4075 60  0000 C CNN
F 1 "WS2812B" V 4875 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4475 4075 60  0001 C CNN
F 3 "~" H 4475 4075 60  0000 C CNN
	1    4475 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED109
U 1 1 542E3AE6
P 5875 4075
F 0 "LED109" V 5625 4075 60  0000 C CNN
F 1 "WS2812B" V 6275 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5875 4075 60  0001 C CNN
F 3 "~" H 5875 4075 60  0000 C CNN
	1    5875 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED110
U 1 1 542E3AEC
P 7275 4075
F 0 "LED110" V 7025 4075 60  0000 C CNN
F 1 "WS2812B" V 7675 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7275 4075 60  0001 C CNN
F 3 "~" H 7275 4075 60  0000 C CNN
	1    7275 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED111
U 1 1 542E3AF2
P 8675 4075
F 0 "LED111" V 8425 4075 60  0000 C CNN
F 1 "WS2812B" V 9075 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8675 4075 60  0001 C CNN
F 3 "~" H 8675 4075 60  0000 C CNN
	1    8675 4075
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED112
U 1 1 542E3AF8
P 10075 4075
F 0 "LED112" V 9825 4075 60  0000 C CNN
F 1 "WS2812B" V 10475 4075 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10075 4075 60  0001 C CNN
F 3 "~" H 10075 4075 60  0000 C CNN
	1    10075 4075
	1    0    0    -1  
$EndComp
$EndSCHEMATC
