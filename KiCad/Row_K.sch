EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1050 5850 0    60   Output ~ 0
DO_K
Text HLabel 1050 2950 0    60   Input ~ 0
GND
Text HLabel 1050 1500 0    60   Input ~ 0
DI_K
Text HLabel 1050 3350 0    60   Input ~ 0
5V
$Comp
L GND #PWR024
U 1 1 542E3E62
P 1250 3000
F 0 "#PWR024" H 1250 3000 30  0001 C CNN
F 1 "GND" H 1250 2930 30  0001 C CNN
F 2 "" H 1250 3000 60  0001 C CNN
F 3 "" H 1250 3000 60  0001 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
$Comp
L C2 C152
U 1 1 542E3E70
P 1800 3150
F 0 "C152" H 1825 3250 50  0000 L CNN
F 1 "100n" H 1825 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1800 3350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1800 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1800 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 1800 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1800 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 1800 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1800 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1800 4050 60  0001 L CNN "Field11"
	1    1800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2950 1250 3000
Wire Wire Line
	1050 1500 1700 1500
Wire Wire Line
	1700 1500 1700 1600
Connection ~ 1250 2950
Wire Wire Line
	1900 1600 1900 1500
Wire Wire Line
	1900 1500 3100 1500
Wire Wire Line
	3100 1500 3100 1600
Wire Wire Line
	3300 1600 3300 1500
Wire Wire Line
	3300 1500 4500 1500
Wire Wire Line
	4500 1500 4500 1600
Wire Wire Line
	4700 1600 4700 1500
Wire Wire Line
	4700 1500 5900 1500
Wire Wire Line
	5900 1500 5900 1600
Wire Wire Line
	6100 1600 6100 1500
Wire Wire Line
	6100 1500 7300 1500
Wire Wire Line
	7300 1500 7300 1600
Wire Wire Line
	7500 1600 7500 1500
Wire Wire Line
	7500 1500 8700 1500
Wire Wire Line
	8700 1500 8700 1600
Wire Wire Line
	8900 1600 8900 1500
Wire Wire Line
	8900 1500 10100 1500
Wire Wire Line
	10100 1500 10100 1600
Wire Wire Line
	10300 1600 10300 1500
Wire Wire Line
	10300 1500 10700 1500
Wire Wire Line
	10700 3700 1700 3700
Wire Wire Line
	1700 3700 1700 4000
Wire Wire Line
	1900 4000 1900 3900
Wire Wire Line
	1900 3900 3100 3900
Wire Wire Line
	3100 3900 3100 4000
Wire Wire Line
	3300 4000 3300 3900
Wire Wire Line
	3300 3900 4500 3900
Wire Wire Line
	4500 3900 4500 4000
Wire Wire Line
	4700 4000 4700 3900
Wire Wire Line
	4700 3900 5900 3900
Wire Wire Line
	5900 3900 5900 4000
Wire Wire Line
	6100 4000 6100 3900
Wire Wire Line
	6100 3900 7300 3900
Wire Wire Line
	7300 3900 7300 4000
Wire Wire Line
	7500 4000 7500 3900
Wire Wire Line
	7500 3900 8700 3900
Wire Wire Line
	8700 3900 8700 4000
Wire Wire Line
	8900 4000 8900 3900
Wire Wire Line
	8900 3900 10100 3900
Wire Wire Line
	10100 3900 10100 4000
Wire Wire Line
	10300 4000 10300 3900
Wire Wire Line
	10300 3900 10700 3900
Wire Wire Line
	10700 3900 10700 5850
Wire Wire Line
	10700 5850 1050 5850
Wire Wire Line
	10700 1500 10700 3700
Wire Wire Line
	1050 2950 10300 2950
Wire Wire Line
	10300 2950 10300 2800
Wire Wire Line
	1050 3350 10200 3350
Wire Wire Line
	1900 2800 1900 2950
Connection ~ 1900 2950
Wire Wire Line
	3300 2800 3300 2950
Connection ~ 3300 2950
Wire Wire Line
	4700 2800 4700 2950
Connection ~ 4700 2950
Wire Wire Line
	6100 2800 6100 2950
Connection ~ 6100 2950
Wire Wire Line
	7500 2800 7500 2950
Connection ~ 7500 2950
Wire Wire Line
	8900 2800 8900 2950
Connection ~ 8900 2950
Wire Wire Line
	10100 3350 10100 2800
Wire Wire Line
	8700 2800 8700 3350
Connection ~ 8700 3350
Wire Wire Line
	7300 2800 7300 3350
Connection ~ 7300 3350
Wire Wire Line
	5900 2800 5900 3350
Connection ~ 5900 3350
Wire Wire Line
	4500 2800 4500 3350
Connection ~ 4500 3350
Wire Wire Line
	3100 2800 3100 3350
Connection ~ 3100 3350
Wire Wire Line
	1700 2800 1700 3350
Connection ~ 1700 3350
$Comp
L C2 C153
U 1 1 542E3ECB
P 3200 3150
F 0 "C153" H 3225 3250 50  0000 L CNN
F 1 "100n" H 3225 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 3200 3150 50  0001 C CNN
F 3 "" H 3200 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3200 3350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3200 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3200 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 3200 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3200 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 3200 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3200 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3200 4050 60  0001 L CNN "Field11"
	1    3200 3150
	1    0    0    -1  
$EndComp
$Comp
L C2 C154
U 1 1 542E3ED9
P 4600 3150
F 0 "C154" H 4625 3250 50  0000 L CNN
F 1 "100n" H 4625 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4600 3350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4600 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4600 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 4600 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4600 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 4600 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4600 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4600 4050 60  0001 L CNN "Field11"
	1    4600 3150
	1    0    0    -1  
$EndComp
$Comp
L C2 C155
U 1 1 542E3EE7
P 6000 3150
F 0 "C155" H 6025 3250 50  0000 L CNN
F 1 "100n" H 6025 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 6000 3150 50  0001 C CNN
F 3 "" H 6000 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6000 3350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6000 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6000 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 6000 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6000 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 6000 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6000 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6000 4050 60  0001 L CNN "Field11"
	1    6000 3150
	1    0    0    -1  
$EndComp
$Comp
L C2 C156
U 1 1 542E3EF5
P 7400 3150
F 0 "C156" H 7425 3250 50  0000 L CNN
F 1 "100n" H 7425 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 7400 3150 50  0001 C CNN
F 3 "" H 7400 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7400 3350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7400 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7400 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 7400 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7400 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 7400 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7400 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7400 4050 60  0001 L CNN "Field11"
	1    7400 3150
	1    0    0    -1  
$EndComp
$Comp
L C2 C157
U 1 1 542E3F03
P 8800 3150
F 0 "C157" H 8825 3250 50  0000 L CNN
F 1 "100n" H 8825 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 8800 3150 50  0001 C CNN
F 3 "" H 8800 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8800 3350 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8800 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8800 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 8800 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8800 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 8800 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8800 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8800 4050 60  0001 L CNN "Field11"
	1    8800 3150
	1    0    0    -1  
$EndComp
$Comp
L C2 C158
U 1 1 542E3F11
P 10200 3150
F 0 "C158" H 10225 3250 50  0000 L CNN
F 1 "100n" H 10225 3050 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 10200 3150 50  0001 C CNN
F 3 "" H 10200 3150 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10200 3350 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10200 3450 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10200 3550 60  0001 L CNN "Field6"
F 7 "Kemet" H 10200 3650 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10200 3750 60  0001 L CNN "Field8"
F 9 "Digikey" H 10200 3850 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10200 3950 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10200 4050 60  0001 L CNN "Field11"
	1    10200 3150
	1    0    0    -1  
$EndComp
Connection ~ 10100 3350
$Comp
L C2 C159
U 1 1 542E3F20
P 1800 5500
F 0 "C159" H 1825 5600 50  0000 L CNN
F 1 "100n" H 1825 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 1800 5500 50  0001 C CNN
F 3 "" H 1800 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1800 5700 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1800 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1800 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 1800 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1800 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 1800 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1800 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1800 6400 60  0001 L CNN "Field11"
	1    1800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2950 1350 5300
Wire Wire Line
	1350 5300 10300 5300
Wire Wire Line
	1900 5300 1900 5200
Wire Wire Line
	10300 5300 10300 5200
Connection ~ 1900 5300
Wire Wire Line
	8900 5300 8900 5200
Connection ~ 8900 5300
Wire Wire Line
	7500 5300 7500 5200
Connection ~ 7500 5300
Wire Wire Line
	6100 5300 6100 5200
Connection ~ 6100 5300
Wire Wire Line
	4700 5300 4700 5200
Connection ~ 4700 5300
Wire Wire Line
	3300 5300 3300 5200
Connection ~ 3300 5300
Connection ~ 1800 5300
Connection ~ 7400 2950
Connection ~ 8800 2950
Connection ~ 6000 2950
Connection ~ 6000 3350
Connection ~ 7400 3350
Connection ~ 8800 3350
Connection ~ 10200 2950
Connection ~ 10200 3350
Connection ~ 4600 2950
Connection ~ 4600 3350
Connection ~ 3200 3350
Connection ~ 3200 2950
Connection ~ 1800 2950
Connection ~ 1800 3350
Wire Wire Line
	1200 3350 1200 5700
Wire Wire Line
	1200 5700 10200 5700
Connection ~ 1200 3350
Wire Wire Line
	10100 5200 10100 5700
Connection ~ 1800 5700
Wire Wire Line
	8700 5200 8700 5700
Connection ~ 8700 5700
Wire Wire Line
	7300 5200 7300 5700
Connection ~ 7300 5700
Wire Wire Line
	5900 5200 5900 5700
Connection ~ 5900 5700
Wire Wire Line
	4500 5200 4500 5700
Connection ~ 4500 5700
Wire Wire Line
	3100 5200 3100 5700
Connection ~ 3100 5700
Wire Wire Line
	1700 5200 1700 5700
Connection ~ 1700 5700
$Comp
L C2 C160
U 1 1 542E3F5D
P 3200 5500
F 0 "C160" H 3225 5600 50  0000 L CNN
F 1 "100n" H 3225 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 3200 5500 50  0001 C CNN
F 3 "" H 3200 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3200 5700 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3200 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3200 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 3200 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3200 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 3200 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3200 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3200 6400 60  0001 L CNN "Field11"
	1    3200 5500
	1    0    0    -1  
$EndComp
$Comp
L C2 C161
U 1 1 542E3F6B
P 4600 5500
F 0 "C161" H 4625 5600 50  0000 L CNN
F 1 "100n" H 4625 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 4600 5500 50  0001 C CNN
F 3 "" H 4600 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4600 5700 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4600 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4600 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 4600 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4600 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 4600 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4600 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4600 6400 60  0001 L CNN "Field11"
	1    4600 5500
	1    0    0    -1  
$EndComp
$Comp
L C2 C162
U 1 1 542E3F79
P 6000 5500
F 0 "C162" H 6025 5600 50  0000 L CNN
F 1 "100n" H 6025 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 6000 5500 50  0001 C CNN
F 3 "" H 6000 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6000 5700 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6000 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6000 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 6000 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6000 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 6000 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6000 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6000 6400 60  0001 L CNN "Field11"
	1    6000 5500
	1    0    0    -1  
$EndComp
$Comp
L C2 C163
U 1 1 542E3F87
P 7400 5500
F 0 "C163" H 7425 5600 50  0000 L CNN
F 1 "100n" H 7425 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 7400 5500 50  0001 C CNN
F 3 "" H 7400 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7400 5700 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7400 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7400 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 7400 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7400 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 7400 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7400 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7400 6400 60  0001 L CNN "Field11"
	1    7400 5500
	1    0    0    -1  
$EndComp
$Comp
L C2 C164
U 1 1 542E3F95
P 8800 5500
F 0 "C164" H 8825 5600 50  0000 L CNN
F 1 "100n" H 8825 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 8800 5500 50  0001 C CNN
F 3 "" H 8800 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8800 5700 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8800 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8800 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 8800 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8800 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 8800 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8800 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8800 6400 60  0001 L CNN "Field11"
	1    8800 5500
	1    0    0    -1  
$EndComp
$Comp
L C2 C165
U 1 1 542E3FA3
P 10200 5500
F 0 "C165" H 10225 5600 50  0000 L CNN
F 1 "100n" H 10225 5400 50  0000 L CNN
F 2 "C4_Pretty:c_0805" H 10200 5500 50  0001 C CNN
F 3 "" H 10200 5500 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10200 5700 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10200 5800 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10200 5900 60  0001 L CNN "Field6"
F 7 "Kemet" H 10200 6000 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10200 6100 60  0001 L CNN "Field8"
F 9 "Digikey" H 10200 6200 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10200 6300 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10200 6400 60  0001 L CNN "Field11"
	1    10200 5500
	1    0    0    -1  
$EndComp
Connection ~ 10200 5700
Connection ~ 10200 5300
Connection ~ 8800 5700
Connection ~ 8800 5300
Connection ~ 7400 5300
Connection ~ 7400 5700
Connection ~ 6000 5700
Connection ~ 6000 5300
Connection ~ 4600 5300
Connection ~ 4600 5700
Connection ~ 3200 5700
Connection ~ 3200 5300
Connection ~ 1350 2950
Connection ~ 10100 5700
$Comp
L WS2812B LED141
U 1 1 542E3FB7
P 1625 2175
F 0 "LED141" V 1375 2175 60  0000 C CNN
F 1 "WS2812B" V 2025 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1625 2175 60  0001 C CNN
F 3 "~" H 1625 2175 60  0000 C CNN
	1    1625 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED142
U 1 1 542E3FBD
P 3025 2175
F 0 "LED142" V 2775 2175 60  0000 C CNN
F 1 "WS2812B" V 3425 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3025 2175 60  0001 C CNN
F 3 "~" H 3025 2175 60  0000 C CNN
	1    3025 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED143
U 1 1 542E3FC3
P 4425 2175
F 0 "LED143" V 4175 2175 60  0000 C CNN
F 1 "WS2812B" V 4825 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4425 2175 60  0001 C CNN
F 3 "~" H 4425 2175 60  0000 C CNN
	1    4425 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED144
U 1 1 542E3FC9
P 5825 2175
F 0 "LED144" V 5575 2175 60  0000 C CNN
F 1 "WS2812B" V 6225 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5825 2175 60  0001 C CNN
F 3 "~" H 5825 2175 60  0000 C CNN
	1    5825 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED145
U 1 1 542E3FCF
P 7225 2175
F 0 "LED145" V 6975 2175 60  0000 C CNN
F 1 "WS2812B" V 7625 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7225 2175 60  0001 C CNN
F 3 "~" H 7225 2175 60  0000 C CNN
	1    7225 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED146
U 1 1 542E3FD5
P 8625 2175
F 0 "LED146" V 8375 2175 60  0000 C CNN
F 1 "WS2812B" V 9025 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8625 2175 60  0001 C CNN
F 3 "~" H 8625 2175 60  0000 C CNN
	1    8625 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED147
U 1 1 542E3FDB
P 10025 2175
F 0 "LED147" V 9775 2175 60  0000 C CNN
F 1 "WS2812B" V 10425 2175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10025 2175 60  0001 C CNN
F 3 "~" H 10025 2175 60  0000 C CNN
	1    10025 2175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED148
U 1 1 542E3FE1
P 1625 4575
F 0 "LED148" V 1375 4575 60  0000 C CNN
F 1 "WS2812B" V 2025 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1625 4575 60  0001 C CNN
F 3 "~" H 1625 4575 60  0000 C CNN
	1    1625 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED149
U 1 1 542E3FE7
P 3025 4575
F 0 "LED149" V 2775 4575 60  0000 C CNN
F 1 "WS2812B" V 3425 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3025 4575 60  0001 C CNN
F 3 "~" H 3025 4575 60  0000 C CNN
	1    3025 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED150
U 1 1 542E3FED
P 4425 4575
F 0 "LED150" V 4175 4575 60  0000 C CNN
F 1 "WS2812B" V 4825 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4425 4575 60  0001 C CNN
F 3 "~" H 4425 4575 60  0000 C CNN
	1    4425 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED151
U 1 1 542E3FF3
P 5825 4575
F 0 "LED151" V 5575 4575 60  0000 C CNN
F 1 "WS2812B" V 6225 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5825 4575 60  0001 C CNN
F 3 "~" H 5825 4575 60  0000 C CNN
	1    5825 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED152
U 1 1 542E3FF9
P 7225 4575
F 0 "LED152" V 6975 4575 60  0000 C CNN
F 1 "WS2812B" V 7625 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7225 4575 60  0001 C CNN
F 3 "~" H 7225 4575 60  0000 C CNN
	1    7225 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED153
U 1 1 542E3FFF
P 8625 4575
F 0 "LED153" V 8375 4575 60  0000 C CNN
F 1 "WS2812B" V 9025 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8625 4575 60  0001 C CNN
F 3 "~" H 8625 4575 60  0000 C CNN
	1    8625 4575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED154
U 1 1 542E4005
P 10025 4575
F 0 "LED154" V 9775 4575 60  0000 C CNN
F 1 "WS2812B" V 10425 4575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10025 4575 60  0001 C CNN
F 3 "~" H 10025 4575 60  0000 C CNN
	1    10025 4575
	1    0    0    -1  
$EndComp
$EndSCHEMATC
