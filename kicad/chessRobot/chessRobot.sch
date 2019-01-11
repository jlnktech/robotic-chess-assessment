EESchema Schematic File Version 4
LIBS:chessRobot-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Z-AXIS CONTROL"
Date "2019-01-07"
Rev "A"
Comp "JLNKTECH Consulting"
Comment1 "8471 Borealis Rd"
Comment2 "San Diego, CA 92126"
Comment3 "(858)761-2396"
Comment4 ""
$EndDescr
$Comp
L SparkFun-Resistors:RESISTOR0603 R2
U 1 1 5C34CD07
P 8100 2350
F 0 "R2" H 8050 2550 45  0000 C CNN
F 1 "100, 5%" H 8150 2450 45  0000 C CNN
F 2 "0603" H 8100 2500 20  0001 C CNN
F 3 "" H 8100 2350 60  0001 C CNN
F 4 " " H 8100 2471 60  0000 C CNN "Field4"
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0603 R1
U 1 1 5C34D1C1
P 7700 2700
F 0 "R1" V 7605 2768 45  0000 L CNN
F 1 "10K, 5%" V 7689 2768 45  0000 L CNN
F 2 "0603" H 7700 2850 20  0001 C CNN
F 3 "" H 7700 2700 60  0001 C CNN
F 4 " " V 7784 2768 60  0000 L CNN "Field4"
	1    7700 2700
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 5C34D809
P 7350 2350
F 0 "D1" H 7350 2134 50  0000 C CNN
F 1 "1N4001" H 7350 2225 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7350 2175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7350 2350 50  0001 C CNN
	1    7350 2350
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5C34DECC
P 8550 1550
F 0 "D2" V 8504 1629 50  0000 L CNN
F 1 "1N4001" V 8595 1629 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8550 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8550 1550 50  0001 C CNN
	1    8550 1550
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Arrays:ULN2003AN U1
U 1 1 5C34F348
P 5200 5800
F 0 "U1" H 5150 6487 60  0000 C CNN
F 1 "ULN2003AN" H 5150 6381 60  0000 C CNN
F 2 "digikey-footprints:DIP-16_W7.62mm" H 5400 6000 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5400 6100 60  0001 L CNN
F 4 "296-1979-5-ND" H 5400 6200 60  0001 L CNN "Digi-Key_PN"
F 5 "ULN2003AN" H 5400 6300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 5400 6400 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Arrays" H 5400 6500 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5400 6600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/ULN2003AN/296-1979-5-ND/277624" H 5400 6700 60  0001 L CNN "DK_Detail_Page"
F 10 "IC PWR RELAY 7NPN 1:1 16DIP" H 5400 6800 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5400 6900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5400 7000 60  0001 L CNN "Status"
	1    5200 5800
	1    0    0    -1  
$EndComp
$Comp
L Motor:Stepper_Motor_unipolar_5pin M1
U 1 1 5C350E7B
P 8150 5100
F 0 "M1" H 8338 5224 50  0000 L CNN
F 1 "858" H 8338 5133 50  0000 L CNN
F 2 "" H 8160 5090 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Adafruit%20PDFs/858_Web.pdf" H 8160 5090 50  0001 C CNN
	1    8150 5100
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:47UF-POLAR-EIA3528-10V-10% C2
U 1 1 5C351C18
P 7200 3900
F 0 "C2" H 7328 3892 45  0000 L CNN
F 1 "47UF, 10V" H 7328 3808 45  0000 L CNN
F 2 "EIA3528" H 7200 4150 20  0001 C CNN
F 3 "" H 7200 3900 50  0001 C CNN
F 4 "CAP-08310" H 7328 3766 60  0001 L CNN "Field4"
	1    7200 3900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:47UF-POLAR-EIA3528-10V-10% C3
U 1 1 5C352BC4
P 8200 1150
F 0 "C3" H 8328 1142 45  0000 L CNN
F 1 "47UF, 25V" H 8328 1058 45  0000 L CNN
F 2 "EIA3528" H 8200 1400 20  0001 C CNN
F 3 "" H 8200 1150 50  0001 C CNN
F 4 "CAP-08310" H 8328 1016 60  0001 L CNN "Field4"
	1    8200 1150
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_05JST-VERT J3
U 1 1 5C3531E7
P 7250 5200
F 0 "J3" H 7250 5700 45  0000 C CNN
F 1 "CONN_05JST-VERT" H 7208 5720 45  0001 C CNN
F 2 "JST-5-PTH-VERT" H 7250 5800 20  0001 C CNN
F 3 "" H 7250 5200 50  0001 C CNN
F 4 "XXX-00000" H 7208 5731 60  0001 C CNN "Field4"
	1    7250 5200
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Connectors:CONN_05JST-VERT J2
U 1 1 5C353955
P 6650 5200
F 0 "J2" H 6500 5700 45  0000 R CNN
F 1 "JST B5B" H 6700 5050 45  0000 R CNN
F 2 "B5B-XH-A(LF)(SN)" H 6650 5800 20  0001 C CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/eXH.pdf" H 6650 5200 50  0001 C CNN
F 4 "XXX-00000" H 6422 5316 60  0001 R CNN "Field4"
	1    6650 5200
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 5C3541B3
P 3150 3200
F 0 "J1" H 3200 3617 50  0000 C CNN
F 1 "0430201001" H 3200 3526 50  0000 C CNN
F 2 "" H 3150 3200 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/430201001_sd.pdf" H 3150 3200 50  0001 C CNN
	1    3150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C35A805
P 8200 1350
F 0 "#PWR0101" H 8200 1100 50  0001 C CNN
F 1 "GND" H 8205 1177 50  0000 C CNN
F 2 "" H 8200 1350 50  0001 C CNN
F 3 "" H 8200 1350 50  0001 C CNN
	1    8200 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5C35B297
P 8900 2550
F 0 "#PWR0103" H 8900 2300 50  0001 C CNN
F 1 "GND" H 8905 2377 50  0000 C CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C35B6D0
P 7700 2900
F 0 "#PWR0104" H 7700 2650 50  0001 C CNN
F 1 "GND" H 7705 2727 50  0000 C CNN
F 2 "" H 7700 2900 50  0001 C CNN
F 3 "" H 7700 2900 50  0001 C CNN
	1    7700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 1050 8200 950 
Wire Wire Line
	8200 950  8900 950 
Wire Wire Line
	7900 2350 7700 2350
Wire Wire Line
	7700 2500 7700 2350
Connection ~ 7700 2350
Wire Wire Line
	7700 2350 7500 2350
$Comp
L power:GND #PWR0105
U 1 1 5C35D646
P 7200 4100
F 0 "#PWR0105" H 7200 3850 50  0001 C CNN
F 1 "GND" H 7205 3927 50  0000 C CNN
F 2 "" H 7200 4100 50  0001 C CNN
F 3 "" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C35DB83
P 7550 3700
F 0 "#PWR0106" H 7550 3450 50  0001 C CNN
F 1 "GND" H 7555 3527 50  0000 C CNN
F 2 "" H 7550 3700 50  0001 C CNN
F 3 "" H 7550 3700 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 3500 7550 3500
Wire Wire Line
	7550 3500 7550 3700
Wire Wire Line
	7850 5200 7350 5200
Wire Wire Line
	7950 4800 7350 4800
Wire Wire Line
	7850 5000 7350 5000
Wire Wire Line
	8050 4800 8050 4700
Wire Wire Line
	8050 4700 7750 4700
Wire Wire Line
	7750 4700 7750 4900
Wire Wire Line
	7750 4900 7350 4900
Wire Wire Line
	8250 4600 7600 4600
Wire Wire Line
	7600 4600 7600 5100
Wire Wire Line
	7600 5100 7350 5100
Wire Wire Line
	8250 4600 8250 4800
Text Notes 7700 5200 0    50   ~ 0
blue
Text Notes 7400 4800 0    50   ~ 0
red
Text Notes 7650 4600 0    50   ~ 0
pink
Text Notes 7800 4700 0    50   ~ 0
orange
$Comp
L power:GND #PWR0107
U 1 1 5C363AE1
P 5200 6400
F 0 "#PWR0107" H 5200 6150 50  0001 C CNN
F 1 "GND" H 5205 6227 50  0000 C CNN
F 2 "" H 5200 6400 50  0001 C CNN
F 3 "" H 5200 6400 50  0001 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:1.0UF-0805-25V-10% C1
U 1 1 5C363EF4
P 5400 4800
F 0 "C1" V 5634 4850 45  0000 C CNN
F 1 "1.0UF, 25V" V 5550 4850 45  0000 C CNN
F 2 "0805" H 5400 5050 20  0001 C CNN
F 3 "" H 5400 4800 50  0001 C CNN
F 4 "" H 5508 4766 60  0001 L CNN "Field4"
	1    5400 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 5400 5650 5400
Wire Wire Line
	5650 5400 5650 4800
Wire Wire Line
	5650 4800 6550 4800
$Comp
L power:GND #PWR0108
U 1 1 5C3666C0
P 5150 4850
F 0 "#PWR0108" H 5150 4600 50  0001 C CNN
F 1 "GND" H 5155 4677 50  0000 C CNN
F 2 "" H 5150 4850 50  0001 C CNN
F 3 "" H 5150 4850 50  0001 C CNN
	1    5150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4800 5650 4800
Connection ~ 5650 4800
Wire Wire Line
	5200 4800 5150 4800
Wire Wire Line
	5150 4800 5150 4850
Wire Wire Line
	5750 5500 5750 4900
Wire Wire Line
	5750 4900 6550 4900
Wire Wire Line
	5500 5500 5750 5500
Wire Wire Line
	5500 5600 5850 5600
Wire Wire Line
	5850 5600 5850 5000
Wire Wire Line
	5850 5000 6550 5000
Wire Wire Line
	5500 5700 5950 5700
Wire Wire Line
	5950 5700 5950 5100
Wire Wire Line
	5950 5100 6550 5100
Wire Wire Line
	5500 5800 6050 5800
Wire Wire Line
	6050 5800 6050 5200
Wire Wire Line
	6050 5200 6550 5200
NoConn ~ 4800 6100
NoConn ~ 4800 6000
NoConn ~ 4800 5900
NoConn ~ 5500 5900
NoConn ~ 5500 6000
NoConn ~ 5500 6100
Wire Wire Line
	8200 950  5650 950 
Connection ~ 8200 950 
Wire Wire Line
	2950 3400 2850 3400
Wire Wire Line
	2850 3400 2850 3600
$Comp
L power:GND #PWR0109
U 1 1 5C37B21E
P 2650 3550
F 0 "#PWR0109" H 2650 3300 50  0001 C CNN
F 1 "GND" H 2655 3377 50  0000 C CNN
F 2 "" H 2650 3550 50  0001 C CNN
F 3 "" H 2650 3550 50  0001 C CNN
	1    2650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3300 2650 3300
Wire Wire Line
	2650 3300 2650 3550
Wire Wire Line
	3450 3000 4300 3000
$Comp
L power:GND #PWR0110
U 1 1 5C3832D8
P 1750 3150
F 0 "#PWR0110" H 1750 2900 50  0001 C CNN
F 1 "GND" H 1755 2977 50  0000 C CNN
F 2 "" H 1750 3150 50  0001 C CNN
F 3 "" H 1750 3150 50  0001 C CNN
	1    1750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5500 4500 5500
Wire Wire Line
	4500 5500 4500 3100
Wire Wire Line
	4500 3100 3450 3100
Wire Wire Line
	4800 5600 4300 5600
Wire Wire Line
	4300 5600 4300 3200
Wire Wire Line
	4300 3200 3450 3200
Wire Wire Line
	4800 5700 2500 5700
Wire Wire Line
	2500 5700 2500 3200
Wire Wire Line
	2500 3200 2950 3200
Wire Wire Line
	4800 5800 2350 5800
Wire Wire Line
	2350 5800 2350 3100
Wire Wire Line
	2350 3100 2950 3100
Text Notes 2800 3100 0    50   ~ 0
P8
Text Notes 2800 3200 0    50   ~ 0
P9
Text Notes 3450 3200 0    50   ~ 0
P10
Text Notes 3450 3100 0    50   ~ 0
P11
Text Notes 3450 3300 0    50   ~ 0
A0
Text Notes 3450 3400 0    50   ~ 0
VDD
Text Notes 2800 3400 0    50   ~ 0
VCC
Text Notes 2800 3300 0    50   ~ 0
GND
Text Notes 2800 3000 0    50   ~ 0
P7
Text Notes 3450 3000 0    50   ~ 0
P6
Text Notes 650  3100 0    50   ~ 0
Z-AXIS HOME LIMIT
Text Notes 8050 3600 0    50   ~ 0
GP2Y0A51SK0F\nSHARP DISTANCE SENSOR\n2CM TO 15CM RANGE
Text Notes 7350 5550 0    50   ~ 0
Z-AXIS STEPPER MOTOR\nJST - XHP-5\nPins = SXH-001T-P0.6
Text Notes 9400 1650 0    50   ~ 0
ELECTRO MAGNET\nWF-P25/20
Text Notes 2850 3750 0    50   ~ 0
MICRO-FIT 3mm PLUG
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5C3572E3
P 9200 1550
F 0 "J6" H 9280 1496 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9280 1451 50  0001 L CNN
F 2 "" H 9200 1550 50  0001 C CNN
F 3 "~" H 9200 1550 50  0001 C CNN
	1    9200 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 1550 8900 1550
Wire Wire Line
	8900 950  8900 1350
Wire Wire Line
	9000 1650 8900 1650
Wire Wire Line
	8900 1650 8900 1750
Wire Wire Line
	8550 1400 8550 1350
Wire Wire Line
	8550 1350 8900 1350
Connection ~ 8900 1350
Wire Wire Line
	8900 1350 8900 1550
Wire Wire Line
	8550 1700 8550 1750
Wire Wire Line
	8550 1750 8900 1750
Connection ~ 8900 1750
Wire Wire Line
	8900 1750 8900 1950
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C3656BB
P 1500 3000
F 0 "J4" H 1418 3125 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1580 2901 50  0001 L CNN
F 2 "" H 1500 3000 50  0001 C CNN
F 3 "~" H 1500 3000 50  0001 C CNN
	1    1500 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 3150 1750 3100
Wire Wire Line
	1750 3100 1700 3100
$Comp
L Connector:Screw_Terminal_01x03 J5
U 1 1 5C37651E
P 7800 3500
F 0 "J5" H 7880 3496 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 7880 3451 50  0001 L CNN
F 2 "" H 7800 3500 50  0001 C CNN
F 3 "~" H 7800 3500 50  0001 C CNN
	1    7800 3500
	1    0    0    -1  
$EndComp
Text Notes 7450 3400 0    50   ~ 0
VDD
Text Notes 7250 3600 0    50   ~ 0
OUTPUT
Text Notes 7450 3500 0    50   ~ 0
GND
Text Notes 6300 5200 0    50   ~ 0
blue
Text Notes 7650 5000 0    50   ~ 0
yellow
Text Notes 6300 5000 0    50   ~ 0
yellow
Text Notes 6300 4900 0    50   ~ 0
orange
Text Notes 6300 5100 0    50   ~ 0
pink
Text Notes 6300 4800 0    50   ~ 0
red
Wire Wire Line
	5650 950  5650 3600
Wire Wire Line
	2850 3600 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5650 4800
Wire Wire Line
	3450 3400 7200 3400
Wire Wire Line
	3450 3300 6150 3300
Wire Wire Line
	6150 3300 6150 3600
Wire Wire Line
	6150 3600 7600 3600
Wire Wire Line
	7200 3800 7200 3400
Connection ~ 7200 3400
Wire Wire Line
	7200 3400 7600 3400
$Comp
L dk_Transistors-FETs-MOSFETs-Single:BSS138 Q1
U 1 1 5C35028B
P 8900 2250
F 0 "Q1" H 9062 2303 60  0000 L CNN
F 1 "LR120" H 9062 2197 60  0000 L CNN
F 2 "w_smd_trans:d2-pak" H 9100 2450 60  0001 L CNN
F 3 "" H 9100 2550 60  0001 L CNN
F 4 "" H 9100 2650 60  0001 L CNN "Digi-Key_PN"
F 5 "" H 9100 2750 60  0001 L CNN "MPN"
F 6 "" H 9100 2850 60  0001 L CNN "Category"
F 7 "" H 9100 2950 60  0001 L CNN "Family"
F 8 "" H 9100 3050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "" H 9100 3150 60  0001 L CNN "DK_Detail_Page"
F 10 "" H 9100 3250 60  0001 L CNN "Description"
F 11 "" H 9100 3350 60  0001 L CNN "Manufacturer"
F 12 "" H 9100 3450 60  0001 L CNN "Status"
	1    8900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2350 8300 2350
Wire Wire Line
	4300 2350 7200 2350
Wire Wire Line
	4300 2350 4300 3000
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5C35E8DF
P 1500 3600
F 0 "J7" H 1418 3725 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1580 3501 50  0001 L CNN
F 2 "" H 1500 3600 50  0001 C CNN
F 3 "~" H 1500 3600 50  0001 C CNN
	1    1500 3600
	-1   0    0    -1  
$EndComp
Text Notes 650  3700 0    50   ~ 0
Y-AXIS HOME LIMIT
Wire Wire Line
	1700 3000 2100 3000
Wire Wire Line
	1700 3600 2100 3600
Wire Wire Line
	2100 3600 2100 3000
Connection ~ 2100 3000
Wire Wire Line
	2100 3000 2950 3000
$Comp
L power:GND #PWR01
U 1 1 5C3630CB
P 1750 3750
F 0 "#PWR01" H 1750 3500 50  0001 C CNN
F 1 "GND" H 1755 3577 50  0000 C CNN
F 2 "" H 1750 3750 50  0001 C CNN
F 3 "" H 1750 3750 50  0001 C CNN
	1    1750 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3700 1750 3700
Wire Wire Line
	1750 3700 1750 3750
Text Notes 2950 3600 0    50   ~ 0
STEPPER POWER (+5V TO +12V)
Text Notes 6300 3400 0    50   ~ 0
SENSOR POWER (+5V)
Text Notes 5950 2350 0    50   ~ 0
ELECTRO MAGNET CONTROL
Text Notes 1750 2950 0    50   ~ 0
NORMALLY OPEN SWITCH
$EndSCHEMATC