EESchema Schematic File Version 4
LIBS:snowflake-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5550 2250 6700 2250
Wire Wire Line
	6700 2250 6700 2850
Wire Wire Line
	5550 1950 6700 1950
Wire Wire Line
	6700 1950 6700 1350
$Comp
L Device:Battery_Cell BT1
U 1 1 5DE7F2D8
P 1650 1700
F 0 "BT1" H 1768 1796 50  0000 L CNN
F 1 "Battery_Cell" H 1768 1705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 1650 1760 50  0001 C CNN
F 3 "~" V 1650 1760 50  0001 C CNN
	1    1650 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT4
U 1 1 5DE7FBBF
P 1650 2300
F 0 "BT4" H 1768 2396 50  0000 L CNN
F 1 "Battery_Cell" H 1768 2305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 1650 2360 50  0001 C CNN
F 3 "~" V 1650 2360 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1500 2300 1400
Wire Wire Line
	2300 1400 1650 1400
Wire Wire Line
	1650 1400 1650 1500
Wire Wire Line
	2300 1800 2300 1900
Wire Wire Line
	2300 1900 1650 1900
Wire Wire Line
	1650 1900 1650 1800
$Comp
L Device:Battery_Cell BT2
U 1 1 5DE841C4
P 2300 1700
F 0 "BT2" H 2418 1796 50  0000 L CNN
F 1 "Battery_Cell" H 2418 1705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 2300 1760 50  0001 C CNN
F 3 "~" V 2300 1760 50  0001 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT5
U 1 1 5DE841CA
P 2300 2300
F 0 "BT5" H 2418 2396 50  0000 L CNN
F 1 "Battery_Cell" H 2418 2305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 2300 2360 50  0001 C CNN
F 3 "~" V 2300 2360 50  0001 C CNN
	1    2300 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT3
U 1 1 5DE865A6
P 2950 1700
F 0 "BT3" H 3068 1796 50  0000 L CNN
F 1 "Battery_Cell" H 3068 1705 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 2950 1760 50  0001 C CNN
F 3 "~" V 2950 1760 50  0001 C CNN
	1    2950 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT6
U 1 1 5DE865AC
P 2950 2300
F 0 "BT6" H 3068 2396 50  0000 L CNN
F 1 "Battery_Cell" H 3068 2305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3000_1x12mm" V 2950 2360 50  0001 C CNN
F 3 "~" V 2950 2360 50  0001 C CNN
	1    2950 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DE8FC9F
P 1650 2500
F 0 "#PWR01" H 1650 2250 50  0001 C CNN
F 1 "GND" H 1655 2327 50  0000 C CNN
F 2 "" H 1650 2500 50  0001 C CNN
F 3 "" H 1650 2500 50  0001 C CNN
	1    1650 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1300 4250 1300
Wire Wire Line
	4650 1300 4950 1300
$Comp
L pspice:DIODE D13
U 1 1 5DEB92A8
P 4450 1300
F 0 "D13" H 4450 1565 50  0000 C CNN
F 1 "1N4004" H 4450 1474 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123F" H 4450 1300 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
$Comp
L dk_Slide-Switches:JS202011SCQN S1
U 1 1 5DE4BFA0
P 3900 1600
F 0 "S1" H 3900 2083 50  0000 C CNN
F 1 "JS202011SCQN" H 3900 1992 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 4100 1800 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 4100 1900 60  0001 L CNN
F 4 "401-2002-1-ND" H 4100 2000 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 4100 2100 60  0001 L CNN "MPN"
F 6 "Switches" H 4100 2200 60  0001 L CNN "Category"
F 7 "Slide Switches" H 4100 2300 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 4100 2400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 4100 2500 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 4100 2600 60  0001 L CNN "Description"
F 11 "C&K" H 4100 2700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4100 2800 60  0001 L CNN "Status"
	1    3900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 2350 7750 2350
Wire Wire Line
	7100 2850 8100 2850
Wire Wire Line
	7750 1850 8100 1850
Wire Wire Line
	8100 2350 8450 2350
Wire Wire Line
	8800 1850 8450 1850
Wire Wire Line
	9500 1850 9150 1850
Wire Wire Line
	8450 1350 8800 1350
Wire Wire Line
	8800 2350 9150 2350
Wire Wire Line
	9150 2850 8800 2850
Wire Wire Line
	9500 2850 9150 2850
Wire Wire Line
	9150 1350 9500 1350
Wire Wire Line
	9150 1350 8800 1350
Wire Wire Line
	7400 1350 7750 1350
Wire Wire Line
	7750 1850 7400 1850
Wire Wire Line
	8100 2350 7750 2350
Wire Wire Line
	8450 2850 8100 2850
Wire Wire Line
	6700 1350 6800 1350
Wire Wire Line
	6700 2850 6800 2850
Wire Wire Line
	6800 2150 6800 2350
Wire Wire Line
	5550 2150 6800 2150
Wire Wire Line
	6800 2050 6800 1850
Wire Wire Line
	5550 2050 6800 2050
Connection ~ 8100 2850
$Comp
L Device:R R4
U 1 1 5DE5F7F7
P 6950 2850
F 0 "R4" V 6743 2850 50  0000 C CNN
F 1 "68" V 6834 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 2850 50  0001 C CNN
F 3 "~" H 6950 2850 50  0001 C CNN
	1    6950 2850
	0    1    1    0   
$EndComp
Connection ~ 7750 2350
Connection ~ 7400 1850
Wire Wire Line
	7100 1850 7400 1850
Connection ~ 7400 1350
Wire Wire Line
	7100 1350 7400 1350
$Comp
L Device:R R3
U 1 1 5DE5BC89
P 6950 2350
F 0 "R3" V 6743 2350 50  0000 C CNN
F 1 "68" V 6834 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 2350 50  0001 C CNN
F 3 "~" H 6950 2350 50  0001 C CNN
	1    6950 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DE5B8E1
P 6950 1850
F 0 "R2" V 6743 1850 50  0000 C CNN
F 1 "68" V 6834 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 1850 50  0001 C CNN
F 3 "~" H 6950 1850 50  0001 C CNN
	1    6950 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5DE5B02C
P 6950 1350
F 0 "R1" V 6743 1350 50  0000 C CNN
F 1 "68" V 6834 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6880 1350 50  0001 C CNN
F 3 "~" H 6950 1350 50  0001 C CNN
	1    6950 1350
	0    1    1    0   
$EndComp
Connection ~ 8800 1350
Connection ~ 9150 1350
Connection ~ 9150 2850
Wire Wire Line
	9150 1850 9150 1750
Wire Wire Line
	9500 1750 9500 1850
Wire Wire Line
	9150 1350 9150 1450
Wire Wire Line
	9500 1350 9500 1450
$Comp
L Device:LED D10
U 1 1 5DE594C4
P 9150 1600
F 0 "D10" V 9189 1483 50  0000 R CNN
F 1 "LED" V 9098 1483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9150 1600 50  0001 C CNN
F 3 "~" H 9150 1600 50  0001 C CNN
	1    9150 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D12
U 1 1 5DE594BE
P 9500 1600
F 0 "D12" V 9447 1678 50  0000 L CNN
F 1 "LED" V 9538 1678 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9500 1600 50  0001 C CNN
F 3 "~" H 9500 1600 50  0001 C CNN
	1    9500 1600
	0    1    1    0   
$EndComp
Connection ~ 8100 1850
Wire Wire Line
	8250 1850 8100 1850
Wire Wire Line
	8250 1950 8250 1850
Wire Wire Line
	8800 2850 8800 2750
Wire Wire Line
	9150 2750 9150 2850
Wire Wire Line
	8800 2350 8800 2450
Wire Wire Line
	9150 2350 9150 2450
$Comp
L Device:LED D9
U 1 1 5DE5623D
P 8800 2600
F 0 "D9" V 8839 2483 50  0000 R CNN
F 1 "LED" V 8748 2483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8800 2600 50  0001 C CNN
F 3 "~" H 8800 2600 50  0001 C CNN
	1    8800 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D11
U 1 1 5DE56237
P 9150 2600
F 0 "D11" V 9097 2678 50  0000 L CNN
F 1 "LED" V 9188 2678 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 9150 2600 50  0001 C CNN
F 3 "~" H 9150 2600 50  0001 C CNN
	1    9150 2600
	0    1    1    0   
$EndComp
Connection ~ 8450 2350
Connection ~ 8450 1850
Wire Wire Line
	8450 1850 8450 1750
Wire Wire Line
	8800 1750 8800 1850
Wire Wire Line
	8450 1350 8450 1450
Wire Wire Line
	8800 1350 8800 1450
$Comp
L Device:LED D6
U 1 1 5DE4E7B5
P 8450 1600
F 0 "D6" V 8489 1483 50  0000 R CNN
F 1 "LED" V 8398 1483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8450 1600 50  0001 C CNN
F 3 "~" H 8450 1600 50  0001 C CNN
	1    8450 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 5DE4E7AF
P 8800 1600
F 0 "D8" V 8747 1678 50  0000 L CNN
F 1 "LED" V 8838 1678 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8800 1600 50  0001 C CNN
F 3 "~" H 8800 1600 50  0001 C CNN
	1    8800 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 2850 8100 2750
Wire Wire Line
	8450 2750 8450 2850
Wire Wire Line
	8100 2350 8100 2450
Wire Wire Line
	8450 2350 8450 2450
$Comp
L Device:LED D5
U 1 1 5DE45957
P 8100 2600
F 0 "D5" V 8139 2483 50  0000 R CNN
F 1 "LED" V 8048 2483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8100 2600 50  0001 C CNN
F 3 "~" H 8100 2600 50  0001 C CNN
	1    8100 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5DE45951
P 8450 2600
F 0 "D7" V 8397 2678 50  0000 L CNN
F 1 "LED" V 8488 2678 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8450 2600 50  0001 C CNN
F 3 "~" H 8450 2600 50  0001 C CNN
	1    8450 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 2350 7750 2250
Wire Wire Line
	8100 2250 8100 2350
Wire Wire Line
	7750 1850 7750 1950
Wire Wire Line
	8100 1850 8100 1950
$Comp
L Device:LED D3
U 1 1 5DE44C69
P 7750 2100
F 0 "D3" V 7789 1983 50  0000 R CNN
F 1 "LED" V 7698 1983 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7750 2100 50  0001 C CNN
F 3 "~" H 7750 2100 50  0001 C CNN
	1    7750 2100
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DE44C63
P 8100 2100
F 0 "D4" V 8047 2178 50  0000 L CNN
F 1 "LED" V 8138 2178 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 8100 2100 50  0001 C CNN
F 3 "~" H 8100 2100 50  0001 C CNN
	1    8100 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1850 7400 1750
Wire Wire Line
	7750 1750 7750 1850
Wire Wire Line
	7400 1350 7400 1450
Wire Wire Line
	7750 1350 7750 1450
$Comp
L Device:LED D1
U 1 1 5DE3F8B1
P 7400 1600
F 0 "D1" V 7439 1483 50  0000 R CNN
F 1 "LED" V 7348 1483 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7400 1600 50  0001 C CNN
F 3 "~" H 7400 1600 50  0001 C CNN
	1    7400 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DE3F254
P 7750 1600
F 0 "D2" V 7697 1678 50  0000 L CNN
F 1 "LED" V 7788 1678 50  0000 L CNN
F 2 "LED_SMD:LED_1206_3216Metric" H 7750 1600 50  0001 C CNN
F 3 "~" H 7750 1600 50  0001 C CNN
	1    7750 1600
	0    1    1    0   
$EndComp
Connection ~ 7750 1850
Connection ~ 8100 2350
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 5DE47063
P 4950 2150
F 0 "U1" H 4421 2196 50  0000 R CNN
F 1 "ATtiny85-20PU" H 4421 2105 50  0000 R CNN
F 2 "Package_DIP:DIP-8_W7.62mm_SMDSocket_SmallPads" H 4950 2150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 4950 2150 50  0001 C CNN
	1    4950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1550 4950 1300
$Comp
L Device:R R5
U 1 1 5DE938C4
P 5350 1300
F 0 "R5" V 5143 1300 50  0000 C CNN
F 1 "4k7" V 5234 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 1300 50  0001 C CNN
F 3 "~" H 5350 1300 50  0001 C CNN
	1    5350 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 1300 4950 1300
Connection ~ 4950 1300
Wire Wire Line
	5650 1850 5550 1850
$Comp
L Switch:SW_Push SW1
U 1 1 5DE9A5ED
P 6000 1300
F 0 "SW1" H 6000 1585 50  0000 C CNN
F 1 "SW_Push" H 6000 1494 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KSC6xxJ" H 6000 1500 50  0001 C CNN
F 3 "~" H 6000 1500 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1300 5650 1300
$Comp
L power:GND #PWR02
U 1 1 5DEA7806
P 6250 1550
F 0 "#PWR02" H 6250 1300 50  0001 C CNN
F 1 "GND" H 6255 1377 50  0000 C CNN
F 2 "" H 6250 1550 50  0001 C CNN
F 3 "" H 6250 1550 50  0001 C CNN
	1    6250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1550 6250 1300
Wire Wire Line
	6250 1300 6200 1300
Wire Wire Line
	5650 1850 5650 1300
Connection ~ 5650 1300
Wire Wire Line
	5650 1300 5500 1300
Wire Wire Line
	2300 1400 2950 1400
Wire Wire Line
	2950 1400 2950 1500
Connection ~ 2300 1400
Wire Wire Line
	2300 1900 2950 1900
Wire Wire Line
	2950 1900 2950 1800
Connection ~ 2300 1900
Wire Wire Line
	1650 2100 1650 2000
Wire Wire Line
	1650 2000 2300 2000
Wire Wire Line
	2300 2000 2300 2100
Wire Wire Line
	2300 2000 2950 2000
Wire Wire Line
	2950 2000 2950 2100
Connection ~ 2300 2000
Wire Wire Line
	1650 2400 1650 2500
Wire Wire Line
	1650 2500 2300 2500
Wire Wire Line
	2300 2500 2300 2400
Wire Wire Line
	2300 2500 2950 2500
Wire Wire Line
	2950 2500 2950 2400
Connection ~ 2300 2500
Wire Wire Line
	1650 1900 1650 2000
Connection ~ 1650 1900
Connection ~ 1650 2000
Connection ~ 1650 2500
Wire Wire Line
	2950 1400 3700 1400
Connection ~ 2950 1400
$Comp
L Device:R R6
U 1 1 5DF93F10
P 8800 2150
F 0 "R6" H 8870 2196 50  0000 L CNN
F 1 "0" H 8870 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8730 2150 50  0001 C CNN
F 3 "~" H 8800 2150 50  0001 C CNN
	1    8800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2300 8800 2350
Connection ~ 8800 2350
Wire Wire Line
	8800 1950 8800 2000
Wire Wire Line
	8450 1850 8450 2350
Wire Wire Line
	8500 1950 8250 1950
$Comp
L Device:R R7
U 1 1 5DFA280F
P 8650 1950
F 0 "R7" V 8443 1950 50  0000 C CNN
F 1 "0" V 8534 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8580 1950 50  0001 C CNN
F 3 "~" H 8650 1950 50  0001 C CNN
	1    8650 1950
	0    1    1    0   
$EndComp
Connection ~ 9500 1850
Wire Wire Line
	9500 1850 9500 2850
$Comp
L Device:R R8
U 1 1 5DFBC0E0
P 8450 3150
F 0 "R8" H 8520 3196 50  0000 L CNN
F 1 "0" H 8520 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8380 3150 50  0001 C CNN
F 3 "~" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5DFF84AC
P 7950 1100
F 0 "R9" H 8020 1146 50  0000 L CNN
F 1 "0" H 8020 1055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7880 1100 50  0001 C CNN
F 3 "~" H 7950 1100 50  0001 C CNN
	1    7950 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8450 1350 8450 1100
Wire Wire Line
	8450 1100 8100 1100
Connection ~ 8450 1350
Wire Wire Line
	7800 1100 7400 1100
Wire Wire Line
	7400 1100 7400 1350
$Comp
L Device:R R10
U 1 1 5E006FE1
P 8600 3300
F 0 "R10" H 8670 3346 50  0000 L CNN
F 1 "0" H 8670 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8530 3300 50  0001 C CNN
F 3 "~" H 8600 3300 50  0001 C CNN
	1    8600 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E00A137
P 8750 3150
F 0 "R11" H 8820 3196 50  0000 L CNN
F 1 "0" H 8820 3105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8680 3150 50  0001 C CNN
F 3 "~" H 8750 3150 50  0001 C CNN
	1    8750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2850 8450 3000
Connection ~ 8450 2850
Wire Wire Line
	8800 2850 8800 3000
Wire Wire Line
	8800 3000 8750 3000
Connection ~ 8800 2850
$Comp
L Device:R R12
U 1 1 5E02FBF2
P 4950 3000
F 0 "R12" H 4880 2954 50  0000 R CNN
F 1 "0" H 4880 3045 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4880 3000 50  0001 C CNN
F 3 "~" H 4950 3000 50  0001 C CNN
	1    4950 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4950 2750 4950 2850
$Comp
L power:GND #PWR0101
U 1 1 5DE7B2D0
P 4950 3150
F 0 "#PWR0101" H 4950 2900 50  0001 C CNN
F 1 "GND" H 4955 2977 50  0000 C CNN
F 2 "" H 4950 3150 50  0001 C CNN
F 3 "" H 4950 3150 50  0001 C CNN
	1    4950 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
