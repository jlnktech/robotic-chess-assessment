EESchema Schematic File Version 4
LIBS:chessBoard_Sensor-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
Title "Chess Sensor Board"
Date "2019-01-01"
Rev "A"
Comp "JLNKTECH Consulting, LLC"
Comment1 "8471 Borealis Rd"
Comment2 "San Diego, CA 92126"
Comment3 "(858)761-2396"
Comment4 ""
$EndDescr
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9E64
P 2400 2000
AR Path="/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9E64" Ref="U1"  Part="1" 
AR Path="/5C2B867D/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9E64" Ref="U19"  Part="1" 
AR Path="/5C2B88AC/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E64" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E64" Ref="U?"  Part="1" 
F 0 "U19" H 2372 2000 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 2373 1947 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 2600 2200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 2300 60  0001 L CNN
F 4 "296-38460-1-ND" H 2600 2400 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 2600 2500 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 2600 2600 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 2600 2700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 2800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 2600 2900 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 2600 3000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 2600 3100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2600 3200 60  0001 L CNN "Status"
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L Analog_ADC:ADC128D818 U?
U 1 1 5C2B9E6D
P 9000 3600
AR Path="/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9E6D" Ref="U9"  Part="1" 
AR Path="/5C2B867D/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9E6D" Ref="U27"  Part="1" 
AR Path="/5C2B88AC/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E6D" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E6D" Ref="U?"  Part="1" 
F 0 "U27" H 9150 4450 50  0000 C CNN
F 1 "ADC128D818" H 9350 4350 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9000 3600 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/adc128d818.pdf" H 9000 3600 50  0001 C CNN
	1    9000 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C2B9E78
P 2500 2400
AR Path="/5C28166F/5C2B9E78" Ref="#PWR0101"  Part="1" 
AR Path="/5C2B867D/5C2B9E78" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9E78" Ref="#PWR034"  Part="1" 
AR Path="/5C2B88AC/5C2B9E78" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E78" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E78" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E78" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E78" Ref="#PWR?"  Part="1" 
F 0 "#PWR034" H 2500 2150 50  0001 C CNN
F 1 "GND" H 2505 2227 50  0000 C CNN
F 2 "" H 2500 2400 50  0001 C CNN
F 3 "" H 2500 2400 50  0001 C CNN
	1    2500 2400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C1
U 1 1 5C290999
P 1900 2050
AR Path="/5C28166F/5C290999" Ref="C1"  Part="1" 
AR Path="/5C2B867D/5C290999" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C290999" Ref="C19"  Part="1" 
AR Path="/5C2B88AC/5C290999" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C290999" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C290999" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C290999" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C290999" Ref="C?"  Part="1" 
F 0 "C19" H 2008 2100 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 2008 2111 45  0001 L CNN
F 2 "0402" H 1900 2300 20  0001 C CNN
F 3 "" H 1900 2050 50  0001 C CNN
F 4 "CAP-12416" H 2008 2058 60  0001 L CNN "Field4"
	1    1900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1600 1900 1600
Wire Wire Line
	1900 1600 1900 1850
$Comp
L power:GND #PWR0102
U 1 1 5C2B9E83
P 1900 2150
AR Path="/5C28166F/5C2B9E83" Ref="#PWR0102"  Part="1" 
AR Path="/5C2B867D/5C2B9E83" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9E83" Ref="#PWR029"  Part="1" 
AR Path="/5C2B88AC/5C2B9E83" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E83" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E83" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E83" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E83" Ref="#PWR?"  Part="1" 
F 0 "#PWR029" H 1900 1900 50  0001 C CNN
F 1 "GND" H 1905 1977 50  0000 C CNN
F 2 "" H 1900 2150 50  0001 C CNN
F 3 "" H 1900 2150 50  0001 C CNN
	1    1900 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1600 2500 1450
Connection ~ 2500 1600
$Comp
L power:+3V3 #PWR0103
U 1 1 5C2B9E8D
P 2500 1450
AR Path="/5C28166F/5C2B9E8D" Ref="#PWR0103"  Part="1" 
AR Path="/5C2B867D/5C2B9E8D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9E8D" Ref="#PWR033"  Part="1" 
AR Path="/5C2B88AC/5C2B9E8D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E8D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E8D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E8D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E8D" Ref="#PWR?"  Part="1" 
F 0 "#PWR033" H 2500 1300 50  0001 C CNN
F 1 "+3V3" H 2515 1623 50  0000 C CNN
F 2 "" H 2500 1450 50  0001 C CNN
F 3 "" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9E93
P 2400 3500
AR Path="/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9E93" Ref="U2"  Part="1" 
AR Path="/5C2B867D/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9E93" Ref="U20"  Part="1" 
AR Path="/5C2B88AC/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E93" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E93" Ref="U?"  Part="1" 
F 0 "U20" H 2372 3500 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 2373 3447 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 2600 3700 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 3800 60  0001 L CNN
F 4 "296-38460-1-ND" H 2600 3900 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 2600 4000 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 2600 4100 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 2600 4200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 4300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 2600 4400 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 2600 4500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 2600 4600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2600 4700 60  0001 L CNN "Status"
	1    2400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5C2B9E97
P 2500 3900
AR Path="/5C28166F/5C2B9E97" Ref="#PWR0104"  Part="1" 
AR Path="/5C2B867D/5C2B9E97" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9E97" Ref="#PWR036"  Part="1" 
AR Path="/5C2B88AC/5C2B9E97" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E97" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E97" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E97" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E97" Ref="#PWR?"  Part="1" 
F 0 "#PWR036" H 2500 3650 50  0001 C CNN
F 1 "GND" H 2505 3727 50  0000 C CNN
F 2 "" H 2500 3900 50  0001 C CNN
F 3 "" H 2500 3900 50  0001 C CNN
	1    2500 3900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C2
U 1 1 5C2B9E9E
P 1900 3550
AR Path="/5C28166F/5C2B9E9E" Ref="C2"  Part="1" 
AR Path="/5C2B867D/5C2B9E9E" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9E9E" Ref="C20"  Part="1" 
AR Path="/5C2B88AC/5C2B9E9E" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9E9E" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9E9E" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9E9E" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9E9E" Ref="C?"  Part="1" 
F 0 "C20" H 2008 3600 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 2008 3611 45  0001 L CNN
F 2 "0402" H 1900 3800 20  0001 C CNN
F 3 "" H 1900 3550 50  0001 C CNN
F 4 "CAP-12416" H 2008 3558 60  0001 L CNN "Field4"
	1    1900 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3100 1900 3100
Wire Wire Line
	1900 3100 1900 3350
$Comp
L power:GND #PWR0105
U 1 1 5C2B9EA4
P 1900 3650
AR Path="/5C28166F/5C2B9EA4" Ref="#PWR0105"  Part="1" 
AR Path="/5C2B867D/5C2B9EA4" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EA4" Ref="#PWR030"  Part="1" 
AR Path="/5C2B88AC/5C2B9EA4" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EA4" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EA4" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EA4" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EA4" Ref="#PWR?"  Part="1" 
F 0 "#PWR030" H 1900 3400 50  0001 C CNN
F 1 "GND" H 1905 3477 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3100 2500 2950
Connection ~ 2500 3100
$Comp
L power:+3V3 #PWR0106
U 1 1 5C2B9EAF
P 2500 2950
AR Path="/5C28166F/5C2B9EAF" Ref="#PWR0106"  Part="1" 
AR Path="/5C2B867D/5C2B9EAF" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EAF" Ref="#PWR035"  Part="1" 
AR Path="/5C2B88AC/5C2B9EAF" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EAF" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EAF" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EAF" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EAF" Ref="#PWR?"  Part="1" 
F 0 "#PWR035" H 2500 2800 50  0001 C CNN
F 1 "+3V3" H 2515 3123 50  0000 C CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9EB6
P 2400 5000
AR Path="/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9EB6" Ref="U3"  Part="1" 
AR Path="/5C2B867D/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9EB6" Ref="U21"  Part="1" 
AR Path="/5C2B88AC/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EB6" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EB6" Ref="U?"  Part="1" 
F 0 "U21" H 2372 5000 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 2373 4947 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 2600 5200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 5300 60  0001 L CNN
F 4 "296-38460-1-ND" H 2600 5400 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 2600 5500 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 2600 5600 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 2600 5700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 5800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 2600 5900 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 2600 6000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 2600 6100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2600 6200 60  0001 L CNN "Status"
	1    2400 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5C2B9EBC
P 2500 5400
AR Path="/5C28166F/5C2B9EBC" Ref="#PWR0107"  Part="1" 
AR Path="/5C2B867D/5C2B9EBC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EBC" Ref="#PWR038"  Part="1" 
AR Path="/5C2B88AC/5C2B9EBC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EBC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EBC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EBC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EBC" Ref="#PWR?"  Part="1" 
F 0 "#PWR038" H 2500 5150 50  0001 C CNN
F 1 "GND" H 2505 5227 50  0000 C CNN
F 2 "" H 2500 5400 50  0001 C CNN
F 3 "" H 2500 5400 50  0001 C CNN
	1    2500 5400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C3
U 1 1 5C2B9EC4
P 1900 5050
AR Path="/5C28166F/5C2B9EC4" Ref="C3"  Part="1" 
AR Path="/5C2B867D/5C2B9EC4" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9EC4" Ref="C21"  Part="1" 
AR Path="/5C2B88AC/5C2B9EC4" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EC4" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EC4" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EC4" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EC4" Ref="C?"  Part="1" 
F 0 "C21" H 2008 5100 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 2008 5111 45  0001 L CNN
F 2 "0402" H 1900 5300 20  0001 C CNN
F 3 "" H 1900 5050 50  0001 C CNN
F 4 "CAP-12416" H 2008 5058 60  0001 L CNN "Field4"
	1    1900 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4600 1900 4600
Wire Wire Line
	1900 4600 1900 4850
$Comp
L power:GND #PWR0108
U 1 1 5C2B9EC6
P 1900 5150
AR Path="/5C28166F/5C2B9EC6" Ref="#PWR0108"  Part="1" 
AR Path="/5C2B867D/5C2B9EC6" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EC6" Ref="#PWR031"  Part="1" 
AR Path="/5C2B88AC/5C2B9EC6" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EC6" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EC6" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EC6" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR031" H 1900 4900 50  0001 C CNN
F 1 "GND" H 1905 4977 50  0000 C CNN
F 2 "" H 1900 5150 50  0001 C CNN
F 3 "" H 1900 5150 50  0001 C CNN
	1    1900 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4600 2500 4450
Connection ~ 2500 4600
$Comp
L power:+3V3 #PWR0109
U 1 1 5C29C880
P 2500 4450
AR Path="/5C28166F/5C29C880" Ref="#PWR0109"  Part="1" 
AR Path="/5C2B867D/5C29C880" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C29C880" Ref="#PWR037"  Part="1" 
AR Path="/5C2B88AC/5C29C880" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C29C880" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C29C880" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C29C880" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C29C880" Ref="#PWR?"  Part="1" 
F 0 "#PWR037" H 2500 4300 50  0001 C CNN
F 1 "+3V3" H 2515 4623 50  0000 C CNN
F 2 "" H 2500 4450 50  0001 C CNN
F 3 "" H 2500 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9EDA
P 2400 6500
AR Path="/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9EDA" Ref="U4"  Part="1" 
AR Path="/5C2B867D/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9EDA" Ref="U22"  Part="1" 
AR Path="/5C2B88AC/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EDA" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EDA" Ref="U?"  Part="1" 
F 0 "U22" H 2372 6500 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 2373 6447 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 2600 6700 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 6800 60  0001 L CNN
F 4 "296-38460-1-ND" H 2600 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 2600 7000 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 2600 7100 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 2600 7200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 2600 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 2600 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 2600 7500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 2600 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2600 7700 60  0001 L CNN "Status"
	1    2400 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C2B9EE0
P 2500 6900
AR Path="/5C28166F/5C2B9EE0" Ref="#PWR0110"  Part="1" 
AR Path="/5C2B867D/5C2B9EE0" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EE0" Ref="#PWR040"  Part="1" 
AR Path="/5C2B88AC/5C2B9EE0" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EE0" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EE0" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EE0" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EE0" Ref="#PWR?"  Part="1" 
F 0 "#PWR040" H 2500 6650 50  0001 C CNN
F 1 "GND" H 2505 6727 50  0000 C CNN
F 2 "" H 2500 6900 50  0001 C CNN
F 3 "" H 2500 6900 50  0001 C CNN
	1    2500 6900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C4
U 1 1 5C2B9EE7
P 1900 6550
AR Path="/5C28166F/5C2B9EE7" Ref="C4"  Part="1" 
AR Path="/5C2B867D/5C2B9EE7" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9EE7" Ref="C22"  Part="1" 
AR Path="/5C2B88AC/5C2B9EE7" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EE7" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EE7" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EE7" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EE7" Ref="C?"  Part="1" 
F 0 "C22" H 2008 6600 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 2008 6611 45  0001 L CNN
F 2 "0402" H 1900 6800 20  0001 C CNN
F 3 "" H 1900 6550 50  0001 C CNN
F 4 "CAP-12416" H 2008 6558 60  0001 L CNN "Field4"
	1    1900 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6100 1900 6100
Wire Wire Line
	1900 6100 1900 6350
$Comp
L power:GND #PWR0111
U 1 1 5C2B9EEE
P 1900 6650
AR Path="/5C28166F/5C2B9EEE" Ref="#PWR0111"  Part="1" 
AR Path="/5C2B867D/5C2B9EEE" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EEE" Ref="#PWR032"  Part="1" 
AR Path="/5C2B88AC/5C2B9EEE" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EEE" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EEE" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EEE" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EEE" Ref="#PWR?"  Part="1" 
F 0 "#PWR032" H 1900 6400 50  0001 C CNN
F 1 "GND" H 1905 6477 50  0000 C CNN
F 2 "" H 1900 6650 50  0001 C CNN
F 3 "" H 1900 6650 50  0001 C CNN
	1    1900 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6100 2500 5950
Connection ~ 2500 6100
$Comp
L power:+3V3 #PWR0112
U 1 1 5C2B9EF5
P 2500 5950
AR Path="/5C28166F/5C2B9EF5" Ref="#PWR0112"  Part="1" 
AR Path="/5C2B867D/5C2B9EF5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EF5" Ref="#PWR039"  Part="1" 
AR Path="/5C2B88AC/5C2B9EF5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EF5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EF5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EF5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EF5" Ref="#PWR?"  Part="1" 
F 0 "#PWR039" H 2500 5800 50  0001 C CNN
F 1 "+3V3" H 2515 6123 50  0000 C CNN
F 2 "" H 2500 5950 50  0001 C CNN
F 3 "" H 2500 5950 50  0001 C CNN
	1    2500 5950
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9EFF
P 4900 2000
AR Path="/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9EFF" Ref="U5"  Part="1" 
AR Path="/5C2B867D/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9EFF" Ref="U23"  Part="1" 
AR Path="/5C2B88AC/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EFF" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EFF" Ref="U?"  Part="1" 
F 0 "U23" H 4872 2000 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 4873 1947 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 5100 2200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 2300 60  0001 L CNN
F 4 "296-38460-1-ND" H 5100 2400 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 5100 2500 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5100 2600 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 5100 2700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 2800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 5100 2900 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 5100 3000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5100 3100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 3200 60  0001 L CNN "Status"
	1    4900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C2B9F06
P 5000 2400
AR Path="/5C28166F/5C2B9F06" Ref="#PWR0113"  Part="1" 
AR Path="/5C2B867D/5C2B9F06" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F06" Ref="#PWR046"  Part="1" 
AR Path="/5C2B88AC/5C2B9F06" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F06" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F06" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F06" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F06" Ref="#PWR?"  Part="1" 
F 0 "#PWR046" H 5000 2150 50  0001 C CNN
F 1 "GND" H 5005 2227 50  0000 C CNN
F 2 "" H 5000 2400 50  0001 C CNN
F 3 "" H 5000 2400 50  0001 C CNN
	1    5000 2400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C5
U 1 1 5C2B9F0E
P 4400 2050
AR Path="/5C28166F/5C2B9F0E" Ref="C5"  Part="1" 
AR Path="/5C2B867D/5C2B9F0E" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9F0E" Ref="C23"  Part="1" 
AR Path="/5C2B88AC/5C2B9F0E" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F0E" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F0E" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F0E" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F0E" Ref="C?"  Part="1" 
F 0 "C23" H 4508 2100 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 4508 2111 45  0001 L CNN
F 2 "0402" H 4400 2300 20  0001 C CNN
F 3 "" H 4400 2050 50  0001 C CNN
F 4 "CAP-12416" H 4508 2058 60  0001 L CNN "Field4"
	1    4400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1600 4400 1600
Wire Wire Line
	4400 1600 4400 1850
$Comp
L power:GND #PWR0114
U 1 1 5C2B9F18
P 4400 2150
AR Path="/5C28166F/5C2B9F18" Ref="#PWR0114"  Part="1" 
AR Path="/5C2B867D/5C2B9F18" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F18" Ref="#PWR041"  Part="1" 
AR Path="/5C2B88AC/5C2B9F18" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F18" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F18" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F18" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F18" Ref="#PWR?"  Part="1" 
F 0 "#PWR041" H 4400 1900 50  0001 C CNN
F 1 "GND" H 4405 1977 50  0000 C CNN
F 2 "" H 4400 2150 50  0001 C CNN
F 3 "" H 4400 2150 50  0001 C CNN
	1    4400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1600 5000 1450
Connection ~ 5000 1600
$Comp
L power:+3V3 #PWR0115
U 1 1 5C2B9F1D
P 5000 1450
AR Path="/5C28166F/5C2B9F1D" Ref="#PWR0115"  Part="1" 
AR Path="/5C2B867D/5C2B9F1D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F1D" Ref="#PWR045"  Part="1" 
AR Path="/5C2B88AC/5C2B9F1D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F1D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F1D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F1D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F1D" Ref="#PWR?"  Part="1" 
F 0 "#PWR045" H 5000 1300 50  0001 C CNN
F 1 "+3V3" H 5015 1623 50  0000 C CNN
F 2 "" H 5000 1450 50  0001 C CNN
F 3 "" H 5000 1450 50  0001 C CNN
	1    5000 1450
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9F21
P 4900 3500
AR Path="/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9F21" Ref="U6"  Part="1" 
AR Path="/5C2B867D/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9F21" Ref="U24"  Part="1" 
AR Path="/5C2B88AC/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F21" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F21" Ref="U?"  Part="1" 
F 0 "U24" H 4872 3500 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 4873 3447 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 5100 3700 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 3800 60  0001 L CNN
F 4 "296-38460-1-ND" H 5100 3900 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 5100 4000 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5100 4100 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 5100 4200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 4300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 5100 4400 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 5100 4500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5100 4600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 4700 60  0001 L CNN "Status"
	1    4900 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5C2B9F2A
P 5000 3900
AR Path="/5C28166F/5C2B9F2A" Ref="#PWR0116"  Part="1" 
AR Path="/5C2B867D/5C2B9F2A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F2A" Ref="#PWR048"  Part="1" 
AR Path="/5C2B88AC/5C2B9F2A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F2A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F2A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F2A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F2A" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 5000 3650 50  0001 C CNN
F 1 "GND" H 5005 3727 50  0000 C CNN
F 2 "" H 5000 3900 50  0001 C CNN
F 3 "" H 5000 3900 50  0001 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C6
U 1 1 5C2B9F32
P 4400 3550
AR Path="/5C28166F/5C2B9F32" Ref="C6"  Part="1" 
AR Path="/5C2B867D/5C2B9F32" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9F32" Ref="C24"  Part="1" 
AR Path="/5C2B88AC/5C2B9F32" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F32" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F32" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F32" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F32" Ref="C?"  Part="1" 
F 0 "C24" H 4508 3600 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 4508 3611 45  0001 L CNN
F 2 "0402" H 4400 3800 20  0001 C CNN
F 3 "" H 4400 3550 50  0001 C CNN
F 4 "CAP-12416" H 4508 3558 60  0001 L CNN "Field4"
	1    4400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 4400 3100
Wire Wire Line
	4400 3100 4400 3350
$Comp
L power:GND #PWR0117
U 1 1 5C2B9F39
P 4400 3650
AR Path="/5C28166F/5C2B9F39" Ref="#PWR0117"  Part="1" 
AR Path="/5C2B867D/5C2B9F39" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F39" Ref="#PWR042"  Part="1" 
AR Path="/5C2B88AC/5C2B9F39" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F39" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F39" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F39" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F39" Ref="#PWR?"  Part="1" 
F 0 "#PWR042" H 4400 3400 50  0001 C CNN
F 1 "GND" H 4405 3477 50  0000 C CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "" H 4400 3650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3100 5000 2950
Connection ~ 5000 3100
$Comp
L power:+3V3 #PWR0118
U 1 1 5C2B9F3D
P 5000 2950
AR Path="/5C28166F/5C2B9F3D" Ref="#PWR0118"  Part="1" 
AR Path="/5C2B867D/5C2B9F3D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F3D" Ref="#PWR047"  Part="1" 
AR Path="/5C2B88AC/5C2B9F3D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F3D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F3D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F3D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F3D" Ref="#PWR?"  Part="1" 
F 0 "#PWR047" H 5000 2800 50  0001 C CNN
F 1 "+3V3" H 5015 3123 50  0000 C CNN
F 2 "" H 5000 2950 50  0001 C CNN
F 3 "" H 5000 2950 50  0001 C CNN
	1    5000 2950
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9F48
P 4900 5000
AR Path="/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9F48" Ref="U7"  Part="1" 
AR Path="/5C2B867D/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9F48" Ref="U25"  Part="1" 
AR Path="/5C2B88AC/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F48" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F48" Ref="U?"  Part="1" 
F 0 "U25" H 4872 5000 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 4873 4947 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 5100 5200 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 5300 60  0001 L CNN
F 4 "296-38460-1-ND" H 5100 5400 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 5100 5500 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5100 5600 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 5100 5700 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 5800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 5100 5900 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 5100 6000 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5100 6100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 6200 60  0001 L CNN "Status"
	1    4900 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5C2B9F51
P 5000 5400
AR Path="/5C28166F/5C2B9F51" Ref="#PWR0119"  Part="1" 
AR Path="/5C2B867D/5C2B9F51" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F51" Ref="#PWR050"  Part="1" 
AR Path="/5C2B88AC/5C2B9F51" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F51" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F51" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F51" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F51" Ref="#PWR?"  Part="1" 
F 0 "#PWR050" H 5000 5150 50  0001 C CNN
F 1 "GND" H 5005 5227 50  0000 C CNN
F 2 "" H 5000 5400 50  0001 C CNN
F 3 "" H 5000 5400 50  0001 C CNN
	1    5000 5400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C7
U 1 1 5C2B9F52
P 4400 5050
AR Path="/5C28166F/5C2B9F52" Ref="C7"  Part="1" 
AR Path="/5C2B867D/5C2B9F52" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9F52" Ref="C25"  Part="1" 
AR Path="/5C2B88AC/5C2B9F52" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F52" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F52" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F52" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F52" Ref="C?"  Part="1" 
F 0 "C25" H 4508 5100 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 4508 5111 45  0001 L CNN
F 2 "0402" H 4400 5300 20  0001 C CNN
F 3 "" H 4400 5050 50  0001 C CNN
F 4 "CAP-12416" H 4508 5058 60  0001 L CNN "Field4"
	1    4400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 4400 4600
Wire Wire Line
	4400 4600 4400 4850
$Comp
L power:GND #PWR0120
U 1 1 5C2B9F5C
P 4400 5150
AR Path="/5C28166F/5C2B9F5C" Ref="#PWR0120"  Part="1" 
AR Path="/5C2B867D/5C2B9F5C" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F5C" Ref="#PWR043"  Part="1" 
AR Path="/5C2B88AC/5C2B9F5C" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F5C" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F5C" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F5C" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR043" H 4400 4900 50  0001 C CNN
F 1 "GND" H 4405 4977 50  0000 C CNN
F 2 "" H 4400 5150 50  0001 C CNN
F 3 "" H 4400 5150 50  0001 C CNN
	1    4400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4600 5000 4450
Connection ~ 5000 4600
$Comp
L power:+3V3 #PWR0121
U 1 1 5C2B9F60
P 5000 4450
AR Path="/5C28166F/5C2B9F60" Ref="#PWR0121"  Part="1" 
AR Path="/5C2B867D/5C2B9F60" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F60" Ref="#PWR049"  Part="1" 
AR Path="/5C2B88AC/5C2B9F60" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F60" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F60" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F60" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F60" Ref="#PWR?"  Part="1" 
F 0 "#PWR049" H 5000 4300 50  0001 C CNN
F 1 "+3V3" H 5015 4623 50  0000 C CNN
F 2 "" H 5000 4450 50  0001 C CNN
F 3 "" H 5000 4450 50  0001 C CNN
	1    5000 4450
	1    0    0    -1  
$EndComp
$Comp
L dk_Magnetic-Sensors-Linear-Compass-ICs:DRV5053VAQDBZR U?
U 1 1 5C2B9F6D
P 4900 6500
AR Path="/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C28166F/5C2B9F6D" Ref="U8"  Part="1" 
AR Path="/5C2B867D/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C2B8792/5C2B9F6D" Ref="U26"  Part="1" 
AR Path="/5C2B88AC/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F6D" Ref="U?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F6D" Ref="U?"  Part="1" 
F 0 "U26" H 4872 6500 60  0000 R CNN
F 1 "DRV5053VAQDBZR" H 4873 6447 60  0001 R CNN
F 2 "w_smd_trans:sot323" H 5100 6700 60  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 6800 60  0001 L CNN
F 4 "296-38460-1-ND" H 5100 6900 60  0001 L CNN "Digi-Key_PN"
F 5 "DRV5053VAQDBZR" H 5100 7000 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5100 7100 60  0001 L CNN "Category"
F 7 "Magnetic Sensors - Linear, Compass (ICs)" H 5100 7200 60  0001 L CNN "Family"
F 8 "http://www.ti.com/lit/ds/symlink/drv5053.pdf" H 5100 7300 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/DRV5053VAQDBZR/296-38460-1-ND/5022225" H 5100 7400 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR LINEAR ANALOG SOT23-3" H 5100 7500 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5100 7600 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 7700 60  0001 L CNN "Status"
	1    4900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5C2B9F71
P 5000 6900
AR Path="/5C28166F/5C2B9F71" Ref="#PWR0122"  Part="1" 
AR Path="/5C2B867D/5C2B9F71" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F71" Ref="#PWR052"  Part="1" 
AR Path="/5C2B88AC/5C2B9F71" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F71" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F71" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F71" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F71" Ref="#PWR?"  Part="1" 
F 0 "#PWR052" H 5000 6650 50  0001 C CNN
F 1 "GND" H 5005 6727 50  0000 C CNN
F 2 "" H 5000 6900 50  0001 C CNN
F 3 "" H 5000 6900 50  0001 C CNN
	1    5000 6900
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C8
U 1 1 5C2B9F76
P 4400 6550
AR Path="/5C28166F/5C2B9F76" Ref="C8"  Part="1" 
AR Path="/5C2B867D/5C2B9F76" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9F76" Ref="C26"  Part="1" 
AR Path="/5C2B88AC/5C2B9F76" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F76" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F76" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F76" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F76" Ref="C?"  Part="1" 
F 0 "C26" H 4508 6600 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 4508 6611 45  0001 L CNN
F 2 "0402" H 4400 6800 20  0001 C CNN
F 3 "" H 4400 6550 50  0001 C CNN
F 4 "CAP-12416" H 4508 6558 60  0001 L CNN "Field4"
	1    4400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6100 4400 6100
Wire Wire Line
	4400 6100 4400 6350
$Comp
L power:GND #PWR0123
U 1 1 5C2B9F7E
P 4400 6650
AR Path="/5C28166F/5C2B9F7E" Ref="#PWR0123"  Part="1" 
AR Path="/5C2B867D/5C2B9F7E" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F7E" Ref="#PWR044"  Part="1" 
AR Path="/5C2B88AC/5C2B9F7E" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F7E" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F7E" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F7E" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR044" H 4400 6400 50  0001 C CNN
F 1 "GND" H 4405 6477 50  0000 C CNN
F 2 "" H 4400 6650 50  0001 C CNN
F 3 "" H 4400 6650 50  0001 C CNN
	1    4400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6100 5000 5950
Connection ~ 5000 6100
$Comp
L power:+3V3 #PWR0124
U 1 1 5C2B9F84
P 5000 5950
AR Path="/5C28166F/5C2B9F84" Ref="#PWR0124"  Part="1" 
AR Path="/5C2B867D/5C2B9F84" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F84" Ref="#PWR051"  Part="1" 
AR Path="/5C2B88AC/5C2B9F84" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F84" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F84" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F84" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F84" Ref="#PWR?"  Part="1" 
F 0 "#PWR051" H 5000 5800 50  0001 C CNN
F 1 "+3V3" H 5015 6123 50  0000 C CNN
F 2 "" H 5000 5950 50  0001 C CNN
F 3 "" H 5000 5950 50  0001 C CNN
	1    5000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5C2B9F8A
P 9000 4400
AR Path="/5C28166F/5C2B9F8A" Ref="#PWR0125"  Part="1" 
AR Path="/5C2B867D/5C2B9F8A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F8A" Ref="#PWR056"  Part="1" 
AR Path="/5C2B88AC/5C2B9F8A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F8A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F8A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F8A" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F8A" Ref="#PWR?"  Part="1" 
F 0 "#PWR056" H 9000 4150 50  0001 C CNN
F 1 "GND" H 9005 4227 50  0000 C CNN
F 2 "" H 9000 4400 50  0001 C CNN
F 3 "" H 9000 4400 50  0001 C CNN
	1    9000 4400
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Capacitors:0.1UF-0402-16V-10% C9
U 1 1 5C2B9F94
P 8400 2450
AR Path="/5C28166F/5C2B9F94" Ref="C9"  Part="1" 
AR Path="/5C2B867D/5C2B9F94" Ref="C?"  Part="1" 
AR Path="/5C2B8792/5C2B9F94" Ref="C27"  Part="1" 
AR Path="/5C2B88AC/5C2B9F94" Ref="C?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F94" Ref="C?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F94" Ref="C?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F94" Ref="C?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F94" Ref="C?"  Part="1" 
F 0 "C27" H 8508 2500 45  0000 L CNN
F 1 "0.1UF-0402-16V-10%" H 8508 2511 45  0001 L CNN
F 2 "0402" H 8400 2700 20  0001 C CNN
F 3 "" H 8400 2450 50  0001 C CNN
F 4 "CAP-12416" H 8508 2458 60  0001 L CNN "Field4"
	1    8400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2000 8400 2000
Wire Wire Line
	8400 2000 8400 2250
$Comp
L power:GND #PWR0126
U 1 1 5C2B9F9D
P 8400 2550
AR Path="/5C28166F/5C2B9F9D" Ref="#PWR0126"  Part="1" 
AR Path="/5C2B867D/5C2B9F9D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9F9D" Ref="#PWR054"  Part="1" 
AR Path="/5C2B88AC/5C2B9F9D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9F9D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9F9D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9F9D" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9F9D" Ref="#PWR?"  Part="1" 
F 0 "#PWR054" H 8400 2300 50  0001 C CNN
F 1 "GND" H 8405 2377 50  0000 C CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "" H 8400 2550 50  0001 C CNN
	1    8400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2000 9000 1850
$Comp
L power:+3V3 #PWR0127
U 1 1 5C2B9FA5
P 9000 1850
AR Path="/5C28166F/5C2B9FA5" Ref="#PWR0127"  Part="1" 
AR Path="/5C2B867D/5C2B9FA5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9FA5" Ref="#PWR055"  Part="1" 
AR Path="/5C2B88AC/5C2B9FA5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9FA5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9FA5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9FA5" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9FA5" Ref="#PWR?"  Part="1" 
F 0 "#PWR055" H 9000 1700 50  0001 C CNN
F 1 "+3V3" H 9015 2023 50  0000 C CNN
F 2 "" H 9000 1850 50  0001 C CNN
F 3 "" H 9000 1850 50  0001 C CNN
	1    9000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 2800 9000 2000
Connection ~ 9000 2000
Wire Wire Line
	8500 3000 6500 3000
Wire Wire Line
	6500 3000 6500 2000
Wire Wire Line
	6500 2000 5500 2000
Wire Wire Line
	8500 3100 6200 3100
Wire Wire Line
	6200 3100 6200 2650
Wire Wire Line
	6200 2650 3500 2650
Wire Wire Line
	3500 2650 3500 2000
Wire Wire Line
	3500 2000 3000 2000
Wire Wire Line
	8500 3200 6200 3200
Wire Wire Line
	6200 3200 6200 3500
Wire Wire Line
	6200 3500 5500 3500
Wire Wire Line
	3000 3500 3000 4150
Wire Wire Line
	3000 4150 6500 4150
Wire Wire Line
	6500 4150 6500 3300
Wire Wire Line
	6500 3300 8500 3300
Wire Wire Line
	6650 5000 5500 5000
Wire Wire Line
	7000 5650 3500 5650
Wire Wire Line
	3500 5650 3500 5000
Wire Wire Line
	3500 5000 3000 5000
Wire Wire Line
	6650 3400 6650 5000
Wire Wire Line
	8500 3400 6650 3400
Wire Wire Line
	8500 3500 7000 3500
Wire Wire Line
	7000 3500 7000 5650
Wire Wire Line
	8500 3600 7150 3600
Wire Wire Line
	7150 3600 7150 6000
Wire Wire Line
	7150 6000 6000 6000
Wire Wire Line
	6000 6000 6000 6500
Wire Wire Line
	5500 6500 6000 6500
Wire Wire Line
	3000 6500 3500 6500
Wire Wire Line
	3500 6500 3500 7300
Wire Wire Line
	3500 7300 6550 7300
Wire Wire Line
	6550 7300 6550 6300
Wire Wire Line
	6550 6300 7350 6300
Wire Wire Line
	7350 6300 7350 3700
Wire Wire Line
	7350 3700 8500 3700
$Comp
L power:GND #PWR0128
U 1 1 5C2B9EFC
P 8350 4300
AR Path="/5C28166F/5C2B9EFC" Ref="#PWR0128"  Part="1" 
AR Path="/5C2B867D/5C2B9EFC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8792/5C2B9EFC" Ref="#PWR053"  Part="1" 
AR Path="/5C2B88AC/5C2B9EFC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B89C6/5C2B9EFC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8A72/5C2B9EFC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8B50/5C2B9EFC" Ref="#PWR?"  Part="1" 
AR Path="/5C2B8CBA/5C2B9EFC" Ref="#PWR?"  Part="1" 
F 0 "#PWR053" H 8350 4050 50  0001 C CNN
F 1 "GND" H 8355 4127 50  0000 C CNN
F 2 "" H 8350 4300 50  0001 C CNN
F 3 "" H 8350 4300 50  0001 C CNN
	1    8350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4100 8350 4100
Wire Wire Line
	8350 4100 8350 4200
Wire Wire Line
	8500 4200 8350 4200
Connection ~ 8350 4200
Wire Wire Line
	8350 4200 8350 4300
Text HLabel 10000 3000 2    50   BiDi ~ 0
SDA2
Text HLabel 10000 3100 2    50   Input ~ 0
SCL2
Wire Wire Line
	10000 3000 9500 3000
Wire Wire Line
	10000 3100 9500 3100
NoConn ~ 8500 3900
Text HLabel 10000 3500 2    50   Output ~ 0
INT2
Wire Wire Line
	10000 3500 9500 3500
Text HLabel 9450 2000 2    50   UnSpc ~ 0
3V3
Wire Wire Line
	9450 2000 9000 2000
Text Notes 7850 5200 0    50   ~ 0
A0       A1        ADDR\n0         0         0x1D\n1         0         0x1F\n0         1         0x35\n1         1         0x37
$EndSCHEMATC
