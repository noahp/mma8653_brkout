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
LIBS:kicadlib
LIBS:mma8652_brkout-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "17 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C2
U 1 1 52D6E4BE
P 4300 3200
F 0 "C2" H 4300 3300 40  0000 L CNN
F 1 "0.1uF" H 4306 3115 40  0000 L CNN
F 2 "~" H 4338 3050 30  0000 C CNN
F 3 "~" H 4300 3200 60  0000 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 52D6E4CB
P 3950 3200
F 0 "C1" H 3950 3300 40  0000 L CNN
F 1 "1uF" H 3956 3115 40  0000 L CNN
F 2 "~" H 3988 3050 30  0000 C CNN
F 3 "~" H 3950 3200 60  0000 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 52D6E4F7
P 3950 3500
F 0 "#PWR01" H 3950 3500 30  0001 C CNN
F 1 "GND" H 3950 3430 30  0001 C CNN
F 2 "" H 3950 3500 60  0000 C CNN
F 3 "" H 3950 3500 60  0000 C CNN
	1    3950 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3500 3950 3400
$Comp
L GND #PWR02
U 1 1 52D6E505
P 4300 3500
F 0 "#PWR02" H 4300 3500 30  0001 C CNN
F 1 "GND" H 4300 3430 30  0001 C CNN
F 2 "" H 4300 3500 60  0000 C CNN
F 3 "" H 4300 3500 60  0000 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3500 4300 3400
Wire Wire Line
	3750 3000 5250 3000
Connection ~ 4300 3000
Text GLabel 3750 3000 0    60   Input ~ 0
VDD
Connection ~ 3950 3000
Text GLabel 7250 3300 2    60   Input ~ 0
VDDIO
Wire Wire Line
	7250 3300 6550 3300
$Comp
L GND #PWR03
U 1 1 52D6E5A6
P 6650 3200
F 0 "#PWR03" H 6650 3200 30  0001 C CNN
F 1 "GND" H 6650 3130 30  0001 C CNN
F 2 "" H 6650 3200 60  0000 C CNN
F 3 "" H 6650 3200 60  0000 C CNN
	1    6650 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6650 3150
Wire Wire Line
	6650 3150 6550 3150
$Comp
L GND #PWR04
U 1 1 52D6E5B3
P 6650 3700
F 0 "#PWR04" H 6650 3700 30  0001 C CNN
F 1 "GND" H 6650 3630 30  0001 C CNN
F 2 "" H 6650 3700 60  0000 C CNN
F 3 "" H 6650 3700 60  0000 C CNN
	1    6650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3450 6550 3450
Wire Wire Line
	6650 3600 6550 3600
Connection ~ 6650 3600
Wire Wire Line
	6650 3450 6650 3700
$Comp
L R R2
U 1 1 52D6E64E
P 6650 2650
F 0 "R2" V 6730 2650 40  0000 C CNN
F 1 "1K" V 6657 2651 40  0000 C CNN
F 2 "~" V 6580 2650 30  0000 C CNN
F 3 "~" H 6650 2650 30  0000 C CNN
	1    6650 2650
	1    0    0    -1  
$EndComp
Text GLabel 7250 3000 2    60   Input ~ 0
SDA
Wire Wire Line
	7250 3000 6550 3000
Wire Wire Line
	6650 2900 6650 3000
Connection ~ 6650 3000
Text GLabel 6550 2300 0    60   Input ~ 0
VDDIO
Wire Wire Line
	6550 2300 6650 2300
Wire Wire Line
	6650 2300 6650 2400
$Comp
L C C3
U 1 1 52D6E6E7
P 4950 3650
F 0 "C3" H 4950 3750 40  0000 L CNN
F 1 "100nF" H 4956 3565 40  0000 L CNN
F 2 "~" H 4988 3500 30  0000 C CNN
F 3 "~" H 4950 3650 60  0000 C CNN
	1    4950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3450 4950 3450
$Comp
L GND #PWR05
U 1 1 52D6E6FF
P 4950 3950
F 0 "#PWR05" H 4950 3950 30  0001 C CNN
F 1 "GND" H 4950 3880 30  0001 C CNN
F 2 "" H 4950 3950 60  0000 C CNN
F 3 "" H 4950 3950 60  0000 C CNN
	1    4950 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3950 4950 3850
Wire Wire Line
	5250 3600 5200 3600
Wire Wire Line
	5200 3600 5200 3950
Text GLabel 5300 3950 2    60   Input ~ 0
INT2
Wire Wire Line
	5200 3950 5300 3950
Wire Wire Line
	5250 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3950
Wire Wire Line
	4550 3850 3750 3850
Text GLabel 3750 3850 0    60   Input ~ 0
SCL
$Comp
L R R1
U 1 1 52D6E7E3
P 4550 4200
F 0 "R1" V 4630 4200 40  0000 C CNN
F 1 "1K" V 4557 4201 40  0000 C CNN
F 2 "~" V 4480 4200 30  0000 C CNN
F 3 "~" H 4550 4200 30  0000 C CNN
	1    4550 4200
	1    0    0    -1  
$EndComp
Connection ~ 4550 3850
Text GLabel 5150 3300 0    60   Input ~ 0
INT1
Wire Wire Line
	5150 3300 5250 3300
Text GLabel 4450 4550 0    60   Input ~ 0
VDDIO
Wire Wire Line
	4450 4550 4550 4550
Wire Wire Line
	4550 4550 4550 4450
Text GLabel 3700 2300 0    60   Input ~ 0
VDD
Text GLabel 4500 2300 2    60   Input ~ 0
VDDIO
$Comp
L JUMPER JP1
U 1 1 52D6E87D
P 4100 2300
F 0 "JP1" H 4100 2450 60  0000 C CNN
F 1 "JUMPER" H 4100 2220 40  0000 C CNN
F 2 "~" H 4100 2300 60  0000 C CNN
F 3 "~" H 4100 2300 60  0000 C CNN
	1    4100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2300 4400 2300
Wire Wire Line
	3800 2300 3700 2300
$Comp
L C C4
U 1 1 52D6E91A
P 7000 3600
F 0 "C4" H 7000 3700 40  0000 L CNN
F 1 "0.1uF" H 7006 3515 40  0000 L CNN
F 2 "~" H 7038 3450 30  0000 C CNN
F 3 "~" H 7000 3600 60  0000 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3400 7000 3300
Connection ~ 7000 3300
$Comp
L GND #PWR06
U 1 1 52D6E940
P 7000 3900
F 0 "#PWR06" H 7000 3900 30  0001 C CNN
F 1 "GND" H 7000 3830 30  0001 C CNN
F 2 "" H 7000 3900 60  0000 C CNN
F 3 "" H 7000 3900 60  0000 C CNN
	1    7000 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3900 7000 3800
Text Notes 4350 5150 0    60   ~ 0
http://www.mouser.com/ds/2/161/MMA8652FC-254149.pdf
$Comp
L MMA8652 U1
U 1 1 52D73DD3
P 5900 3300
F 0 "U1" H 5900 2850 60  0000 C CNN
F 1 "MMA8652" H 5900 3750 60  0000 C CNN
F 2 "~" H 5800 3200 60  0000 C CNN
F 3 "~" H 5800 3200 60  0000 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
$Comp
L TST P1
U 1 1 52D88DCF
P 1700 3150
F 0 "P1" H 1700 3450 40  0000 C CNN
F 1 "VDD" H 1700 3400 30  0000 C CNN
F 2 "~" H 1700 3150 60  0000 C CNN
F 3 "~" H 1700 3150 60  0000 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
Text GLabel 1700 3250 3    60   Input ~ 0
VDD
$Comp
L TST P3
U 1 1 52D88DDE
P 2000 3150
F 0 "P3" H 2000 3450 40  0000 C CNN
F 1 "VDDIO" H 2000 3400 30  0000 C CNN
F 2 "~" H 2000 3150 60  0000 C CNN
F 3 "~" H 2000 3150 60  0000 C CNN
	1    2000 3150
	1    0    0    -1  
$EndComp
Text GLabel 2000 3250 3    60   Input ~ 0
VDDIO
$Comp
L GND #PWR07
U 1 1 52D88DFF
P 1850 3250
F 0 "#PWR07" H 1850 3250 30  0001 C CNN
F 1 "GND" H 1850 3180 30  0001 C CNN
F 2 "" H 1850 3250 60  0000 C CNN
F 3 "" H 1850 3250 60  0000 C CNN
	1    1850 3250
	1    0    0    -1  
$EndComp
$Comp
L TST P2
U 1 1 52D88E11
P 1850 3150
F 0 "P2" H 1850 3450 40  0000 C CNN
F 1 "GND" H 1850 3400 30  0000 C CNN
F 2 "~" H 1850 3150 60  0000 C CNN
F 3 "~" H 1850 3150 60  0000 C CNN
	1    1850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3150 1700 3250
Wire Wire Line
	1850 3250 1850 3150
Wire Wire Line
	2000 3150 2000 3250
Text GLabel 2150 3250 3    60   Input ~ 0
SCL
Text GLabel 2300 3250 3    60   Input ~ 0
SDA
Text GLabel 2450 3250 3    60   Input ~ 0
INT1
Text GLabel 2600 3250 3    60   Input ~ 0
INT2
$Comp
L TST P4
U 1 1 52D88EDB
P 2150 3150
F 0 "P4" H 2150 3450 40  0000 C CNN
F 1 "SCL" H 2150 3400 30  0000 C CNN
F 2 "~" H 2150 3150 60  0000 C CNN
F 3 "~" H 2150 3150 60  0000 C CNN
	1    2150 3150
	1    0    0    -1  
$EndComp
$Comp
L TST P5
U 1 1 52D88EE1
P 2300 3150
F 0 "P5" H 2300 3450 40  0000 C CNN
F 1 "SDA" H 2300 3400 30  0000 C CNN
F 2 "~" H 2300 3150 60  0000 C CNN
F 3 "~" H 2300 3150 60  0000 C CNN
	1    2300 3150
	1    0    0    -1  
$EndComp
$Comp
L TST P6
U 1 1 52D88EE7
P 2450 3150
F 0 "P6" H 2450 3450 40  0000 C CNN
F 1 "INT1" H 2450 3400 30  0000 C CNN
F 2 "~" H 2450 3150 60  0000 C CNN
F 3 "~" H 2450 3150 60  0000 C CNN
	1    2450 3150
	1    0    0    -1  
$EndComp
$Comp
L TST P7
U 1 1 52D88EED
P 2600 3150
F 0 "P7" H 2600 3450 40  0000 C CNN
F 1 "INT2" H 2600 3400 30  0000 C CNN
F 2 "~" H 2600 3150 60  0000 C CNN
F 3 "~" H 2600 3150 60  0000 C CNN
	1    2600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3150 2150 3250
Wire Wire Line
	2300 3250 2300 3150
Wire Wire Line
	2450 3150 2450 3250
Wire Wire Line
	2600 3150 2600 3250
$EndSCHEMATC
