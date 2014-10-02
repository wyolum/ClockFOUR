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
Sheet 6 14
Title "ClockFOUR"
Date "2 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1075 5300 0    60   Output ~ 0
DO_E
Text HLabel 1075 2400 0    60   Input ~ 0
GND
Text HLabel 1075 950  0    60   Input ~ 0
DI_E
Text HLabel 1075 2800 0    60   Input ~ 0
5V
$Comp
L GND #PWR018
U 1 1 542D12AD
P 1275 2450
F 0 "#PWR018" H 1275 2450 30  0001 C CNN
F 1 "GND" H 1275 2380 30  0001 C CNN
F 2 "" H 1275 2450 60  0001 C CNN
F 3 "" H 1275 2450 60  0001 C CNN
	1    1275 2450
	1    0    0    -1  
$EndComp
$Comp
L C2 C67
U 1 1 542D12BB
P 1825 2600
F 0 "C67" H 1850 2700 50  0000 L CNN
F 1 "100n" H 1850 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1825 2600 50  0001 C CNN
F 3 "" H 1825 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1825 2800 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1825 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1825 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 1825 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1825 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 1825 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1825 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1825 3500 60  0001 L CNN "Field11"
	1    1825 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1275 2400 1275 2450
Wire Wire Line
	1075 950  1725 950 
Wire Wire Line
	1725 950  1725 1050
Connection ~ 1275 2400
Wire Wire Line
	1925 1050 1925 950 
Wire Wire Line
	1925 950  3125 950 
Wire Wire Line
	3125 950  3125 1050
Wire Wire Line
	3325 1050 3325 950 
Wire Wire Line
	3325 950  4525 950 
Wire Wire Line
	4525 950  4525 1050
Wire Wire Line
	4725 1050 4725 950 
Wire Wire Line
	4725 950  5925 950 
Wire Wire Line
	5925 950  5925 1050
Wire Wire Line
	6125 1050 6125 950 
Wire Wire Line
	6125 950  7325 950 
Wire Wire Line
	7325 950  7325 1050
Wire Wire Line
	7525 1050 7525 950 
Wire Wire Line
	7525 950  8725 950 
Wire Wire Line
	8725 950  8725 1050
Wire Wire Line
	8925 1050 8925 950 
Wire Wire Line
	8925 950  10125 950 
Wire Wire Line
	10125 950  10125 1050
Wire Wire Line
	10325 1050 10325 950 
Wire Wire Line
	10325 950  10725 950 
Wire Wire Line
	10725 3150 1725 3150
Wire Wire Line
	1725 3150 1725 3450
Wire Wire Line
	1925 3450 1925 3350
Wire Wire Line
	1925 3350 3125 3350
Wire Wire Line
	3125 3350 3125 3450
Wire Wire Line
	3325 3450 3325 3350
Wire Wire Line
	3325 3350 4525 3350
Wire Wire Line
	4525 3350 4525 3450
Wire Wire Line
	4725 3450 4725 3350
Wire Wire Line
	4725 3350 5925 3350
Wire Wire Line
	5925 3350 5925 3450
Wire Wire Line
	6125 3450 6125 3350
Wire Wire Line
	6125 3350 7325 3350
Wire Wire Line
	7325 3350 7325 3450
Wire Wire Line
	7525 3450 7525 3350
Wire Wire Line
	7525 3350 8725 3350
Wire Wire Line
	8725 3350 8725 3450
Wire Wire Line
	8925 3450 8925 3350
Wire Wire Line
	8925 3350 10125 3350
Wire Wire Line
	10125 3350 10125 3450
Wire Wire Line
	10325 3450 10325 3350
Wire Wire Line
	10325 3350 10725 3350
Wire Wire Line
	10725 3350 10725 5300
Wire Wire Line
	10725 5300 1075 5300
Wire Wire Line
	10725 950  10725 3150
Wire Wire Line
	1075 2400 10325 2400
Wire Wire Line
	10325 2400 10325 2250
Wire Wire Line
	1075 2800 10225 2800
Wire Wire Line
	1925 2250 1925 2400
Connection ~ 1925 2400
Wire Wire Line
	3325 2250 3325 2400
Connection ~ 3325 2400
Wire Wire Line
	4725 2250 4725 2400
Connection ~ 4725 2400
Wire Wire Line
	6125 2250 6125 2400
Connection ~ 6125 2400
Wire Wire Line
	7525 2250 7525 2400
Connection ~ 7525 2400
Wire Wire Line
	8925 2250 8925 2400
Connection ~ 8925 2400
Wire Wire Line
	10125 2800 10125 2250
Wire Wire Line
	8725 2250 8725 2800
Connection ~ 8725 2800
Wire Wire Line
	7325 2250 7325 2800
Connection ~ 7325 2800
Wire Wire Line
	5925 2250 5925 2800
Connection ~ 5925 2800
Wire Wire Line
	4525 2250 4525 2800
Connection ~ 4525 2800
Wire Wire Line
	3125 2250 3125 2800
Connection ~ 3125 2800
Wire Wire Line
	1725 2250 1725 2800
Connection ~ 1725 2800
$Comp
L C2 C68
U 1 1 542D1316
P 3225 2600
F 0 "C68" H 3250 2700 50  0000 L CNN
F 1 "100n" H 3250 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3225 2600 50  0001 C CNN
F 3 "" H 3225 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3225 2800 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3225 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3225 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 3225 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3225 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 3225 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3225 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3225 3500 60  0001 L CNN "Field11"
	1    3225 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C69
U 1 1 542D1324
P 4625 2600
F 0 "C69" H 4650 2700 50  0000 L CNN
F 1 "100n" H 4650 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4625 2600 50  0001 C CNN
F 3 "" H 4625 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4625 2800 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4625 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4625 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 4625 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4625 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 4625 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4625 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4625 3500 60  0001 L CNN "Field11"
	1    4625 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C70
U 1 1 542D1332
P 6025 2600
F 0 "C70" H 6050 2700 50  0000 L CNN
F 1 "100n" H 6050 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6025 2600 50  0001 C CNN
F 3 "" H 6025 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6025 2800 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6025 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6025 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 6025 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6025 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 6025 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6025 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6025 3500 60  0001 L CNN "Field11"
	1    6025 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C71
U 1 1 542D1340
P 7425 2600
F 0 "C71" H 7450 2700 50  0000 L CNN
F 1 "100n" H 7450 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7425 2600 50  0001 C CNN
F 3 "" H 7425 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7425 2800 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7425 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7425 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 7425 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7425 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 7425 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7425 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7425 3500 60  0001 L CNN "Field11"
	1    7425 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C72
U 1 1 542D134E
P 8825 2600
F 0 "C72" H 8850 2700 50  0000 L CNN
F 1 "100n" H 8850 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8825 2600 50  0001 C CNN
F 3 "" H 8825 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8825 2800 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8825 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8825 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 8825 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8825 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 8825 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8825 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8825 3500 60  0001 L CNN "Field11"
	1    8825 2600
	1    0    0    -1  
$EndComp
$Comp
L C2 C73
U 1 1 542D135C
P 10225 2600
F 0 "C73" H 10250 2700 50  0000 L CNN
F 1 "100n" H 10250 2500 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10225 2600 50  0001 C CNN
F 3 "" H 10225 2600 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10225 2800 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10225 2900 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10225 3000 60  0001 L CNN "Field6"
F 7 "Kemet" H 10225 3100 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10225 3200 60  0001 L CNN "Field8"
F 9 "Digikey" H 10225 3300 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10225 3400 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10225 3500 60  0001 L CNN "Field11"
	1    10225 2600
	1    0    0    -1  
$EndComp
Connection ~ 10125 2800
$Comp
L C2 C74
U 1 1 542D136B
P 1825 4950
F 0 "C74" H 1850 5050 50  0000 L CNN
F 1 "100n" H 1850 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1825 4950 50  0001 C CNN
F 3 "" H 1825 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1825 5150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1825 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1825 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 1825 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1825 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 1825 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1825 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1825 5850 60  0001 L CNN "Field11"
	1    1825 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1375 2400 1375 4750
Wire Wire Line
	1925 4750 1925 4650
Wire Wire Line
	10325 4750 10325 4650
Connection ~ 1925 4750
Wire Wire Line
	7525 4750 7525 4650
Connection ~ 7525 4750
Wire Wire Line
	4725 4750 4725 4650
Connection ~ 4725 4750
Wire Wire Line
	3325 4750 3325 4650
Connection ~ 3325 4750
Connection ~ 1825 4750
Connection ~ 7425 2400
Connection ~ 8825 2400
Connection ~ 6025 2400
Connection ~ 6025 2800
Connection ~ 7425 2800
Connection ~ 8825 2800
Connection ~ 10225 2400
Connection ~ 10225 2800
Connection ~ 4625 2400
Connection ~ 4625 2800
Connection ~ 3225 2800
Connection ~ 3225 2400
Connection ~ 1825 2400
Connection ~ 1825 2800
Wire Wire Line
	1225 2800 1225 5150
Wire Wire Line
	1225 5150 10225 5150
Connection ~ 1225 2800
Wire Wire Line
	10125 4650 10125 5150
Connection ~ 1825 5150
Wire Wire Line
	8725 4650 8725 5150
Connection ~ 8725 5150
Wire Wire Line
	7325 4650 7325 5150
Connection ~ 7325 5150
Wire Wire Line
	5925 4650 5925 5150
Connection ~ 5925 5150
Wire Wire Line
	4525 4650 4525 5150
Connection ~ 4525 5150
Wire Wire Line
	3125 4650 3125 5150
Connection ~ 3125 5150
Wire Wire Line
	1725 4650 1725 5150
Connection ~ 1725 5150
$Comp
L C2 C75
U 1 1 542D13A3
P 3225 4950
F 0 "C75" H 3250 5050 50  0000 L CNN
F 1 "100n" H 3250 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3225 4950 50  0001 C CNN
F 3 "" H 3225 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3225 5150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3225 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3225 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 3225 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3225 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 3225 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3225 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3225 5850 60  0001 L CNN "Field11"
	1    3225 4950
	1    0    0    -1  
$EndComp
$Comp
L C2 C76
U 1 1 542D13B1
P 4625 4950
F 0 "C76" H 4650 5050 50  0000 L CNN
F 1 "100n" H 4650 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4625 4950 50  0001 C CNN
F 3 "" H 4625 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4625 5150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4625 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4625 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 4625 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4625 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 4625 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4625 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4625 5850 60  0001 L CNN "Field11"
	1    4625 4950
	1    0    0    -1  
$EndComp
$Comp
L C2 C77
U 1 1 542D13BF
P 6025 4950
F 0 "C77" H 6050 5050 50  0000 L CNN
F 1 "100n" H 6050 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6025 4950 50  0001 C CNN
F 3 "" H 6025 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6025 5150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6025 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6025 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 6025 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6025 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 6025 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6025 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6025 5850 60  0001 L CNN "Field11"
	1    6025 4950
	1    0    0    -1  
$EndComp
$Comp
L C2 C78
U 1 1 542D13CD
P 7425 4950
F 0 "C78" H 7450 5050 50  0000 L CNN
F 1 "100n" H 7450 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7425 4950 50  0001 C CNN
F 3 "" H 7425 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7425 5150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7425 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7425 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 7425 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7425 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 7425 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7425 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7425 5850 60  0001 L CNN "Field11"
	1    7425 4950
	1    0    0    -1  
$EndComp
$Comp
L C2 C79
U 1 1 542D13DB
P 8825 4950
F 0 "C79" H 8850 5050 50  0000 L CNN
F 1 "100n" H 8850 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8825 4950 50  0001 C CNN
F 3 "" H 8825 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8825 5150 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8825 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8825 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 8825 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8825 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 8825 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8825 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8825 5850 60  0001 L CNN "Field11"
	1    8825 4950
	1    0    0    -1  
$EndComp
$Comp
L C2 C80
U 1 1 542D13E9
P 10225 4950
F 0 "C80" H 10250 5050 50  0000 L CNN
F 1 "100n" H 10250 4850 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10225 4950 50  0001 C CNN
F 3 "" H 10225 4950 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10225 5150 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10225 5250 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10225 5350 60  0001 L CNN "Field6"
F 7 "Kemet" H 10225 5450 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10225 5550 60  0001 L CNN "Field8"
F 9 "Digikey" H 10225 5650 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10225 5750 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10225 5850 60  0001 L CNN "Field11"
	1    10225 4950
	1    0    0    -1  
$EndComp
Connection ~ 10225 5150
Connection ~ 10225 4750
Connection ~ 8825 5150
Connection ~ 8825 4750
Connection ~ 7425 4750
Connection ~ 7425 5150
Connection ~ 6025 5150
Connection ~ 6025 4750
Connection ~ 4625 4750
Connection ~ 4625 5150
Connection ~ 3225 5150
Connection ~ 3225 4750
Connection ~ 10125 5150
Connection ~ 10325 4750
Wire Wire Line
	8925 4650 8925 4750
Connection ~ 8925 4750
Wire Wire Line
	1375 4750 10325 4750
Wire Wire Line
	6125 4650 6125 4750
Connection ~ 6125 4750
Connection ~ 1375 2400
$Comp
L RGB_WS2812B LED57
U 1 1 542D1403
P 1650 1625
F 0 "LED57" V 1400 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 2050 1625 60  0000 C CNN
F 2 "~" H 1650 1625 60  0000 C CNN
F 3 "~" H 1650 1625 60  0000 C CNN
	1    1650 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED58
U 1 1 542D1409
P 3050 1625
F 0 "LED58" V 2800 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 3450 1625 60  0000 C CNN
F 2 "~" H 3050 1625 60  0000 C CNN
F 3 "~" H 3050 1625 60  0000 C CNN
	1    3050 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED59
U 1 1 542D140F
P 4450 1625
F 0 "LED59" V 4200 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 4850 1625 60  0000 C CNN
F 2 "~" H 4450 1625 60  0000 C CNN
F 3 "~" H 4450 1625 60  0000 C CNN
	1    4450 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED60
U 1 1 542D1415
P 5850 1625
F 0 "LED60" V 5600 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 6250 1625 60  0000 C CNN
F 2 "~" H 5850 1625 60  0000 C CNN
F 3 "~" H 5850 1625 60  0000 C CNN
	1    5850 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED61
U 1 1 542D141B
P 7250 1625
F 0 "LED61" V 7000 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 7650 1625 60  0000 C CNN
F 2 "~" H 7250 1625 60  0000 C CNN
F 3 "~" H 7250 1625 60  0000 C CNN
	1    7250 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED62
U 1 1 542D1421
P 8650 1625
F 0 "LED62" V 8400 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 9050 1625 60  0000 C CNN
F 2 "~" H 8650 1625 60  0000 C CNN
F 3 "~" H 8650 1625 60  0000 C CNN
	1    8650 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED63
U 1 1 542D1427
P 10050 1625
F 0 "LED63" V 9800 1625 60  0000 C CNN
F 1 "RGB_WS2812B" V 10450 1625 60  0000 C CNN
F 2 "~" H 10050 1625 60  0000 C CNN
F 3 "~" H 10050 1625 60  0000 C CNN
	1    10050 1625
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED70
U 1 1 542D142D
P 10050 4025
F 0 "LED70" V 9800 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 10450 4025 60  0000 C CNN
F 2 "~" H 10050 4025 60  0000 C CNN
F 3 "~" H 10050 4025 60  0000 C CNN
	1    10050 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED69
U 1 1 542D1433
P 8650 4025
F 0 "LED69" V 8400 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 9050 4025 60  0000 C CNN
F 2 "~" H 8650 4025 60  0000 C CNN
F 3 "~" H 8650 4025 60  0000 C CNN
	1    8650 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED68
U 1 1 542D1439
P 7250 4025
F 0 "LED68" V 7000 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 7650 4025 60  0000 C CNN
F 2 "~" H 7250 4025 60  0000 C CNN
F 3 "~" H 7250 4025 60  0000 C CNN
	1    7250 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED67
U 1 1 542D143F
P 5850 4025
F 0 "LED67" V 5600 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 6250 4025 60  0000 C CNN
F 2 "~" H 5850 4025 60  0000 C CNN
F 3 "~" H 5850 4025 60  0000 C CNN
	1    5850 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED66
U 1 1 542D1445
P 4450 4025
F 0 "LED66" V 4200 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 4850 4025 60  0000 C CNN
F 2 "~" H 4450 4025 60  0000 C CNN
F 3 "~" H 4450 4025 60  0000 C CNN
	1    4450 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED65
U 1 1 542D144B
P 3050 4025
F 0 "LED65" V 2800 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 3450 4025 60  0000 C CNN
F 2 "~" H 3050 4025 60  0000 C CNN
F 3 "~" H 3050 4025 60  0000 C CNN
	1    3050 4025
	1    0    0    -1  
$EndComp
$Comp
L RGB_WS2812B LED64
U 1 1 542D1451
P 1650 4025
F 0 "LED64" V 1400 4025 60  0000 C CNN
F 1 "RGB_WS2812B" V 2050 4025 60  0000 C CNN
F 2 "~" H 1650 4025 60  0000 C CNN
F 3 "~" H 1650 4025 60  0000 C CNN
	1    1650 4025
	1    0    0    -1  
$EndComp
$EndSCHEMATC
