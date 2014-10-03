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
Sheet 10 14
Title "ClockFOUR"
Date "3 oct 2014"
Rev ""
Comp "WyoLum"
Comment1 "www.wyolum.com"
Comment2 "David Pincus"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1050 5400 0    60   Output ~ 0
DO_I
Text HLabel 1050 2500 0    60   Input ~ 0
GND
Text HLabel 1050 1050 0    60   Input ~ 0
DI_I
Text HLabel 1050 2900 0    60   Input ~ 0
5V
$Comp
L GND #PWR022
U 1 1 542E3B04
P 1250 2550
F 0 "#PWR022" H 1250 2550 30  0001 C CNN
F 1 "GND" H 1250 2480 30  0001 C CNN
F 2 "" H 1250 2550 60  0001 C CNN
F 3 "" H 1250 2550 60  0001 C CNN
	1    1250 2550
	1    0    0    -1  
$EndComp
$Comp
L C2 C124
U 1 1 542E3B12
P 1800 2700
F 0 "C124" H 1825 2800 50  0000 L CNN
F 1 "100n" H 1825 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1800 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 1800 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1800 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 1800 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1800 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 1800 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1800 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1800 3600 60  0001 L CNN "Field11"
	1    1800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2500 1250 2550
Wire Wire Line
	1050 1050 1700 1050
Wire Wire Line
	1700 1050 1700 1150
Connection ~ 1250 2500
Wire Wire Line
	1900 1150 1900 1050
Wire Wire Line
	1900 1050 3100 1050
Wire Wire Line
	3100 1050 3100 1150
Wire Wire Line
	3300 1150 3300 1050
Wire Wire Line
	3300 1050 4500 1050
Wire Wire Line
	4500 1050 4500 1150
Wire Wire Line
	4700 1150 4700 1050
Wire Wire Line
	4700 1050 5900 1050
Wire Wire Line
	5900 1050 5900 1150
Wire Wire Line
	6100 1150 6100 1050
Wire Wire Line
	6100 1050 7300 1050
Wire Wire Line
	7300 1050 7300 1150
Wire Wire Line
	7500 1150 7500 1050
Wire Wire Line
	7500 1050 8700 1050
Wire Wire Line
	8700 1050 8700 1150
Wire Wire Line
	8900 1150 8900 1050
Wire Wire Line
	8900 1050 10100 1050
Wire Wire Line
	10100 1050 10100 1150
Wire Wire Line
	10300 1150 10300 1050
Wire Wire Line
	10300 1050 10700 1050
Wire Wire Line
	10700 3250 1700 3250
Wire Wire Line
	1700 3250 1700 3550
Wire Wire Line
	1900 3550 1900 3450
Wire Wire Line
	1900 3450 3100 3450
Wire Wire Line
	3100 3450 3100 3550
Wire Wire Line
	3300 3550 3300 3450
Wire Wire Line
	3300 3450 4500 3450
Wire Wire Line
	4500 3450 4500 3550
Wire Wire Line
	4700 3550 4700 3450
Wire Wire Line
	4700 3450 5900 3450
Wire Wire Line
	5900 3450 5900 3550
Wire Wire Line
	6100 3550 6100 3450
Wire Wire Line
	6100 3450 7300 3450
Wire Wire Line
	7300 3450 7300 3550
Wire Wire Line
	7500 3550 7500 3450
Wire Wire Line
	7500 3450 8700 3450
Wire Wire Line
	8700 3450 8700 3550
Wire Wire Line
	8900 3550 8900 3450
Wire Wire Line
	8900 3450 10100 3450
Wire Wire Line
	10100 3450 10100 3550
Wire Wire Line
	10300 3550 10300 3450
Wire Wire Line
	10300 3450 10700 3450
Wire Wire Line
	10700 3450 10700 5400
Wire Wire Line
	10700 5400 1050 5400
Wire Wire Line
	10700 1050 10700 3250
Wire Wire Line
	1050 2500 10300 2500
Wire Wire Line
	10300 2500 10300 2350
Wire Wire Line
	1050 2900 10200 2900
Wire Wire Line
	1900 2350 1900 2500
Connection ~ 1900 2500
Wire Wire Line
	3300 2350 3300 2500
Connection ~ 3300 2500
Wire Wire Line
	4700 2350 4700 2500
Connection ~ 4700 2500
Wire Wire Line
	6100 2350 6100 2500
Connection ~ 6100 2500
Wire Wire Line
	7500 2350 7500 2500
Connection ~ 7500 2500
Wire Wire Line
	8900 2350 8900 2500
Connection ~ 8900 2500
Wire Wire Line
	10100 2900 10100 2350
Wire Wire Line
	8700 2350 8700 2900
Connection ~ 8700 2900
Wire Wire Line
	7300 2350 7300 2900
Connection ~ 7300 2900
Wire Wire Line
	5900 2350 5900 2900
Connection ~ 5900 2900
Wire Wire Line
	4500 2350 4500 2900
Connection ~ 4500 2900
Wire Wire Line
	3100 2350 3100 2900
Connection ~ 3100 2900
Wire Wire Line
	1700 2350 1700 2900
Connection ~ 1700 2900
$Comp
L C2 C125
U 1 1 542E3B6D
P 3200 2700
F 0 "C125" H 3225 2800 50  0000 L CNN
F 1 "100n" H 3225 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3200 2700 50  0001 C CNN
F 3 "" H 3200 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3200 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 3200 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3200 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 3200 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3200 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 3200 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3200 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3200 3600 60  0001 L CNN "Field11"
	1    3200 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C126
U 1 1 542E3B7B
P 4600 2700
F 0 "C126" H 4625 2800 50  0000 L CNN
F 1 "100n" H 4625 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4600 2700 50  0001 C CNN
F 3 "" H 4600 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4600 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 4600 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4600 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 4600 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4600 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 4600 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4600 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4600 3600 60  0001 L CNN "Field11"
	1    4600 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C127
U 1 1 542E3B89
P 6000 2700
F 0 "C127" H 6025 2800 50  0000 L CNN
F 1 "100n" H 6025 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6000 2700 50  0001 C CNN
F 3 "" H 6000 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6000 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 6000 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6000 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 6000 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6000 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 6000 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6000 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6000 3600 60  0001 L CNN "Field11"
	1    6000 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C128
U 1 1 542E3B97
P 7400 2700
F 0 "C128" H 7425 2800 50  0000 L CNN
F 1 "100n" H 7425 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7400 2700 50  0001 C CNN
F 3 "" H 7400 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7400 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 7400 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7400 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 7400 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7400 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 7400 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7400 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7400 3600 60  0001 L CNN "Field11"
	1    7400 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C129
U 1 1 542E3BA5
P 8800 2700
F 0 "C129" H 8825 2800 50  0000 L CNN
F 1 "100n" H 8825 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8800 2700 50  0001 C CNN
F 3 "" H 8800 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8800 2900 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 8800 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8800 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 8800 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8800 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 8800 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8800 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8800 3600 60  0001 L CNN "Field11"
	1    8800 2700
	1    0    0    -1  
$EndComp
$Comp
L C2 C130
U 1 1 542E3BB3
P 10200 2700
F 0 "C130" H 10225 2800 50  0000 L CNN
F 1 "100n" H 10225 2600 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10200 2700 50  0001 C CNN
F 3 "" H 10200 2700 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10200 2900 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 10200 3000 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10200 3100 60  0001 L CNN "Field6"
F 7 "Kemet" H 10200 3200 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10200 3300 60  0001 L CNN "Field8"
F 9 "Digikey" H 10200 3400 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10200 3500 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10200 3600 60  0001 L CNN "Field11"
	1    10200 2700
	1    0    0    -1  
$EndComp
Connection ~ 10100 2900
$Comp
L C2 C131
U 1 1 542E3BC2
P 1800 5050
F 0 "C131" H 1825 5150 50  0000 L CNN
F 1 "100n" H 1825 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 1800 5050 50  0001 C CNN
F 3 "" H 1800 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 1800 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 1800 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 1800 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 1800 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 1800 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 1800 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 1800 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 1800 5950 60  0001 L CNN "Field11"
	1    1800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2500 1350 4850
Wire Wire Line
	1350 4850 10300 4850
Wire Wire Line
	1900 4850 1900 4750
Wire Wire Line
	10300 4850 10300 4750
Connection ~ 1900 4850
Wire Wire Line
	8900 4850 8900 4750
Connection ~ 8900 4850
Wire Wire Line
	7500 4850 7500 4750
Connection ~ 7500 4850
Wire Wire Line
	6100 4850 6100 4750
Connection ~ 6100 4850
Wire Wire Line
	4700 4850 4700 4750
Connection ~ 4700 4850
Wire Wire Line
	3300 4850 3300 4750
Connection ~ 3300 4850
Connection ~ 1800 4850
Connection ~ 7400 2500
Connection ~ 8800 2500
Connection ~ 6000 2500
Connection ~ 6000 2900
Connection ~ 7400 2900
Connection ~ 8800 2900
Connection ~ 10200 2500
Connection ~ 10200 2900
Connection ~ 4600 2500
Connection ~ 4600 2900
Connection ~ 3200 2900
Connection ~ 3200 2500
Connection ~ 1800 2500
Connection ~ 1800 2900
Wire Wire Line
	1200 2900 1200 5250
Wire Wire Line
	1200 5250 10200 5250
Connection ~ 1200 2900
Wire Wire Line
	10100 4750 10100 5250
Connection ~ 1800 5250
Wire Wire Line
	8700 4750 8700 5250
Connection ~ 8700 5250
Wire Wire Line
	7300 4750 7300 5250
Connection ~ 7300 5250
Wire Wire Line
	5900 4750 5900 5250
Connection ~ 5900 5250
Wire Wire Line
	4500 4750 4500 5250
Connection ~ 4500 5250
Wire Wire Line
	3100 4750 3100 5250
Connection ~ 3100 5250
Wire Wire Line
	1700 4750 1700 5250
Connection ~ 1700 5250
$Comp
L C2 C132
U 1 1 542E3BFF
P 3200 5050
F 0 "C132" H 3225 5150 50  0000 L CNN
F 1 "100n" H 3225 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 3200 5050 50  0001 C CNN
F 3 "" H 3200 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 3200 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 3200 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 3200 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 3200 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 3200 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 3200 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 3200 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 3200 5950 60  0001 L CNN "Field11"
	1    3200 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C133
U 1 1 542E3C0D
P 4600 5050
F 0 "C133" H 4625 5150 50  0000 L CNN
F 1 "100n" H 4625 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 4600 5050 50  0001 C CNN
F 3 "" H 4600 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 4600 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 4600 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 4600 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 4600 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 4600 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 4600 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 4600 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 4600 5950 60  0001 L CNN "Field11"
	1    4600 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C134
U 1 1 542E3C1B
P 6000 5050
F 0 "C134" H 6025 5150 50  0000 L CNN
F 1 "100n" H 6025 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 6000 5050 50  0001 C CNN
F 3 "" H 6000 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 6000 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 6000 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 6000 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 6000 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 6000 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 6000 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 6000 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 6000 5950 60  0001 L CNN "Field11"
	1    6000 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C135
U 1 1 542E3C29
P 7400 5050
F 0 "C135" H 7425 5150 50  0000 L CNN
F 1 "100n" H 7425 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 7400 5050 50  0001 C CNN
F 3 "" H 7400 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 7400 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 7400 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 7400 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 7400 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 7400 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 7400 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 7400 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 7400 5950 60  0001 L CNN "Field11"
	1    7400 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C136
U 1 1 542E3C37
P 8800 5050
F 0 "C136" H 8825 5150 50  0000 L CNN
F 1 "100n" H 8825 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 8800 5050 50  0001 C CNN
F 3 "" H 8800 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 8800 5250 60  0001 L CNN "Field4"
F 5 "100n, 25V" H 8800 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 8800 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 8800 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 8800 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 8800 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 8800 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 8800 5950 60  0001 L CNN "Field11"
	1    8800 5050
	1    0    0    -1  
$EndComp
$Comp
L C2 C137
U 1 1 542E3C45
P 10200 5050
F 0 "C137" H 10225 5150 50  0000 L CNN
F 1 "100n" H 10225 4950 50  0000 L CNN
F 2 "TinyTiM_Lib:c_0805" H 10200 5050 50  0001 C CNN
F 3 "" H 10200 5050 60  0001 C CNN
F 4 "CAP CER 0.1UF 25V 10% X7R 0805" H 10200 5250 60  0001 L CNN "Field4"
F 5 "100nF, 25V" H 10200 5350 60  0001 L CNN "Field5"
F 6 "Surface Mount, MLCC" H 10200 5450 60  0001 L CNN "Field6"
F 7 "Kemet" H 10200 5550 60  0001 L CNN "Field7"
F 8 "C0805C104K3RACTU" H 10200 5650 60  0001 L CNN "Field8"
F 9 "Digikey" H 10200 5750 60  0001 L CNN "Field9"
F 10 "399-1168-1-ND" H 10200 5850 60  0001 L CNN "Field10"
F 11 "http://www.digikey.com/product-detail/en/C0805C104K3RACTU/399-1168-1-ND/411443" H 10200 5950 60  0001 L CNN "Field11"
	1    10200 5050
	1    0    0    -1  
$EndComp
Connection ~ 10200 5250
Connection ~ 10200 4850
Connection ~ 8800 5250
Connection ~ 8800 4850
Connection ~ 7400 4850
Connection ~ 7400 5250
Connection ~ 6000 5250
Connection ~ 6000 4850
Connection ~ 4600 4850
Connection ~ 4600 5250
Connection ~ 3200 5250
Connection ~ 3200 4850
Connection ~ 1350 2500
Connection ~ 10100 5250
$Comp
L WS2812B LED113
U 1 1 542E3C59
P 1625 1725
F 0 "LED113" V 1375 1725 60  0000 C CNN
F 1 "WS2812B" V 2025 1725 60  0001 C CNN
F 2 "~" H 1625 1725 60  0000 C CNN
F 3 "~" H 1625 1725 60  0000 C CNN
	1    1625 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED114
U 1 1 542E3C5F
P 3025 1725
F 0 "LED114" V 2775 1725 60  0000 C CNN
F 1 "WS2812B" V 3425 1725 60  0001 C CNN
F 2 "~" H 3025 1725 60  0000 C CNN
F 3 "~" H 3025 1725 60  0000 C CNN
	1    3025 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED115
U 1 1 542E3C65
P 4425 1725
F 0 "LED115" V 4175 1725 60  0000 C CNN
F 1 "WS2812B" V 4825 1725 60  0001 C CNN
F 2 "~" H 4425 1725 60  0000 C CNN
F 3 "~" H 4425 1725 60  0000 C CNN
	1    4425 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED116
U 1 1 542E3C6B
P 5825 1725
F 0 "LED116" V 5575 1725 60  0000 C CNN
F 1 "WS2812B" V 6225 1725 60  0001 C CNN
F 2 "~" H 5825 1725 60  0000 C CNN
F 3 "~" H 5825 1725 60  0000 C CNN
	1    5825 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED117
U 1 1 542E3C71
P 7225 1725
F 0 "LED117" V 6975 1725 60  0000 C CNN
F 1 "WS2812B" V 7625 1725 60  0001 C CNN
F 2 "~" H 7225 1725 60  0000 C CNN
F 3 "~" H 7225 1725 60  0000 C CNN
	1    7225 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED118
U 1 1 542E3C77
P 8625 1725
F 0 "LED118" V 8375 1725 60  0000 C CNN
F 1 "WS2812B" V 9025 1725 60  0001 C CNN
F 2 "~" H 8625 1725 60  0000 C CNN
F 3 "~" H 8625 1725 60  0000 C CNN
	1    8625 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED119
U 1 1 542E3C7D
P 10025 1725
F 0 "LED119" V 9775 1725 60  0000 C CNN
F 1 "WS2812B" V 10425 1725 60  0001 C CNN
F 2 "~" H 10025 1725 60  0000 C CNN
F 3 "~" H 10025 1725 60  0000 C CNN
	1    10025 1725
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED120
U 1 1 542E3C83
P 1625 4125
F 0 "LED120" V 1375 4125 60  0000 C CNN
F 1 "WS2812B" V 2025 4125 60  0001 C CNN
F 2 "~" H 1625 4125 60  0000 C CNN
F 3 "~" H 1625 4125 60  0000 C CNN
	1    1625 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED121
U 1 1 542E3C89
P 3025 4125
F 0 "LED121" V 2775 4125 60  0000 C CNN
F 1 "WS2812B" V 3425 4125 60  0001 C CNN
F 2 "~" H 3025 4125 60  0000 C CNN
F 3 "~" H 3025 4125 60  0000 C CNN
	1    3025 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED122
U 1 1 542E3C8F
P 4425 4125
F 0 "LED122" V 4175 4125 60  0000 C CNN
F 1 "WS2812B" V 4825 4125 60  0001 C CNN
F 2 "~" H 4425 4125 60  0000 C CNN
F 3 "~" H 4425 4125 60  0000 C CNN
	1    4425 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED123
U 1 1 542E3C95
P 5825 4125
F 0 "LED123" V 5575 4125 60  0000 C CNN
F 1 "WS2812B" V 6225 4125 60  0001 C CNN
F 2 "~" H 5825 4125 60  0000 C CNN
F 3 "~" H 5825 4125 60  0000 C CNN
	1    5825 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED124
U 1 1 542E3C9B
P 7225 4125
F 0 "LED124" V 6975 4125 60  0000 C CNN
F 1 "WS2812B" V 7625 4125 60  0001 C CNN
F 2 "~" H 7225 4125 60  0000 C CNN
F 3 "~" H 7225 4125 60  0000 C CNN
	1    7225 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED125
U 1 1 542E3CA1
P 8625 4125
F 0 "LED125" V 8375 4125 60  0000 C CNN
F 1 "WS2812B" V 9025 4125 60  0001 C CNN
F 2 "~" H 8625 4125 60  0000 C CNN
F 3 "~" H 8625 4125 60  0000 C CNN
	1    8625 4125
	1    0    0    -1  
$EndComp
$Comp
L WS2812B LED126
U 1 1 542E3CA7
P 10025 4125
F 0 "LED126" V 9775 4125 60  0000 C CNN
F 1 "WS2812B" V 10425 4125 60  0001 C CNN
F 2 "~" H 10025 4125 60  0000 C CNN
F 3 "~" H 10025 4125 60  0000 C CNN
	1    10025 4125
	1    0    0    -1  
$EndComp
$EndSCHEMATC
