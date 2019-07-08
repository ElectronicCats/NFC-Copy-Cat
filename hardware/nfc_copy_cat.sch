EESchema Schematic File Version 4
LIBS:placa inventors house 1-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "nfc con maxpoff"
Date "2019-06-24"
Rev ""
Comp "electronic cats"
Comment1 "Juan Eduardo Rangel Macias "
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MagSpoofTC-cache:TC4424 U3
U 1 1 5D103460
P 10000 1130
F 0 "U3" H 10000 1667 60  0000 C CNN
F 1 "TC4424" H 10000 1561 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 10000 1130 60  0000 C CNN
F 3 "" H 10000 1130 60  0000 C CNN
	1    10000 1130
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D106D67
P 880 1080
F 0 "J1" H 937 1547 50  0000 C CNN
F 1 "USB_B_Micro" H 937 1456 50  0000 C CNN
F 2 "Connectors_EC:629105150521" H 1030 1030 50  0001 C CNN
F 3 "~" H 1030 1030 50  0001 C CNN
	1    880  1080
	1    0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR05
U 1 1 5D10AE94
P 830 1580
F 0 "#PWR05" H 830 1330 50  0001 C CNN
F 1 "GND" H 835 1407 50  0000 C CNN
F 2 "" H 830 1580 50  0000 C CNN
F 3 "" H 830 1580 50  0000 C CNN
	1    830  1580
	1    0    0    -1  
$EndComp
Wire Wire Line
	780  1480 830  1480
Wire Wire Line
	830  1480 830  1580
Connection ~ 830  1480
Wire Wire Line
	830  1480 880  1480
Text Label 1180 1080 0    50   ~ 0
D+
Text Label 1180 1180 0    50   ~ 0
D-
Text Label 7700 3920 0    50   ~ 0
D+
Text Label 7700 3820 0    50   ~ 0
D-
$Comp
L MagSpoofTC-cache:GND #PWR010
U 1 1 5D10E10D
P 5380 3860
F 0 "#PWR010" H 5380 3610 50  0001 C CNN
F 1 "GND" H 5380 3710 50  0000 C CNN
F 2 "" H 5380 3860 50  0000 C CNN
F 3 "" H 5380 3860 50  0000 C CNN
	1    5380 3860
	0    1    -1   0   
$EndComp
Wire Wire Line
	5380 3860 5410 3860
Text Label 5380 1220 2    50   ~ 0
RESET
Wire Wire Line
	5380 1220 5430 1220
Text Label 7550 1720 0    50   ~ 0
IN_A
Text Label 7550 1820 0    50   ~ 0
IN_B
Text Label 7550 2920 0    50   ~ 0
11(MOSI)
Text Label 7550 3020 0    50   ~ 0
13(SCK)
Text Label 7550 3120 0    50   ~ 0
10(SS)
Text Label 7550 3220 0    50   ~ 0
12(MISO)
$Comp
L Device:C_Small C4
U 1 1 5D11FCB0
P 10800 1230
F 0 "C4" H 10892 1276 50  0000 L CNN
F 1 "0.1UF" H 10892 1185 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10800 1230 50  0001 C CNN
F 3 "~" H 10800 1230 50  0001 C CNN
	1    10800 1230
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5D12051B
P 10620 610
F 0 "J5" H 10700 602 50  0000 L CNN
F 1 "Conn_01x02" H 10700 511 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10620 610 50  0001 C CNN
F 3 "~" H 10620 610 50  0001 C CNN
	1    10620 610 
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 5D1211D3
P 3030 1260
F 0 "D1" V 3076 1192 50  0000 R CNN
F 1 "LED_Small" V 2985 1192 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3030 1260 50  0001 C CNN
F 3 "~" V 3030 1260 50  0001 C CNN
	1    3030 1260
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5D122FF1
P 3030 1010
F 0 "R1" H 3089 1056 50  0000 L CNN
F 1 "330" H 3089 965 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3030 1010 50  0001 C CNN
F 3 "~" H 3030 1010 50  0001 C CNN
	1    3030 1010
	-1   0    0    1   
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR018
U 1 1 5D1235CB
P 3030 860
F 0 "#PWR018" H 3030 610 50  0001 C CNN
F 1 "GND" H 3035 687 50  0000 C CNN
F 2 "" H 3030 860 50  0000 C CNN
F 3 "" H 3030 860 50  0000 C CNN
	1    3030 860 
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5D123E1A
P 3030 1410
F 0 "#PWR017" H 3030 1260 50  0001 C CNN
F 1 "+3.3V" H 3045 1583 50  0000 C CNN
F 2 "" H 3030 1410 50  0001 C CNN
F 3 "" H 3030 1410 50  0001 C CNN
	1    3030 1410
	-1   0    0    1   
$EndComp
Wire Wire Line
	3030 1410 3030 1360
Wire Wire Line
	3030 1160 3030 1110
Wire Wire Line
	3030 910  3030 860 
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 5D10E2FA
P 10580 2080
F 0 "J4" H 10660 2072 50  0000 L CNN
F 1 "Conn_01x08" H 10660 1981 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 10580 2080 50  0001 C CNN
F 3 "~" H 10580 2080 50  0001 C CNN
	1    10580 2080
	1    0    0    -1  
$EndComp
Text Label 10380 1780 2    50   ~ 0
13(SCK)
Text Label 10380 1880 2    50   ~ 0
12(MISO)
Text Label 10380 1980 2    50   ~ 0
11(MOSI)
Text Label 10380 2080 2    50   ~ 0
10(SS)
$Comp
L MagSpoofTC-cache:GND #PWR014
U 1 1 5D111E6A
P 10380 2280
F 0 "#PWR014" H 10380 2030 50  0001 C CNN
F 1 "GND" V 10385 2152 50  0000 R CNN
F 2 "" H 10380 2280 50  0000 C CNN
F 3 "" H 10380 2280 50  0000 C CNN
	1    10380 2280
	0    1    1    0   
$EndComp
Text Label 10380 2380 2    50   ~ 0
IRQ
Text Label 10500 1030 0    50   ~ 0
OUTA
Text Label 10420 610  2    50   ~ 0
OUTA
Text Label 10500 1330 0    50   ~ 0
OUTB
Text Label 10420 710  2    50   ~ 0
OUTB
Text Label 9500 1030 2    50   ~ 0
IN_A
Text Label 9500 1330 2    50   ~ 0
IN_B
$Comp
L MagSpoofTC-cache:GND #PWR016
U 1 1 5D10F11B
P 9500 1180
F 0 "#PWR016" H 9500 930 50  0001 C CNN
F 1 "GND" V 9505 1052 50  0000 R CNN
F 2 "" H 9500 1180 50  0000 C CNN
F 3 "" H 9500 1180 50  0000 C CNN
	1    9500 1180
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5D10F76C
P 10800 1130
F 0 "#PWR019" H 10800 980 50  0001 C CNN
F 1 "+3.3V" H 10815 1303 50  0000 C CNN
F 2 "" H 10800 1130 50  0001 C CNN
F 3 "" H 10800 1130 50  0001 C CNN
	1    10800 1130
	1    0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR020
U 1 1 5D11661F
P 10800 1330
F 0 "#PWR020" H 10800 1080 50  0001 C CNN
F 1 "GND" H 10805 1157 50  0000 C CNN
F 2 "" H 10800 1330 50  0000 C CNN
F 3 "" H 10800 1330 50  0000 C CNN
	1    10800 1330
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1180 10500 1130
Wire Wire Line
	10500 1130 10800 1130
Connection ~ 10800 1130
$Comp
L Device:Polyfuse F1
U 1 1 5D119569
P 1330 880
F 0 "F1" V 1105 880 50  0000 C CNN
F 1 "Polyfuse" V 1196 880 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1380 680 50  0001 L CNN
F 3 "~" H 1330 880 50  0001 C CNN
F 4 "MFU0805FF00500P100" V 1330 880 50  0001 C CNN "manf#"
	1    1330 880 
	0    1    1    0   
$EndComp
Text Label 7500 4220 0    50   ~ 0
SWCLK
Text Label 7500 4320 0    50   ~ 0
SWDIO
$Comp
L Connector_Generic:Conn_02x02_Counter_Clockwise J3
U 1 1 5D11C622
P 10500 2970
F 0 "J3" H 10550 3187 50  0000 C CNN
F 1 "Conn_02x02_Counter_Clockwise" H 10550 3096 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical_SMD" H 10500 2970 50  0001 C CNN
F 3 "~" H 10500 2970 50  0001 C CNN
	1    10500 2970
	1    0    0    -1  
$EndComp
Text Label 10800 3070 0    50   ~ 0
SWCLK
Text Label 10300 3070 2    50   ~ 0
SWDIO
$Comp
L MagSpoofTC-cache:GND #PWR09
U 1 1 5D11E265
P 11100 2970
F 0 "#PWR09" H 11100 2720 50  0001 C CNN
F 1 "GND" V 11105 2842 50  0000 R CNN
F 2 "" H 11100 2970 50  0000 C CNN
F 3 "" H 11100 2970 50  0000 C CNN
	1    11100 2970
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5D11ED43
P 9920 2930
F 0 "#PWR07" H 9920 2780 50  0001 C CNN
F 1 "+3.3V" V 9935 3058 50  0000 L CNN
F 2 "" H 9920 2930 50  0001 C CNN
F 3 "" H 9920 2930 50  0001 C CNN
	1    9920 2930
	1    0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR02
U 1 1 5D1214CD
P 840 2650
F 0 "#PWR02" H 840 2400 50  0001 C CNN
F 1 "GND" H 845 2477 50  0000 C CNN
F 2 "" H 840 2650 50  0000 C CNN
F 3 "" H 840 2650 50  0000 C CNN
	1    840  2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1040 2250 1040 2450
Wire Wire Line
	1040 2450 1190 2450
$Comp
L Device:C C5
U 1 1 5D12348A
P 840 2500
F 0 "C5" H 955 2546 50  0000 L CNN
F 1 "1uf" H 955 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 878 2350 50  0001 C CNN
F 3 "~" H 840 2500 50  0001 C CNN
	1    840  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1040 2250 940  2250
Wire Wire Line
	840  2350 940  2350
Wire Wire Line
	940  2350 940  2250
$Comp
L MagSpoofTC-cache:GND #PWR04
U 1 1 5D128118
P 2440 2800
F 0 "#PWR04" H 2440 2550 50  0001 C CNN
F 1 "GND" H 2445 2627 50  0000 C CNN
F 2 "" H 2440 2800 50  0000 C CNN
F 3 "" H 2440 2800 50  0000 C CNN
	1    2440 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2440 2550 2440 2650
Wire Wire Line
	2190 2650 2440 2650
Connection ~ 2440 2650
Wire Wire Line
	2440 2650 2440 2800
Wire Bus Line
	2570 480  2550 480 
Wire Bus Line
	2550 480  2550 1830
Wire Bus Line
	470  1830 1830 1830
Wire Bus Line
	2700 1830 2700 2990
Wire Bus Line
	2700 2990 470  2990
Connection ~ 2550 1830
Wire Bus Line
	9090 470  9090 1590
Wire Bus Line
	9090 1590 9880 1590
Wire Bus Line
	1830 470  1830 1830
Connection ~ 1830 1830
Wire Bus Line
	1830 1830 2550 1830
Wire Bus Line
	9880 1590 9880 2590
Wire Bus Line
	9880 2590 11220 2590
Connection ~ 9880 1590
Wire Bus Line
	9880 1590 11220 1590
Wire Bus Line
	9880 2590 9880 3200
Wire Bus Line
	9880 3200 11220 3200
Connection ~ 9880 2590
Wire Bus Line
	9880 3190 9880 3200
Connection ~ 9880 3200
Wire Wire Line
	5000 2170 4950 2170
Connection ~ 4450 2170
Wire Wire Line
	4250 2170 4450 2170
$Comp
L MagSpoofTC-cache:GND #PWR012
U 1 1 5D10A231
P 4450 2170
F 0 "#PWR012" H 4450 1920 50  0001 C CNN
F 1 "GND" H 4455 1997 50  0000 C CNN
F 2 "" H 4450 2170 50  0000 C CNN
F 3 "" H 4450 2170 50  0000 C CNN
	1    4450 2170
	-1   0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR011
U 1 1 5D10A9A0
P 5000 2170
F 0 "#PWR011" H 5000 1920 50  0001 C CNN
F 1 "GND" H 5005 1997 50  0000 C CNN
F 2 "" H 5000 2170 50  0000 C CNN
F 3 "" H 5000 2170 50  0000 C CNN
	1    5000 2170
	-1   0    0    -1  
$EndComp
Connection ~ 4950 1720
Connection ~ 4950 1920
Wire Wire Line
	4950 1720 4950 1920
Wire Wire Line
	4950 1920 4950 1970
$Comp
L Device:C_Small c3
U 1 1 5D106941
P 4250 2070
F 0 "c3" H 4342 2116 50  0000 L CNN
F 1 "0.1uf" H 4342 2025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 2070 50  0001 C CNN
F 3 "~" H 4250 2070 50  0001 C CNN
	1    4250 2070
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small c1
U 1 1 5D1030E9
P 4950 2070
F 0 "c1" H 5042 2116 50  0000 L CNN
F 1 "0.1uf" H 5042 2025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4950 2070 50  0001 C CNN
F 3 "~" H 4950 2070 50  0001 C CNN
	1    4950 2070
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4950 1720 4250 1720
Connection ~ 4250 1720
Wire Wire Line
	4250 1720 4250 1970
Wire Wire Line
	4950 1920 5240 1920
Wire Wire Line
	5170 1720 5170 1640
Wire Wire Line
	5170 1640 5430 1640
Wire Wire Line
	4950 1720 5170 1720
Wire Bus Line
	3290 470  3290 1830
Wire Bus Line
	2550 1830 2700 1830
Connection ~ 2700 1830
Wire Bus Line
	2700 1830 3290 1830
Wire Bus Line
	2700 2990 2700 4910
Wire Bus Line
	2700 4910 9880 4910
Connection ~ 2700 2990
Wire Wire Line
	2210 1400 2210 1450
$Comp
L MagSpoofTC-cache:GND #PWR08
U 1 1 5D116DE8
P 2210 1450
F 0 "#PWR08" H 2210 1200 50  0001 C CNN
F 1 "GND" H 2215 1277 50  0000 C CNN
F 2 "" H 2210 1450 50  0000 C CNN
F 3 "" H 2210 1450 50  0000 C CNN
	1    2210 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2210 900  2210 1000
Text Label 2210 900  1    50   ~ 0
RESET
$Comp
L Switch:SW_DPST_x2 SW1
U 1 1 5D1166AC
P 2210 1200
F 0 "SW1" H 2210 1435 50  0000 C CNN
F 1 "SW_DPST_x2" H 2210 1344 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 2210 1200 50  0001 C CNN
F 3 "~" H 2210 1200 50  0001 C CNN
	1    2210 1200
	0    -1   1    0   
$EndComp
Wire Wire Line
	5410 3860 5410 4060
Wire Wire Line
	5410 4060 5430 4060
Connection ~ 5410 3860
Wire Wire Line
	5410 3860 5430 3860
Wire Bus Line
	9880 3200 9880 4910
Wire Wire Line
	11100 2970 10800 2970
$Comp
L Device:D_Schottky D2
U 1 1 5D130FF3
P 1150 2100
F 0 "D2" H 1150 2316 50  0000 C CNN
F 1 "D_Schottky" H 1150 2225 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1150 2100 50  0001 C CNN
F 3 "~" H 1150 2100 50  0001 C CNN
	1    1150 2100
	0    -1   -1   0   
$EndComp
Text Label 1150 1950 0    50   ~ 0
BAT
$Comp
L MagSpoofTC-cache:GND #PWR022
U 1 1 5D13A5F9
P 910 3700
F 0 "#PWR022" H 910 3450 50  0001 C CNN
F 1 "GND" H 915 3527 50  0000 C CNN
F 2 "" H 910 3700 50  0000 C CNN
F 3 "" H 910 3700 50  0000 C CNN
	1    910  3700
	1    0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR023
U 1 1 5D13B216
P 2180 4550
F 0 "#PWR023" H 2180 4300 50  0001 C CNN
F 1 "GND" H 2185 4377 50  0000 C CNN
F 2 "" H 2180 4550 50  0000 C CNN
F 3 "" H 2180 4550 50  0000 C CNN
	1    2180 4550
	1    0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR024
U 1 1 5D13B45D
P 1230 4270
F 0 "#PWR024" H 1230 4020 50  0001 C CNN
F 1 "GND" H 1235 4097 50  0000 C CNN
F 2 "" H 1230 4270 50  0000 C CNN
F 3 "" H 1230 4270 50  0000 C CNN
	1    1230 4270
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D13B72D
P 2310 3560
F 0 "R2" H 2380 3606 50  0000 L CNN
F 1 "R" H 2380 3515 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2240 3560 50  0001 C CNN
F 3 "~" H 2310 3560 50  0001 C CNN
	1    2310 3560
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D13C5F3
P 1150 4020
F 0 "R3" V 1357 4020 50  0000 C CNN
F 1 "R" V 1266 4020 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1080 4020 50  0001 C CNN
F 3 "~" H 1150 4020 50  0001 C CNN
	1    1150 4020
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C7
U 1 1 5D13C8B3
P 2180 4400
F 0 "C7" H 2295 4446 50  0000 L CNN
F 1 "C" H 2295 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2218 4250 50  0001 C CNN
F 3 "~" H 2180 4400 50  0001 C CNN
	1    2180 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5D13D233
P 910 3550
F 0 "C8" H 1025 3596 50  0000 L CNN
F 1 "C" H 1025 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 948 3400 50  0001 C CNN
F 3 "~" H 910 3550 50  0001 C CNN
	1    910  3550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D1404B5
P 2310 3860
F 0 "D3" V 2349 3743 50  0000 R CNN
F 1 "LED" V 2258 3743 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2310 3860 50  0001 C CNN
F 3 "~" H 2310 3860 50  0001 C CNN
	1    2310 3860
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 4020 2310 4020
Wire Wire Line
	2310 4020 2310 4010
Wire Wire Line
	1700 3410 2310 3410
Wire Wire Line
	1520 3400 910  3400
Wire Wire Line
	2100 3820 2180 3820
Wire Wire Line
	2180 3820 2180 4250
Text Label 2180 4170 0    50   ~ 0
BAT
Wire Wire Line
	1700 3410 1520 3410
Wire Wire Line
	1520 3410 1520 3400
Connection ~ 1700 3410
Wire Wire Line
	1700 4220 1700 4270
Wire Wire Line
	1700 4270 1230 4270
Wire Wire Line
	1000 4020 1000 4270
Wire Wire Line
	990  4270 1000 4270
Connection ~ 1230 4270
Wire Bus Line
	2700 4910 470  4910
Connection ~ 2700 4910
$Comp
L MagSpoofTC-cache:GND #PWR025
U 1 1 5D1A3850
P 1870 4540
F 0 "#PWR025" H 1870 4290 50  0001 C CNN
F 1 "GND" H 1875 4367 50  0000 C CNN
F 2 "" H 1870 4540 50  0000 C CNN
F 3 "" H 1870 4540 50  0000 C CNN
	1    1870 4540
	1    0    0    -1  
$EndComp
Text Label 1870 4440 0    50   ~ 0
BAT
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D1A1248
P 1670 4540
F 0 "J2" H 1588 4215 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1588 4306 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1670 4540 50  0001 C CNN
F 3 "~" H 1670 4540 50  0001 C CNN
	1    1670 4540
	-1   0    0    1   
$EndComp
Connection ~ 1000 4270
Wire Wire Line
	1000 4270 1230 4270
NoConn ~ 7500 1620
NoConn ~ 1180 1280
NoConn ~ 7500 1120
NoConn ~ 7500 1220
NoConn ~ 7500 1420
NoConn ~ 7500 1520
NoConn ~ 7500 3620
NoConn ~ 7500 3720
NoConn ~ 7500 2720
NoConn ~ 7500 2820
NoConn ~ 10380 2480
NoConn ~ 10500 880 
NoConn ~ 9500 880 
NoConn ~ 7500 2020
NoConn ~ 7500 2120
NoConn ~ 7500 2220
NoConn ~ 7500 2320
Wire Wire Line
	7500 3920 7700 3920
Wire Wire Line
	7700 3820 7500 3820
Wire Wire Line
	7550 3220 7500 3220
Wire Wire Line
	7500 3120 7550 3120
Wire Wire Line
	7550 3020 7500 3020
Wire Wire Line
	7500 2920 7550 2920
Wire Wire Line
	7500 1820 7550 1820
Wire Wire Line
	7500 1720 7550 1720
$Comp
L electroniccats:ATSAMD21E18A U4
U 1 1 5D120B36
P 6100 2720
F 0 "U4" H 6465 4574 45  0000 C CNN
F 1 "ATSAMD21E18A" H 6465 4490 45  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 6130 2870 20  0001 C CNN
F 3 "https://www.mouser.mx/datasheet/2/268/SAM-D21-Family-Datasheet-DS40001882C-1381353.pdf" H 6100 2720 60  0001 C CNN
	1    6100 2720
	1    0    0    -1  
$EndComp
$Comp
L croketa:AP2112K-3.3TRG1 U1
U 1 1 5D11FC1B
P 1690 2450
F 0 "U1" H 1690 2920 50  0000 C CNN
F 1 "AP2112K-3.3TRG1" H 1690 2829 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 1690 2450 50  0001 L BNN
F 3 "" H 1690 2450 50  0001 L BNN
F 4 "Diodes Inc." H 1690 2450 50  0001 L BNN "Campo4"
F 5 "SOT-753 Diodes Inc." H 1690 2450 50  0001 L BNN "Campo5"
F 6 "None" H 1690 2450 50  0001 L BNN "Campo6"
F 7 "Unavailable" H 1690 2450 50  0001 L BNN "Campo7"
F 8 "AP2112 Series 0.6 A 3.3 V Fixed Output SMT LDO Linear Regulator - SOT23-5" H 1690 2450 50  0001 L BNN "Campo8"
	1    1690 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3620 1700 3410
$Comp
L MagSpoofTC-cache:VCC #PWR06
U 1 1 5D11AC9C
P 1480 880
F 0 "#PWR06" H 1480 730 50  0001 C CNN
F 1 "VCC" V 1497 1008 50  0000 L CNN
F 2 "" H 1480 880 50  0000 C CNN
F 3 "" H 1480 880 50  0000 C CNN
	1    1480 880 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D127893
P 2440 2400
F 0 "C6" H 2555 2446 50  0000 L CNN
F 1 "C" H 2555 2355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2478 2250 50  0001 C CNN
F 3 "~" H 2440 2400 50  0001 C CNN
	1    2440 2400
	1    0    0    -1  
$EndComp
Connection ~ 2340 2250
Wire Wire Line
	2440 2250 2340 2250
Wire Wire Line
	2340 2150 2340 2250
$Comp
L power:+3.3V #PWR03
U 1 1 5D127046
P 2340 2150
F 0 "#PWR03" H 2340 2000 50  0001 C CNN
F 1 "+3.3V" H 2355 2323 50  0000 C CNN
F 2 "" H 2340 2150 50  0001 C CNN
F 3 "" H 2340 2150 50  0001 C CNN
	1    2340 2150
	1    0    0    -1  
$EndComp
Connection ~ 910  3400
Wire Wire Line
	910  3320 910  3400
$Comp
L MagSpoofTC-cache:VCC #PWR021
U 1 1 5D139EE0
P 910 3320
F 0 "#PWR021" H 910 3170 50  0001 C CNN
F 1 "VCC" H 927 3493 50  0000 C CNN
F 2 "" H 910 3320 50  0000 C CNN
F 3 "" H 910 3320 50  0000 C CNN
	1    910  3320
	1    0    0    -1  
$EndComp
Wire Wire Line
	5240 1920 5240 1510
Wire Wire Line
	5240 1510 5430 1510
$Comp
L power:+3.3V #PWR013
U 1 1 5D1101C2
P 10380 2180
F 0 "#PWR013" H 10380 2030 50  0001 C CNN
F 1 "+3.3V" V 10395 2308 50  0000 L CNN
F 2 "" H 10380 2180 50  0001 C CNN
F 3 "" H 10380 2180 50  0001 C CNN
	1    10380 2180
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2340 2250 2190 2250
Wire Wire Line
	4250 1670 4250 1720
$Comp
L power:+3.3V #PWR015
U 1 1 5D109C24
P 4250 1670
F 0 "#PWR015" H 4250 1520 50  0001 C CNN
F 1 "+3.3V" H 4265 1843 50  0000 C CNN
F 2 "" H 4250 1670 50  0001 C CNN
F 3 "" H 4250 1670 50  0001 C CNN
	1    4250 1670
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 2250 1190 2250
Connection ~ 1150 2250
Connection ~ 1040 2250
Wire Wire Line
	1040 2250 1150 2250
Connection ~ 940  2250
Wire Wire Line
	940  2250 840  2250
$Comp
L MagSpoofTC-cache:VCC #PWR01
U 1 1 5D1207A7
P 840 2250
F 0 "#PWR01" H 840 2100 50  0001 C CNN
F 1 "VCC" V 858 2377 50  0000 L CNN
F 2 "" H 840 2250 50  0000 C CNN
F 3 "" H 840 2250 50  0000 C CNN
	1    840  2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2170 4600 2170
Wire Wire Line
	5430 1790 4600 1790
Wire Wire Line
	4600 1790 4600 1970
$Comp
L Device:C_Small C2
U 1 1 5D1060B4
P 4600 2070
F 0 "C2" H 4692 2116 50  0000 L CNN
F 1 "0.1uf" H 4692 2025 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4600 2070 50  0001 C CNN
F 3 "~" H 4600 2070 50  0001 C CNN
	1    4600 2070
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U2
U 1 1 5D138B32
P 1700 3920
F 0 "U2" H 1700 4401 50  0000 C CNN
F 1 "MCP73831-2-OT" H 1700 4310 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1750 3670 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1550 3870 50  0001 C CNN
	1    1700 3920
	1    0    0    -1  
$EndComp
Text Label 7500 4020 0    50   ~ 0
SW1
Text Label 7500 4120 0    50   ~ 0
SW2
Wire Wire Line
	10290 3550 10240 3550
$Comp
L MagSpoofTC-cache:GND #PWR027
U 1 1 5D38B380
P 10240 3550
F 0 "#PWR027" H 10240 3300 50  0001 C CNN
F 1 "GND" H 10245 3377 50  0000 C CNN
F 2 "" H 10240 3550 50  0000 C CNN
F 3 "" H 10240 3550 50  0000 C CNN
	1    10240 3550
	0    1    -1   0   
$EndComp
Text Label 10790 3550 0    50   ~ 0
SW1
$Comp
L Switch:SW_DPST_x2 SW2
U 1 1 5D38B388
P 10490 3550
F 0 "SW2" H 10490 3785 50  0000 C CNN
F 1 "SW_DPST_x2" H 10490 3694 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 10490 3550 50  0001 C CNN
F 3 "~" H 10490 3550 50  0001 C CNN
	1    10490 3550
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST_x2 SW3
U 1 1 5D3AF4BF
P 10480 3990
F 0 "SW3" H 10480 4225 50  0000 C CNN
F 1 "SW_DPST_x2" H 10480 4134 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 10480 3990 50  0001 C CNN
F 3 "~" H 10480 3990 50  0001 C CNN
	1    10480 3990
	-1   0    0    -1  
$EndComp
$Comp
L MagSpoofTC-cache:GND #PWR028
U 1 1 5D3B020B
P 10120 3980
F 0 "#PWR028" H 10120 3730 50  0001 C CNN
F 1 "GND" H 10125 3807 50  0000 C CNN
F 2 "" H 10120 3980 50  0000 C CNN
F 3 "" H 10120 3980 50  0000 C CNN
	1    10120 3980
	0    1    -1   0   
$EndComp
Wire Wire Line
	10280 3990 10120 3990
Wire Wire Line
	10120 3990 10120 3980
Text Label 10680 3990 0    50   ~ 0
SW2
Wire Wire Line
	9920 2970 10300 2970
Wire Wire Line
	9920 2970 9920 2930
Text Label 7500 1320 0    50   ~ 0
IRQ
Wire Wire Line
	10690 3550 10790 3550
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 5D418429
P 10520 4320
F 0 "J6" H 10600 4312 50  0000 L CNN
F 1 "Conn_01x04" H 10600 4221 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10520 4320 50  0001 C CNN
F 3 "~" H 10520 4320 50  0001 C CNN
	1    10520 4320
	1    0    0    -1  
$EndComp
NoConn ~ 10320 4220
NoConn ~ 10320 4320
NoConn ~ 10320 4520
NoConn ~ 10320 4420
$EndSCHEMATC
