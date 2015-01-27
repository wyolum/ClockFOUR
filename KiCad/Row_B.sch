EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:device
LIBS:ClockFOUR-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1150 5450 0    60   Output ~ 0
DO_B
Text HLabel 1150 2550 0    60   Input ~ 0
GND
Text HLabel 1150 1100 0    60   Input ~ 0
DI_B
Text HLabel 1150 2950 0    60   Input ~ 0
5V
$Comp
L GND #PWR010
U 1 1 542DEF26
P 1350 2600
F 0 "#PWR010" H 1350 2600 30  0001 C CNN
F 1 "GND" H 1350 2530 30  0001 C CNN
F 2 "" H 1350 2600 60  0001 C CNN
F 3 "" H 1350 2600 60  0001 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C26
U 1 1 542DEF34
P 1900 2750
F 0 "C26" H 1925 2850 50  0000 L CNN
F 1 "100n" H 1925 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1900 2750 50  0001 C CNN
F 3 "" H 1900 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1900 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1900 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1900 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 1900 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1900 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 1900 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1900 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1900 3650 60  0001 L CNN "Field11"
	1    1900 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2550 1350 2600
Wire Wire Line
	1150 1100 1800 1100
Wire Wire Line
	1800 1100 1800 1200
Connection ~ 1350 2550
Wire Wire Line
	2000 1200 2000 1100
Wire Wire Line
	2000 1100 3200 1100
Wire Wire Line
	3200 1100 3200 1200
Wire Wire Line
	3400 1200 3400 1100
Wire Wire Line
	3400 1100 4600 1100
Wire Wire Line
	4600 1100 4600 1200
Wire Wire Line
	4800 1200 4800 1100
Wire Wire Line
	4800 1100 6000 1100
Wire Wire Line
	6000 1100 6000 1200
Wire Wire Line
	6200 1200 6200 1100
Wire Wire Line
	6200 1100 7400 1100
Wire Wire Line
	7400 1100 7400 1200
Wire Wire Line
	7600 1200 7600 1100
Wire Wire Line
	7600 1100 8800 1100
Wire Wire Line
	8800 1100 8800 1200
Wire Wire Line
	9000 1200 9000 1100
Wire Wire Line
	9000 1100 10200 1100
Wire Wire Line
	10200 1100 10200 1200
Wire Wire Line
	10400 1200 10400 1100
Wire Wire Line
	10400 1100 10800 1100
Wire Wire Line
	10800 3300 1800 3300
Wire Wire Line
	1800 3300 1800 3600
Wire Wire Line
	2000 3600 2000 3500
Wire Wire Line
	2000 3500 3200 3500
Wire Wire Line
	3200 3500 3200 3600
Wire Wire Line
	3400 3600 3400 3500
Wire Wire Line
	3400 3500 4600 3500
Wire Wire Line
	4600 3500 4600 3600
Wire Wire Line
	4800 3600 4800 3500
Wire Wire Line
	4800 3500 6000 3500
Wire Wire Line
	6000 3500 6000 3600
Wire Wire Line
	6200 3600 6200 3500
Wire Wire Line
	6200 3500 7400 3500
Wire Wire Line
	7400 3500 7400 3600
Wire Wire Line
	7600 3600 7600 3500
Wire Wire Line
	7600 3500 8800 3500
Wire Wire Line
	8800 3500 8800 3600
Wire Wire Line
	9000 3600 9000 3500
Wire Wire Line
	9000 3500 10200 3500
Wire Wire Line
	10200 3500 10200 3600
Wire Wire Line
	10400 3600 10400 3500
Wire Wire Line
	10400 3500 10800 3500
Wire Wire Line
	10800 3500 10800 5450
Wire Wire Line
	10800 5450 1150 5450
Wire Wire Line
	10800 1100 10800 3300
Wire Wire Line
	1150 2550 10400 2550
Wire Wire Line
	10400 2550 10400 2400
Wire Wire Line
	1150 2950 10300 2950
Wire Wire Line
	2000 2400 2000 2550
Connection ~ 2000 2550
Wire Wire Line
	3400 2400 3400 2550
Connection ~ 3400 2550
Wire Wire Line
	4800 2400 4800 2550
Connection ~ 4800 2550
Wire Wire Line
	6200 2400 6200 2550
Connection ~ 6200 2550
Wire Wire Line
	7600 2400 7600 2550
Connection ~ 7600 2550
Wire Wire Line
	9000 2400 9000 2550
Connection ~ 9000 2550
Wire Wire Line
	10200 2950 10200 2400
Wire Wire Line
	8800 2400 8800 2950
Connection ~ 8800 2950
Wire Wire Line
	7400 2400 7400 2950
Connection ~ 7400 2950
Wire Wire Line
	6000 2400 6000 2950
Connection ~ 6000 2950
Wire Wire Line
	4600 2400 4600 2950
Connection ~ 4600 2950
Wire Wire Line
	3200 2400 3200 2950
Connection ~ 3200 2950
Wire Wire Line
	1800 2400 1800 2950
Connection ~ 1800 2950
$Comp
L C2 C27
U 1 1 542DEF8F
P 3300 2750
F 0 "C27" H 3325 2850 50  0000 L CNN
F 1 "100n" H 3325 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3300 2750 50  0001 C CNN
F 3 "" H 3300 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3300 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3300 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3300 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 3300 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3300 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 3300 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3300 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3300 3650 60  0001 L CNN "Field11"
	1    3300 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C28
U 1 1 542DEF9D
P 4700 2750
F 0 "C28" H 4725 2850 50  0000 L CNN
F 1 "100n" H 4725 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4700 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4700 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4700 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 4700 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4700 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 4700 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4700 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4700 3650 60  0001 L CNN "Field11"
	1    4700 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C29
U 1 1 542DEFAB
P 6100 2750
F 0 "C29" H 6125 2850 50  0000 L CNN
F 1 "100n" H 6125 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 6100 2750 50  0001 C CNN
F 3 "" H 6100 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6100 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6100 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6100 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 6100 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6100 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 6100 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6100 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6100 3650 60  0001 L CNN "Field11"
	1    6100 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C30
U 1 1 542DEFB9
P 7500 2750
F 0 "C30" H 7525 2850 50  0000 L CNN
F 1 "100n" H 7525 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7500 2750 50  0001 C CNN
F 3 "" H 7500 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7500 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7500 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7500 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 7500 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7500 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 7500 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7500 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7500 3650 60  0001 L CNN "Field11"
	1    7500 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C31
U 1 1 542DEFC7
P 8900 2750
F 0 "C31" H 8925 2850 50  0000 L CNN
F 1 "100n" H 8925 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8900 2750 50  0001 C CNN
F 3 "" H 8900 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8900 2950 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8900 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8900 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 8900 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8900 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 8900 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8900 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8900 3650 60  0001 L CNN "Field11"
	1    8900 2750
	1    0    0    -1  
$EndComp
$Comp
L C2 C32
U 1 1 542DEFD5
P 10300 2750
F 0 "C32" H 10325 2850 50  0000 L CNN
F 1 "100n" H 10325 2650 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10300 2750 50  0001 C CNN
F 3 "" H 10300 2750 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10300 2950 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10300 3050 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10300 3150 60  0001 L CNN "Field6"
F 7 "Kemet" H 10300 3250 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10300 3350 60  0001 L CNN "Field8"
F 9 "Digikey" H 10300 3450 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10300 3550 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10300 3650 60  0001 L CNN "Field11"
	1    10300 2750
	1    0    0    -1  
$EndComp
Connection ~ 10200 2950
$Comp
L C2 C33
U 1 1 542DEFE4
P 1900 5100
F 0 "C33" H 1925 5200 50  0000 L CNN
F 1 "100n" H 1925 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1900 5100 50  0001 C CNN
F 3 "" H 1900 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1900 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1900 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1900 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 1900 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1900 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 1900 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1900 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1900 6000 60  0001 L CNN "Field11"
	1    1900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2550 1450 4900
Wire Wire Line
	1450 4900 10400 4900
Wire Wire Line
	2000 4900 2000 4800
Wire Wire Line
	10400 4900 10400 4800
Connection ~ 2000 4900
Wire Wire Line
	9000 4900 9000 4800
Connection ~ 9000 4900
Wire Wire Line
	7600 4900 7600 4800
Connection ~ 7600 4900
Wire Wire Line
	6200 4900 6200 4800
Connection ~ 6200 4900
Wire Wire Line
	4800 4900 4800 4800
Connection ~ 4800 4900
Wire Wire Line
	3400 4900 3400 4800
Connection ~ 3400 4900
Connection ~ 1900 4900
Connection ~ 7500 2550
Connection ~ 8900 2550
Connection ~ 6100 2550
Connection ~ 6100 2950
Connection ~ 7500 2950
Connection ~ 8900 2950
Connection ~ 10300 2550
Connection ~ 10300 2950
Connection ~ 4700 2550
Connection ~ 4700 2950
Connection ~ 3300 2950
Connection ~ 3300 2550
Connection ~ 1900 2550
Connection ~ 1900 2950
Wire Wire Line
	1300 2950 1300 5300
Wire Wire Line
	1300 5300 10300 5300
Connection ~ 1300 2950
Wire Wire Line
	10200 4800 10200 5300
Connection ~ 1900 5300
Wire Wire Line
	8800 4800 8800 5300
Connection ~ 8800 5300
Wire Wire Line
	7400 4800 7400 5300
Connection ~ 7400 5300
Wire Wire Line
	6000 4800 6000 5300
Connection ~ 6000 5300
Wire Wire Line
	4600 4800 4600 5300
Connection ~ 4600 5300
Wire Wire Line
	3200 4800 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	1800 4800 1800 5300
Connection ~ 1800 5300
$Comp
L C2 C34
U 1 1 542DF021
P 3300 5100
F 0 "C34" H 3325 5200 50  0000 L CNN
F 1 "100n" H 3325 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3300 5100 50  0001 C CNN
F 3 "" H 3300 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3300 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3300 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3300 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 3300 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3300 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 3300 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3300 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3300 6000 60  0001 L CNN "Field11"
	1    3300 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C35
U 1 1 542DF02F
P 4700 5100
F 0 "C35" H 4725 5200 50  0000 L CNN
F 1 "100n" H 4725 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4700 5100 50  0001 C CNN
F 3 "" H 4700 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4700 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4700 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4700 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 4700 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4700 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 4700 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4700 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4700 6000 60  0001 L CNN "Field11"
	1    4700 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C36
U 1 1 542DF03D
P 6100 5100
F 0 "C36" H 6125 5200 50  0000 L CNN
F 1 "100n" H 6125 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 6100 5100 50  0001 C CNN
F 3 "" H 6100 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6100 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6100 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6100 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 6100 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6100 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 6100 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6100 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6100 6000 60  0001 L CNN "Field11"
	1    6100 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C37
U 1 1 542DF04B
P 7500 5100
F 0 "C37" H 7525 5200 50  0000 L CNN
F 1 "100n" H 7525 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7500 5100 50  0001 C CNN
F 3 "" H 7500 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7500 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7500 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7500 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 7500 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7500 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 7500 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7500 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7500 6000 60  0001 L CNN "Field11"
	1    7500 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C38
U 1 1 542DF059
P 8900 5100
F 0 "C38" H 8925 5200 50  0000 L CNN
F 1 "100n" H 8925 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8900 5100 50  0001 C CNN
F 3 "" H 8900 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8900 5300 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8900 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8900 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 8900 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8900 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 8900 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8900 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8900 6000 60  0001 L CNN "Field11"
	1    8900 5100
	1    0    0    -1  
$EndComp
$Comp
L C2 C39
U 1 1 542DF067
P 10300 5100
F 0 "C39" H 10325 5200 50  0000 L CNN
F 1 "100n" H 10325 5000 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10300 5100 50  0001 C CNN
F 3 "" H 10300 5100 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10300 5300 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10300 5400 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10300 5500 60  0001 L CNN "Field6"
F 7 "Kemet" H 10300 5600 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10300 5700 60  0001 L CNN "Field8"
F 9 "Digikey" H 10300 5800 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10300 5900 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10300 6000 60  0001 L CNN "Field11"
	1    10300 5100
	1    0    0    -1  
$EndComp
Connection ~ 10300 5300
Connection ~ 10300 4900
Connection ~ 8900 5300
Connection ~ 8900 4900
Connection ~ 7500 4900
Connection ~ 7500 5300
Connection ~ 6100 5300
Connection ~ 6100 4900
Connection ~ 4700 4900
Connection ~ 4700 5300
Connection ~ 3300 5300
Connection ~ 3300 4900
Connection ~ 1450 2550
Connection ~ 10200 5300
$Comp
L WS2812B LED15
U 1 1 542DF07B
P 1725 1775
F 0 "LED15" V 1475 1775 60  0000 C CNN
F 1 "WS2812B" V 2125 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1725 1775 60  0001 C CNN
F 3 "~" H 1725 1775 60  0000 C CNN
	1    1725 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED16
U 1 1 542DF081
P 3125 1775
F 0 "LED16" V 2875 1775 60  0000 C CNN
F 1 "WS2812B" V 3525 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3125 1775 60  0001 C CNN
F 3 "~" H 3125 1775 60  0000 C CNN
	1    3125 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED17
U 1 1 542DF087
P 4525 1775
F 0 "LED17" V 4275 1775 60  0000 C CNN
F 1 "WS2812B" V 4925 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4525 1775 60  0001 C CNN
F 3 "~" H 4525 1775 60  0000 C CNN
	1    4525 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED18
U 1 1 542DF08D
P 5925 1775
F 0 "LED18" V 5675 1775 60  0000 C CNN
F 1 "WS2812B" V 6325 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5925 1775 60  0001 C CNN
F 3 "~" H 5925 1775 60  0000 C CNN
	1    5925 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED19
U 1 1 542DF093
P 7325 1775
F 0 "LED19" V 7075 1775 60  0000 C CNN
F 1 "WS2812B" V 7725 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7325 1775 60  0001 C CNN
F 3 "~" H 7325 1775 60  0000 C CNN
	1    7325 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED20
U 1 1 542DF099
P 8725 1775
F 0 "LED20" V 8475 1775 60  0000 C CNN
F 1 "WS2812B" V 9125 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8725 1775 60  0001 C CNN
F 3 "~" H 8725 1775 60  0000 C CNN
	1    8725 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED21
U 1 1 542DF09F
P 10125 1775
F 0 "LED21" V 9875 1775 60  0000 C CNN
F 1 "WS2812B" V 10525 1775 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10125 1775 60  0001 C CNN
F 3 "~" H 10125 1775 60  0000 C CNN
	1    10125 1775
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED22
U 1 1 542DF0A5
P 1725 4175
F 0 "LED22" V 1475 4175 60  0000 C CNN
F 1 "WS2812B" V 2125 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1725 4175 60  0001 C CNN
F 3 "~" H 1725 4175 60  0000 C CNN
	1    1725 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED23
U 1 1 542DF0AB
P 3125 4175
F 0 "LED23" V 2875 4175 60  0000 C CNN
F 1 "WS2812B" V 3525 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 3125 4175 60  0001 C CNN
F 3 "~" H 3125 4175 60  0000 C CNN
	1    3125 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED24
U 1 1 542DF0B1
P 4525 4175
F 0 "LED24" V 4275 4175 60  0000 C CNN
F 1 "WS2812B" V 4925 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4525 4175 60  0001 C CNN
F 3 "~" H 4525 4175 60  0000 C CNN
	1    4525 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED25
U 1 1 542DF0B7
P 5925 4175
F 0 "LED25" V 5675 4175 60  0000 C CNN
F 1 "WS2812B" V 6325 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5925 4175 60  0001 C CNN
F 3 "~" H 5925 4175 60  0000 C CNN
	1    5925 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED26
U 1 1 542DF0BD
P 7325 4175
F 0 "LED26" V 7075 4175 60  0000 C CNN
F 1 "WS2812B" V 7725 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7325 4175 60  0001 C CNN
F 3 "~" H 7325 4175 60  0000 C CNN
	1    7325 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED27
U 1 1 542DF0C3
P 8725 4175
F 0 "LED27" V 8475 4175 60  0000 C CNN
F 1 "WS2812B" V 9125 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8725 4175 60  0001 C CNN
F 3 "~" H 8725 4175 60  0000 C CNN
	1    8725 4175
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED28
U 1 1 542DF0C9
P 10125 4175
F 0 "LED28" V 9875 4175 60  0000 C CNN
F 1 "WS2812B" V 10525 4175 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 10125 4175 60  0001 C CNN
F 3 "~" H 10125 4175 60  0000 C CNN
	1    10125 4175
	1    0    0    -1  
$EndComp
$EndSCHEMATC
