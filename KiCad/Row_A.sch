EESchema Schematic File Version 2
LIBS:ClockFOUR
LIBS:ClockFOUR-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 14
Title "ClockFOUR"
Date "7 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 950  5250 0    60   Output ~ 0
DO_A
Text HLabel 950  2350 0    60   Input ~ 0
GND
Text HLabel 950  900  0    60   Input ~ 0
DI_A
Text HLabel 950  2750 0    60   Input ~ 0
5V
$Comp
L GND #PWR011
U 1 1 5116893B
P 1150 2400
F 0 "#PWR011" H 1150 2400 30  0001 C CNN
F 1 "GND" H 1150 2330 30  0001 C CNN
F 2 "" H 1150 2400 60  0001 C CNN
F 3 "" H 1150 2400 60  0001 C CNN
	1    1150 2400
	1    0    0    -1  
$EndComp
$Comp
L C2 C12
U 1 1 5118AB57
P 1700 2550
F 0 "C12" H 1725 2650 50  0000 L CNN
F 1 "100n" H 1725 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1700 2550 50  0001 C CNN
F 3 "" H 1700 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1700 2750 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1700 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1700 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 1700 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1700 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 1700 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1700 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1700 3450 60  0001 L CNN "Field11"
	1    1700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2350 1150 2400
Wire Wire Line
	950  900  1600 900 
Wire Wire Line
	1600 900  1600 1000
Connection ~ 1150 2350
Wire Wire Line
	1800 1000 1800 900 
Wire Wire Line
	1800 900  3000 900 
Wire Wire Line
	3000 900  3000 1000
Wire Wire Line
	3200 1000 3200 900 
Wire Wire Line
	3200 900  4400 900 
Wire Wire Line
	4400 900  4400 1000
Wire Wire Line
	4600 1000 4600 900 
Wire Wire Line
	4600 900  5800 900 
Wire Wire Line
	5800 900  5800 1000
Wire Wire Line
	6000 1000 6000 900 
Wire Wire Line
	6000 900  7200 900 
Wire Wire Line
	7200 900  7200 1000
Wire Wire Line
	7400 1000 7400 900 
Wire Wire Line
	7400 900  8600 900 
Wire Wire Line
	8600 900  8600 1000
Wire Wire Line
	8800 1000 8800 900 
Wire Wire Line
	8800 900  10000 900 
Wire Wire Line
	10000 900  10000 1000
Wire Wire Line
	10200 1000 10200 900 
Wire Wire Line
	10200 900  10600 900 
Wire Wire Line
	10600 3100 1600 3100
Wire Wire Line
	1600 3100 1600 3400
Wire Wire Line
	1800 3400 1800 3300
Wire Wire Line
	1800 3300 3000 3300
Wire Wire Line
	3000 3300 3000 3400
Wire Wire Line
	3200 3400 3200 3300
Wire Wire Line
	3200 3300 4400 3300
Wire Wire Line
	4400 3300 4400 3400
Wire Wire Line
	4600 3400 4600 3300
Wire Wire Line
	4600 3300 5800 3300
Wire Wire Line
	5800 3300 5800 3400
Wire Wire Line
	6000 3400 6000 3300
Wire Wire Line
	6000 3300 7200 3300
Wire Wire Line
	7200 3300 7200 3400
Wire Wire Line
	7400 3400 7400 3300
Wire Wire Line
	7400 3300 8600 3300
Wire Wire Line
	8600 3300 8600 3400
Wire Wire Line
	8800 3400 8800 3300
Wire Wire Line
	8800 3300 10000 3300
Wire Wire Line
	10000 3300 10000 3400
Wire Wire Line
	10200 3400 10200 3300
Wire Wire Line
	10200 3300 10600 3300
Wire Wire Line
	10600 3300 10600 5250
Wire Wire Line
	10600 5250 950  5250
Wire Wire Line
	10600 900  10600 3100
Wire Wire Line
	950  2350 10200 2350
Wire Wire Line
	10200 2350 10200 2200
Wire Wire Line
	950  2750 10100 2750
Wire Wire Line
	1800 2200 1800 2350
Connection ~ 1800 2350
Wire Wire Line
	3200 2200 3200 2350
Connection ~ 3200 2350
Wire Wire Line
	4600 2200 4600 2350
Connection ~ 4600 2350
Wire Wire Line
	6000 2200 6000 2350
Connection ~ 6000 2350
Wire Wire Line
	7400 2200 7400 2350
Connection ~ 7400 2350
Wire Wire Line
	8800 2200 8800 2350
Connection ~ 8800 2350
Wire Wire Line
	10000 2750 10000 2200
Wire Wire Line
	8600 2200 8600 2750
Connection ~ 8600 2750
Wire Wire Line
	7200 2200 7200 2750
Connection ~ 7200 2750
Wire Wire Line
	5800 2200 5800 2750
Connection ~ 5800 2750
Wire Wire Line
	4400 2200 4400 2750
Connection ~ 4400 2750
Wire Wire Line
	3000 2200 3000 2750
Connection ~ 3000 2750
Wire Wire Line
	1600 2200 1600 2750
Connection ~ 1600 2750
$Comp
L C2 C13
U 1 1 5424D6B9
P 3100 2550
F 0 "C13" H 3125 2650 50  0000 L CNN
F 1 "100n" H 3125 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3100 2550 50  0001 C CNN
F 3 "" H 3100 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3100 2750 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3100 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3100 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 3100 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3100 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 3100 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3100 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3100 3450 60  0001 L CNN "Field11"
	1    3100 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C14
U 1 1 5424D6C7
P 4500 2550
F 0 "C14" H 4525 2650 50  0000 L CNN
F 1 "100n" H 4525 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4500 2550 50  0001 C CNN
F 3 "" H 4500 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4500 2750 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4500 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4500 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 4500 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4500 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 4500 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4500 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4500 3450 60  0001 L CNN "Field11"
	1    4500 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C15
U 1 1 5424D6D5
P 5900 2550
F 0 "C15" H 5925 2650 50  0000 L CNN
F 1 "100n" H 5925 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 5900 2550 50  0001 C CNN
F 3 "" H 5900 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 5900 2750 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 5900 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 5900 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 5900 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 5900 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 5900 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 5900 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 5900 3450 60  0001 L CNN "Field11"
	1    5900 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C16
U 1 1 5424D6E3
P 7300 2550
F 0 "C16" H 7325 2650 50  0000 L CNN
F 1 "100n" H 7325 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7300 2550 50  0001 C CNN
F 3 "" H 7300 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7300 2750 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7300 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7300 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 7300 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7300 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 7300 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7300 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7300 3450 60  0001 L CNN "Field11"
	1    7300 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C17
U 1 1 5424D6F1
P 8700 2550
F 0 "C17" H 8725 2650 50  0000 L CNN
F 1 "100n" H 8725 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8700 2550 50  0001 C CNN
F 3 "" H 8700 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8700 2750 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8700 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8700 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 8700 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8700 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 8700 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8700 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8700 3450 60  0001 L CNN "Field11"
	1    8700 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C18
U 1 1 5424D6FF
P 10100 2550
F 0 "C18" H 10125 2650 50  0000 L CNN
F 1 "100n" H 10125 2450 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10100 2550 50  0001 C CNN
F 3 "" H 10100 2550 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10100 2750 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10100 2850 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10100 2950 60  0001 L CNN "Field6"
F 7 "Kemet" H 10100 3050 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10100 3150 60  0001 L CNN "Field8"
F 9 "Digikey" H 10100 3250 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10100 3350 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10100 3450 60  0001 L CNN "Field11"
	1    10100 2550
	1    0    0    -1  
$EndComp
Connection ~ 10000 2750
$Comp
L C2 C19
U 1 1 5424D75D
P 1700 4900
F 0 "C19" H 1725 5000 50  0000 L CNN
F 1 "100n" H 1725 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 1700 4900 50  0001 C CNN
F 3 "" H 1700 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1700 5100 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1700 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1700 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 1700 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1700 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 1700 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1700 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1700 5800 60  0001 L CNN "Field11"
	1    1700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2350 1250 4700
Wire Wire Line
	1250 4700 10200 4700
Wire Wire Line
	1800 4700 1800 4600
Wire Wire Line
	10200 4700 10200 4600
Connection ~ 1800 4700
Wire Wire Line
	8800 4700 8800 4600
Connection ~ 8800 4700
Wire Wire Line
	7400 4700 7400 4600
Connection ~ 7400 4700
Wire Wire Line
	6000 4700 6000 4600
Connection ~ 6000 4700
Wire Wire Line
	4600 4700 4600 4600
Connection ~ 4600 4700
Wire Wire Line
	3200 4700 3200 4600
Connection ~ 3200 4700
Connection ~ 1700 4700
Connection ~ 7300 2350
Connection ~ 8700 2350
Connection ~ 5900 2350
Connection ~ 5900 2750
Connection ~ 7300 2750
Connection ~ 8700 2750
Connection ~ 10100 2350
Connection ~ 10100 2750
Connection ~ 4500 2350
Connection ~ 4500 2750
Connection ~ 3100 2750
Connection ~ 3100 2350
Connection ~ 1700 2350
Connection ~ 1700 2750
Wire Wire Line
	1100 2750 1100 5100
Wire Wire Line
	1100 5100 10100 5100
Connection ~ 1100 2750
Wire Wire Line
	10000 4600 10000 5100
Connection ~ 1700 5100
Wire Wire Line
	8600 4600 8600 5100
Connection ~ 8600 5100
Wire Wire Line
	7200 4600 7200 5100
Connection ~ 7200 5100
Wire Wire Line
	5800 4600 5800 5100
Connection ~ 5800 5100
Wire Wire Line
	4400 4600 4400 5100
Connection ~ 4400 5100
Wire Wire Line
	3000 4600 3000 5100
Connection ~ 3000 5100
Wire Wire Line
	1600 4600 1600 5100
Connection ~ 1600 5100
$Comp
L C2 C20
U 1 1 5424DFA1
P 3100 4900
F 0 "C20" H 3125 5000 50  0000 L CNN
F 1 "100n" H 3125 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 3100 4900 50  0001 C CNN
F 3 "" H 3100 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3100 5100 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3100 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3100 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 3100 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3100 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 3100 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3100 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3100 5800 60  0001 L CNN "Field11"
	1    3100 4900
	1    0    0    -1  
$EndComp
$Comp
L C2 C21
U 1 1 5424DFAF
P 4500 4900
F 0 "C21" H 4525 5000 50  0000 L CNN
F 1 "100n" H 4525 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 4500 4900 50  0001 C CNN
F 3 "" H 4500 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4500 5100 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4500 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4500 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 4500 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4500 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 4500 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4500 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4500 5800 60  0001 L CNN "Field11"
	1    4500 4900
	1    0    0    -1  
$EndComp
$Comp
L C2 C22
U 1 1 5424DFBD
P 5900 4900
F 0 "C22" H 5925 5000 50  0000 L CNN
F 1 "100n" H 5925 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 5900 4900 50  0001 C CNN
F 3 "" H 5900 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 5900 5100 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 5900 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 5900 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 5900 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 5900 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 5900 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 5900 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 5900 5800 60  0001 L CNN "Field11"
	1    5900 4900
	1    0    0    -1  
$EndComp
$Comp
L C2 C23
U 1 1 5424DFCB
P 7300 4900
F 0 "C23" H 7325 5000 50  0000 L CNN
F 1 "100n" H 7325 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7300 5100 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7300 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7300 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 7300 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7300 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 7300 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7300 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7300 5800 60  0001 L CNN "Field11"
	1    7300 4900
	1    0    0    -1  
$EndComp
$Comp
L C2 C24
U 1 1 5424DFD9
P 8700 4900
F 0 "C24" H 8725 5000 50  0000 L CNN
F 1 "100n" H 8725 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 8700 4900 50  0001 C CNN
F 3 "" H 8700 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8700 5100 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8700 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8700 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 8700 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8700 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 8700 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8700 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8700 5800 60  0001 L CNN "Field11"
	1    8700 4900
	1    0    0    -1  
$EndComp
$Comp
L C2 C25
U 1 1 5424DFE7
P 10100 4900
F 0 "C25" H 10125 5000 50  0000 L CNN
F 1 "100n" H 10125 4800 50  0000 L CNN
F 2 "C4_Pretty:c_0805_led" H 10100 4900 50  0001 C CNN
F 3 "" H 10100 4900 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10100 5100 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10100 5200 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10100 5300 60  0001 L CNN "Field6"
F 7 "Kemet" H 10100 5400 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10100 5500 60  0001 L CNN "Field8"
F 9 "Digikey" H 10100 5600 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10100 5700 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10100 5800 60  0001 L CNN "Field11"
	1    10100 4900
	1    0    0    -1  
$EndComp
Connection ~ 10100 5100
Connection ~ 10100 4700
Connection ~ 8700 5100
Connection ~ 8700 4700
Connection ~ 7300 4700
Connection ~ 7300 5100
Connection ~ 5900 5100
Connection ~ 5900 4700
Connection ~ 4500 4700
Connection ~ 4500 5100
Connection ~ 3100 5100
Connection ~ 3100 4700
Connection ~ 1250 2350
Connection ~ 10000 5100
$Comp
L WS2812B LED1
U 1 1 542DED2D
P 1525 1575
F 0 "LED1" V 1275 1575 60  0000 C CNN
F 1 "WS2812B" V 1925 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1525 1575 60  0001 C CNN
F 3 "~" H 1525 1575 60  0000 C CNN
	1    1525 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED2
U 1 1 542DED3A
P 2925 1575
F 0 "LED2" V 2675 1575 60  0000 C CNN
F 1 "WS2812B" V 3325 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 2925 1575 60  0001 C CNN
F 3 "~" H 2925 1575 60  0000 C CNN
	1    2925 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED3
U 1 1 542DED40
P 4325 1575
F 0 "LED3" V 4075 1575 60  0000 C CNN
F 1 "WS2812B" V 4725 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4325 1575 60  0001 C CNN
F 3 "~" H 4325 1575 60  0000 C CNN
	1    4325 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED4
U 1 1 542DED46
P 5725 1575
F 0 "LED4" V 5475 1575 60  0000 C CNN
F 1 "WS2812B" V 6125 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5725 1575 60  0001 C CNN
F 3 "~" H 5725 1575 60  0000 C CNN
	1    5725 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED5
U 1 1 542DED4C
P 7125 1575
F 0 "LED5" V 6875 1575 60  0000 C CNN
F 1 "WS2812B" V 7525 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7125 1575 60  0001 C CNN
F 3 "~" H 7125 1575 60  0000 C CNN
	1    7125 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED6
U 1 1 542DED52
P 8525 1575
F 0 "LED6" V 8275 1575 60  0000 C CNN
F 1 "WS2812B" V 8925 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8525 1575 60  0001 C CNN
F 3 "~" H 8525 1575 60  0000 C CNN
	1    8525 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED7
U 1 1 542DED58
P 9925 1575
F 0 "LED7" V 9675 1575 60  0000 C CNN
F 1 "WS2812B" V 10325 1575 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 9925 1575 60  0001 C CNN
F 3 "~" H 9925 1575 60  0000 C CNN
	1    9925 1575
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED8
U 1 1 542DED5E
P 1525 3975
F 0 "LED8" V 1275 3975 60  0000 C CNN
F 1 "WS2812B" V 1925 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 1525 3975 60  0001 C CNN
F 3 "~" H 1525 3975 60  0000 C CNN
	1    1525 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED9
U 1 1 542DED64
P 2925 3975
F 0 "LED9" V 2675 3975 60  0000 C CNN
F 1 "WS2812B" V 3325 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 2925 3975 60  0001 C CNN
F 3 "~" H 2925 3975 60  0000 C CNN
	1    2925 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED10
U 1 1 542DED6A
P 4325 3975
F 0 "LED10" V 4075 3975 60  0000 C CNN
F 1 "WS2812B" V 4725 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 4325 3975 60  0001 C CNN
F 3 "~" H 4325 3975 60  0000 C CNN
	1    4325 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED11
U 1 1 542DED70
P 5725 3975
F 0 "LED11" V 5475 3975 60  0000 C CNN
F 1 "WS2812B" V 6125 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 5725 3975 60  0001 C CNN
F 3 "~" H 5725 3975 60  0000 C CNN
	1    5725 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED12
U 1 1 542DED76
P 7125 3975
F 0 "LED12" V 6875 3975 60  0000 C CNN
F 1 "WS2812B" V 7525 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 7125 3975 60  0001 C CNN
F 3 "~" H 7125 3975 60  0000 C CNN
	1    7125 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED13
U 1 1 542DED7C
P 8525 3975
F 0 "LED13" V 8275 3975 60  0000 C CNN
F 1 "WS2812B" V 8925 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 8525 3975 60  0001 C CNN
F 3 "~" H 8525 3975 60  0000 C CNN
	1    8525 3975
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED14
U 1 1 542DED8C
P 9925 3975
F 0 "LED14" V 9675 3975 60  0000 C CNN
F 1 "WS2812B" V 10325 3975 60  0001 C CNN
F 2 "C4_Pretty:RGB_WS2811B" H 9925 3975 60  0001 C CNN
F 3 "~" H 9925 3975 60  0000 C CNN
	1    9925 3975
	1    0    0    -1  
$EndComp
$EndSCHEMATC
