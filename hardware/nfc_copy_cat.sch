EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NFC Copy Cat"
Date "2021-04-16"
Rev "1.5v"
Comp "Electronic Cats"
Comment1 ""
Comment2 "Eduardo Contreras"
Comment3 "Andres Sabas"
Comment4 "Juan Eduardo Rangel Macias "
$EndDescr
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR02
U 1 1 5D10AE94
P 830 1580
F 0 "#PWR02" H 830 1330 50  0001 C CNN
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
Text Label 6460 4070 0    50   ~ 0
D+
Text Label 6460 3970 0    50   ~ 0
D-
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR016
U 1 1 5D10E10D
P 4170 4210
F 0 "#PWR016" H 4170 3960 50  0001 C CNN
F 1 "GND" H 4170 4060 50  0000 C CNN
F 2 "" H 4170 4210 50  0000 C CNN
F 3 "" H 4170 4210 50  0000 C CNN
	1    4170 4210
	-1   0    0    -1  
$EndComp
Text Label 4140 1370 2    50   ~ 0
RESET
Wire Wire Line
	4140 1370 4190 1370
Text Label 6310 1870 0    50   ~ 0
IN_A
Text Label 6310 1970 0    50   ~ 0
IN_B
Text Label 6310 3070 0    50   ~ 0
11(MOSI)
Text Label 6310 3170 0    50   ~ 0
13(SCK)
Text Label 6310 3270 0    50   ~ 0
10(SS)
Text Label 6310 3370 0    50   ~ 0
12(MISO)
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5D12051B
P 10255 6015
F 0 "J5" H 10335 6007 50  0000 L CNN
F 1 "Conn_01x02" H 10335 5916 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10255 6015 50  0001 C CNN
F 3 "~" H 10255 6015 50  0001 C CNN
	1    10255 6015
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5D10E2FA
P 1305 5735
F 0 "J3" H 1275 6135 50  0000 L CNN
F 1 "NFC Module V3" V 1420 5420 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1305 5735 50  0001 C CNN
F 3 "~" H 1305 5735 50  0001 C CNN
	1    1305 5735
	1    0    0    -1  
$EndComp
Text Label 1105 5435 2    50   ~ 0
13(SCK)
Text Label 1105 5535 2    50   ~ 0
12(MISO)
Text Label 1105 5635 2    50   ~ 0
11(MOSI)
Text Label 1105 5735 2    50   ~ 0
10(SS)
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR027
U 1 1 5D111E6A
P 690 5990
F 0 "#PWR027" H 690 5740 50  0001 C CNN
F 1 "GND" V 695 5862 50  0000 R CNN
F 2 "" H 690 5990 50  0000 C CNN
F 3 "" H 690 5990 50  0000 C CNN
	1    690  5990
	1    0    0    -1  
$EndComp
Text Label 1105 6035 2    50   ~ 0
IRQ
Text Label 8510 5680 0    50   ~ 0
OUTA
Text Label 10055 6015 2    50   ~ 0
OUTA
Text Label 10055 6115 2    50   ~ 0
OUTB
Text Label 7510 5680 2    50   ~ 0
IN_A
$Comp
L Device:Polyfuse F1
U 1 1 5D119569
P 1550 880
F 0 "F1" V 1325 880 50  0000 C CNN
F 1 "Polyfuse" V 1416 880 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1600 680 50  0001 L CNN
F 3 "~" H 1550 880 50  0001 C CNN
F 4 "MFU0805FF00500P100" V 1550 880 50  0001 C CNN "manf#"
	1    1550 880 
	0    1    1    0   
$EndComp
Text Label 6260 4370 0    50   ~ 0
SWCLK
Text Label 6260 4470 0    50   ~ 0
SWDIO
Text Label 4490 7220 3    50   ~ 0
SWCLK
Text Label 4390 7220 3    50   ~ 0
SWDIO
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR041
U 1 1 5D11E265
P 4590 7265
F 0 "#PWR041" H 4590 7015 50  0001 C CNN
F 1 "GND" V 4595 7137 50  0000 R CNN
F 2 "" H 4590 7265 50  0000 C CNN
F 3 "" H 4590 7265 50  0000 C CNN
	1    4590 7265
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR040
U 1 1 5D11ED43
P 4205 7220
F 0 "#PWR040" H 4205 7070 50  0001 C CNN
F 1 "+3.3V" H 3985 7350 50  0000 L CNN
F 2 "" H 4205 7220 50  0001 C CNN
F 3 "" H 4205 7220 50  0001 C CNN
	1    4205 7220
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR09
U 1 1 5D1214CD
P 855 3015
F 0 "#PWR09" H 855 2765 50  0001 C CNN
F 1 "GND" H 860 2842 50  0000 C CNN
F 2 "" H 855 3015 50  0000 C CNN
F 3 "" H 855 3015 50  0000 C CNN
	1    855  3015
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D12348A
P 855 2865
F 0 "C4" H 970 2911 50  0000 L CNN
F 1 "1uf" H 970 2820 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 893 2715 50  0001 C CNN
F 3 "~" H 855 2865 50  0001 C CNN
	1    855  2865
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR010
U 1 1 5D128118
P 2980 3180
F 0 "#PWR010" H 2980 2930 50  0001 C CNN
F 1 "GND" H 2985 3007 50  0000 C CNN
F 2 "" H 2980 3180 50  0000 C CNN
F 3 "" H 2980 3180 50  0000 C CNN
	1    2980 3180
	1    0    0    -1  
$EndComp
Wire Wire Line
	2980 2930 2980 3030
Wire Wire Line
	2730 3030 2980 3030
Connection ~ 2980 3030
Wire Wire Line
	2980 3030 2980 3180
Wire Bus Line
	2570 480  2550 480 
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR07
U 1 1 5D10A231
P 3475 3045
F 0 "#PWR07" H 3475 2795 50  0001 C CNN
F 1 "GND" H 3480 2872 50  0000 C CNN
F 2 "" H 3475 3045 50  0000 C CNN
F 3 "" H 3475 3045 50  0000 C CNN
	1    3475 3045
	-1   0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR037
U 1 1 5D116DE8
P 600 7050
F 0 "#PWR037" H 600 6800 50  0001 C CNN
F 1 "GND" H 605 6877 50  0000 C CNN
F 2 "" H 600 7050 50  0000 C CNN
F 3 "" H 600 7050 50  0000 C CNN
	1    600  7050
	-1   0    0    -1  
$EndComp
Text Label 1150 7000 0    50   ~ 0
RESET
Wire Wire Line
	4170 4010 4170 4210
Wire Wire Line
	4170 4210 4190 4210
Wire Wire Line
	4170 4010 4190 4010
$Comp
L Device:D_Schottky D1
U 1 1 5D130FF3
P 930 2480
F 0 "D1" H 930 2696 50  0000 C CNN
F 1 "MBR120" H 1005 2595 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 930 2480 50  0001 C CNN
F 3 "~" H 930 2480 50  0001 C CNN
	1    930  2480
	0    -1   -1   0   
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR08
U 1 1 5D13A5F9
P 1535 3030
F 0 "#PWR08" H 1535 2780 50  0001 C CNN
F 1 "GND" H 1540 2857 50  0000 C CNN
F 2 "" H 1535 3030 50  0000 C CNN
F 3 "" H 1535 3030 50  0000 C CNN
	1    1535 3030
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR019
U 1 1 5D13B216
P 1760 4585
F 0 "#PWR019" H 1760 4335 50  0001 C CNN
F 1 "GND" H 1765 4412 50  0000 C CNN
F 2 "" H 1760 4585 50  0000 C CNN
F 3 "" H 1760 4585 50  0000 C CNN
	1    1760 4585
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR018
U 1 1 5D13B45D
P 810 4305
F 0 "#PWR018" H 810 4055 50  0001 C CNN
F 1 "GND" H 815 4132 50  0000 C CNN
F 2 "" H 810 4305 50  0000 C CNN
F 3 "" H 810 4305 50  0000 C CNN
	1    810  4305
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D13B72D
P 1890 3595
F 0 "R1" H 1960 3641 50  0000 L CNN
F 1 "1k" H 1960 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1820 3595 50  0001 C CNN
F 3 "~" H 1890 3595 50  0001 C CNN
	1    1890 3595
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D13C5F3
P 730 4055
F 0 "R2" V 937 4055 50  0000 C CNN
F 1 "2.2k" V 846 4055 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 660 4055 50  0001 C CNN
F 3 "~" H 730 4055 50  0001 C CNN
	1    730  4055
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 5D13C8B3
P 1760 4435
F 0 "C6" H 1875 4481 50  0000 L CNN
F 1 "10uf" H 1875 4390 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1798 4285 50  0001 C CNN
F 3 "~" H 1760 4435 50  0001 C CNN
	1    1760 4435
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D13D233
P 1535 2880
F 0 "C3" H 1325 2840 50  0000 L CNN
F 1 "10uf" H 1280 2950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1573 2730 50  0001 C CNN
F 3 "~" H 1535 2880 50  0001 C CNN
	1    1535 2880
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D1404B5
P 1890 3895
F 0 "D2" V 1929 3778 50  0000 R CNN
F 1 "LED" V 1838 3778 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1890 3895 50  0001 C CNN
F 3 "~" H 1890 3895 50  0001 C CNN
	1    1890 3895
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1680 4055 1890 4055
Wire Wire Line
	1890 4055 1890 4045
Wire Wire Line
	1680 3855 1760 3855
Wire Wire Line
	1760 3855 1760 4210
Wire Wire Line
	1280 4255 1280 4305
Wire Wire Line
	1280 4305 810  4305
Connection ~ 810  4305
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR014
U 1 1 5D1A3850
P 2880 4140
F 0 "#PWR014" H 2880 3890 50  0001 C CNN
F 1 "GND" H 2885 3967 50  0000 C CNN
F 2 "" H 2880 4140 50  0000 C CNN
F 3 "" H 2880 4140 50  0000 C CNN
	1    2880 4140
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5D1A1248
P 2680 4140
F 0 "J2" H 2598 3815 50  0000 C CNN
F 1 "Battery" H 2598 3906 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2680 4140 50  0001 C CNN
F 3 "~" H 2680 4140 50  0001 C CNN
	1    2680 4140
	-1   0    0    1   
$EndComp
NoConn ~ 1180 1280
NoConn ~ 6260 1270
NoConn ~ 6260 1370
NoConn ~ 6260 1570
NoConn ~ 6260 3770
NoConn ~ 6260 3870
NoConn ~ 6260 2970
NoConn ~ 1105 6135
NoConn ~ 8510 5530
NoConn ~ 7510 5530
Wire Wire Line
	6260 4070 6460 4070
Wire Wire Line
	6460 3970 6260 3970
Wire Wire Line
	6310 3370 6260 3370
Wire Wire Line
	6260 3270 6310 3270
Wire Wire Line
	6310 3170 6260 3170
Wire Wire Line
	6260 3070 6310 3070
Wire Wire Line
	6260 1970 6310 1970
Wire Wire Line
	6260 1870 6310 1870
$Comp
L nfc_copy_cat-rescue:AP2112K-3.3TRG1-electroniccats U1
U 1 1 5D11FC1B
P 2230 2830
F 0 "U1" H 2230 3300 50  0000 C CNN
F 1 "AP2112K-3.3TRG1" H 2230 3209 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 2230 2830 50  0001 L BNN
F 3 "" H 2230 2830 50  0001 L BNN
F 4 "Diodes Inc." H 2230 2830 50  0001 L BNN "Campo4"
F 5 "SOT-753 Diodes Inc." H 2230 2830 50  0001 L BNN "Campo5"
F 6 "None" H 2230 2830 50  0001 L BNN "Campo6"
F 7 "Unavailable" H 2230 2830 50  0001 L BNN "Campo7"
F 8 "AP2112 Series 0.6 A 3.3 V Fixed Output SMT LDO Linear Regulator - SOT23-5" H 2230 2830 50  0001 L BNN "Campo8"
	1    2230 2830
	1    0    0    -1  
$EndComp
Wire Wire Line
	1280 3655 1280 3445
$Comp
L Device:C C1
U 1 1 5D127893
P 2980 2780
F 0 "C1" H 2765 2850 50  0000 L CNN
F 1 "10uf" H 2770 2685 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3018 2630 50  0001 C CNN
F 3 "~" H 2980 2780 50  0001 C CNN
	1    2980 2780
	1    0    0    -1  
$EndComp
Connection ~ 2880 2630
Wire Wire Line
	2980 2630 2880 2630
Wire Wire Line
	2880 2530 2880 2630
$Comp
L power:+3.3V #PWR05
U 1 1 5D127046
P 2880 2530
F 0 "#PWR05" H 2880 2380 50  0001 C CNN
F 1 "+3.3V" H 2895 2703 50  0000 C CNN
F 2 "" H 2880 2530 50  0001 C CNN
F 3 "" H 2880 2530 50  0001 C CNN
	1    2880 2530
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:VCC-MagSpoofTC-cache #PWR011
U 1 1 5D139EE0
P 1280 3445
F 0 "#PWR011" H 1280 3295 50  0001 C CNN
F 1 "VCC" H 1297 3618 50  0000 C CNN
F 2 "" H 1280 3445 50  0000 C CNN
F 3 "" H 1280 3445 50  0000 C CNN
	1    1280 3445
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 5D1101C2
P 640 5795
F 0 "#PWR024" H 640 5645 50  0001 C CNN
F 1 "+3.3V" V 655 5923 50  0000 L CNN
F 2 "" H 640 5795 50  0001 C CNN
F 3 "" H 640 5795 50  0001 C CNN
	1    640  5795
	1    0    0    -1  
$EndComp
Wire Wire Line
	2880 2630 2730 2630
$Comp
L nfc_copy_cat-rescue:VCC-MagSpoofTC-cache #PWR06
U 1 1 5D1207A7
P 655 2555
F 0 "#PWR06" H 655 2405 50  0001 C CNN
F 1 "VCC" V 673 2682 50  0000 L CNN
F 2 "" H 655 2555 50  0000 C CNN
F 3 "" H 655 2555 50  0000 C CNN
	1    655  2555
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D1060B4
P 3475 2850
F 0 "C2" H 3567 2896 50  0000 L CNN
F 1 "0.1uf" H 3567 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3475 2850 50  0001 C CNN
F 3 "~" H 3475 2850 50  0001 C CNN
	1    3475 2850
	-1   0    0    -1  
$EndComp
Text Label 6260 4170 0    50   ~ 0
SW1
Text Label 6260 4270 0    50   ~ 0
SW2
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR039
U 1 1 5D38B380
P 1545 7080
F 0 "#PWR039" H 1545 6830 50  0001 C CNN
F 1 "GND" H 1550 6907 50  0000 C CNN
F 2 "" H 1545 7080 50  0000 C CNN
F 3 "" H 1545 7080 50  0000 C CNN
	1    1545 7080
	-1   0    0    -1  
$EndComp
Text Label 2035 7000 0    50   ~ 0
SW1
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR038
U 1 1 5D3B020B
P 2430 7060
F 0 "#PWR038" H 2430 6810 50  0001 C CNN
F 1 "GND" H 2435 6887 50  0000 C CNN
F 2 "" H 2430 7060 50  0000 C CNN
F 3 "" H 2430 7060 50  0000 C CNN
	1    2430 7060
	-1   0    0    -1  
$EndComp
Text Label 2920 7010 0    50   ~ 0
SW2
Text Label 6260 1470 0    50   ~ 0
IRQ
$Comp
L Device:LED_Small D4
U 1 1 5D36129D
P 5935 5675
F 0 "D4" V 5981 5607 50  0000 R CNN
F 1 "LED" V 5890 5607 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5935 5675 50  0001 C CNN
F 3 "~" V 5935 5675 50  0001 C CNN
	1    5935 5675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5D3612A3
P 5935 5925
F 0 "R5" H 5994 5971 50  0000 L CNN
F 1 "330" H 5994 5880 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5935 5925 50  0001 C CNN
F 3 "~" H 5935 5925 50  0001 C CNN
	1    5935 5925
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR031
U 1 1 5D3612A9
P 5935 6075
F 0 "#PWR031" H 5935 5825 50  0001 C CNN
F 1 "GND" H 5940 5902 50  0000 C CNN
F 2 "" H 5935 6075 50  0000 C CNN
F 3 "" H 5935 6075 50  0000 C CNN
	1    5935 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5935 5525 5935 5575
Wire Wire Line
	5935 5775 5935 5825
Wire Wire Line
	5935 6025 5935 6075
Text Label 6260 2870 0    50   ~ 0
LED1
Text Label 5935 5525 0    50   ~ 0
LED1
Wire Wire Line
	4590 7220 4590 7265
Wire Wire Line
	4205 7220 4290 7220
Wire Notes Line
	3740 4930 465  4930
Wire Notes Line
	8490 4920 3745 4920
Text Notes 5905 685  0    157  ~ 0
MICROCONTROLLER
Text Notes 7855 5080 0    79   ~ 0
COIL
Text Notes 830  2060 0    79   ~ 0
SOURCE AND CHARGER
Text Notes 1150 5160 0    79   ~ 0
NFC CONNECTOR
Wire Notes Line
	3745 7795 3735 7795
Wire Wire Line
	930  2330 930  2260
$Comp
L power:+BATT #PWR03
U 1 1 5DBF717B
P 930 2260
F 0 "#PWR03" H 930 2110 50  0001 C CNN
F 1 "+BATT" H 945 2433 50  0000 C CNN
F 2 "" H 930 2260 50  0001 C CNN
F 3 "" H 930 2260 50  0001 C CNN
	1    930  2260
	1    0    0    -1  
$EndComp
Wire Wire Line
	2880 4040 2980 4040
Wire Wire Line
	2980 4040 2980 4020
$Comp
L power:+BATT #PWR013
U 1 1 5DBFCA95
P 2980 4020
F 0 "#PWR013" H 2980 3870 50  0001 C CNN
F 1 "+BATT" H 2995 4193 50  0000 C CNN
F 2 "" H 2980 4020 50  0001 C CNN
F 3 "" H 2980 4020 50  0001 C CNN
	1    2980 4020
	1    0    0    -1  
$EndComp
Wire Wire Line
	570  4305 810  4305
Wire Wire Line
	580  4055 570  4055
Wire Wire Line
	570  4055 570  4305
$Comp
L Device:LED_Small D5
U 1 1 5DC0D669
P 6275 5690
F 0 "D5" V 6321 5622 50  0000 R CNN
F 1 "LED" V 6230 5622 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6275 5690 50  0001 C CNN
F 3 "~" V 6275 5690 50  0001 C CNN
	1    6275 5690
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5DC0D66F
P 6275 5940
F 0 "R6" H 6334 5986 50  0000 L CNN
F 1 "330" H 6334 5895 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6275 5940 50  0001 C CNN
F 3 "~" H 6275 5940 50  0001 C CNN
	1    6275 5940
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR032
U 1 1 5DC0D675
P 6275 6090
F 0 "#PWR032" H 6275 5840 50  0001 C CNN
F 1 "GND" H 6280 5917 50  0000 C CNN
F 2 "" H 6275 6090 50  0000 C CNN
F 3 "" H 6275 6090 50  0000 C CNN
	1    6275 6090
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 5540 6275 5590
Wire Wire Line
	6275 5790 6275 5840
Wire Wire Line
	6275 6040 6275 6090
Text Label 6275 5540 0    50   ~ 0
LED2
$Comp
L Device:LED_Small D6
U 1 1 5DC10D00
P 6630 5690
F 0 "D6" V 6676 5622 50  0000 R CNN
F 1 "LED" V 6585 5622 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 5690 50  0001 C CNN
F 3 "~" V 6630 5690 50  0001 C CNN
	1    6630 5690
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5DC10D06
P 6630 5940
F 0 "R7" H 6689 5986 50  0000 L CNN
F 1 "330" H 6689 5895 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6630 5940 50  0001 C CNN
F 3 "~" H 6630 5940 50  0001 C CNN
	1    6630 5940
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR033
U 1 1 5DC10D0C
P 6630 6090
F 0 "#PWR033" H 6630 5840 50  0001 C CNN
F 1 "GND" H 6635 5917 50  0000 C CNN
F 2 "" H 6630 6090 50  0000 C CNN
F 3 "" H 6630 6090 50  0000 C CNN
	1    6630 6090
	1    0    0    -1  
$EndComp
Wire Wire Line
	6630 5540 6630 5590
Wire Wire Line
	6630 5790 6630 5840
Wire Wire Line
	6630 6040 6630 6090
Text Label 6630 5540 0    50   ~ 0
LED3
Text Label 6320 1670 0    50   ~ 0
LED3
Text Label 6315 1770 0    50   ~ 0
LED2
Wire Wire Line
	3475 2950 3475 3045
$Comp
L power:+3.3V #PWR04
U 1 1 5D109C24
P 3475 2360
F 0 "#PWR04" H 3475 2210 50  0001 C CNN
F 1 "+3.3V" H 3490 2533 50  0000 C CNN
F 2 "" H 3475 2360 50  0001 C CNN
F 3 "" H 3475 2360 50  0001 C CNN
	1    3475 2360
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J4
U 1 1 5DBA44BD
P 2350 5770
F 0 "J4" H 2320 6285 50  0000 L CNN
F 1 "Adafruit NFC 1.0" V 2470 5435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 2350 5770 50  0001 C CNN
F 3 "~" H 2350 5770 50  0001 C CNN
	1    2350 5770
	1    0    0    -1  
$EndComp
Text Label 2150 6070 2    50   ~ 0
13(SCK)
Text Label 2150 5970 2    50   ~ 0
12(MISO)
Text Label 2150 5770 2    50   ~ 0
10(SS)
Text Label 2150 5670 2    50   ~ 0
RSTOUT
Text Label 2150 5570 2    50   ~ 0
IRQ
Text Label 2150 5870 2    50   ~ 0
11(MOSI)
$Comp
L power:GND #PWR021
U 1 1 5DBC73AB
P 1800 5475
F 0 "#PWR021" H 1800 5225 50  0001 C CNN
F 1 "GND" H 1805 5302 50  0000 C CNN
F 2 "" H 1800 5475 50  0001 C CNN
F 3 "" H 1800 5475 50  0001 C CNN
	1    1800 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1105 5835 640  5835
Wire Wire Line
	640  5835 640  5795
Wire Wire Line
	1105 5935 690  5935
Wire Wire Line
	690  5935 690  5990
$Comp
L power:+BATT #PWR015
U 1 1 5DD5BE11
P 2200 4175
F 0 "#PWR015" H 2200 4025 50  0001 C CNN
F 1 "+BATT" H 2215 4348 50  0000 C CNN
F 2 "" H 2200 4175 50  0001 C CNN
F 3 "" H 2200 4175 50  0001 C CNN
	1    2200 4175
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4175 2200 4210
Wire Wire Line
	2200 4210 1760 4210
Connection ~ 1760 4210
Wire Wire Line
	1760 4210 1760 4285
$Comp
L power:+3.3V #PWR034
U 1 1 5DBC5E82
P 1925 6170
F 0 "#PWR034" H 1925 6020 50  0001 C CNN
F 1 "+3.3V" H 1775 6210 50  0000 C CNN
F 2 "" H 1925 6170 50  0001 C CNN
F 3 "" H 1925 6170 50  0001 C CNN
	1    1925 6170
	1    0    0    -1  
$EndComp
Wire Wire Line
	1925 6170 2150 6170
Wire Wire Line
	1800 5475 1800 5470
Wire Wire Line
	1800 5470 2150 5470
NoConn ~ 2150 5370
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5DBA59FC
P 4490 7020
F 0 "J6" V 4552 7164 50  0000 L CNN
F 1 "SWD" V 4643 7164 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4490 7020 50  0001 C CNN
F 3 "~" H 4490 7020 50  0001 C CNN
	1    4490 7020
	0    1    1    0   
$EndComp
Wire Notes Line
	6970 6545 6970 4910
Wire Notes Line
	6970 4910 6980 4910
$Comp
L power:+3.3V #PWR026
U 1 1 5E310D64
P 4485 5960
F 0 "#PWR026" H 4485 5810 50  0001 C CNN
F 1 "+3.3V" H 4500 6133 50  0000 C CNN
F 2 "" H 4485 5960 50  0001 C CNN
F 3 "" H 4485 5960 50  0001 C CNN
	1    4485 5960
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR025
U 1 1 5D10F11B
P 7220 5895
F 0 "#PWR025" H 7220 5645 50  0001 C CNN
F 1 "GND" V 7225 5767 50  0000 R CNN
F 2 "" H 7220 5895 50  0000 C CNN
F 3 "" H 7220 5895 50  0000 C CNN
	1    7220 5895
	1    0    0    -1  
$EndComp
Text Label 7510 5980 2    50   ~ 0
IN_B
$Comp
L nfc_copy_cat-rescue:TC4424-MagSpoofTC-cache U5
U 1 1 5D103460
P 8010 5780
F 0 "U5" H 8010 6317 60  0000 C CNN
F 1 "TC4424" H 8010 6211 60  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8145 5405 60  0001 C CNN
F 3 "" H 8010 5780 60  0000 C CNN
	1    8010 5780
	1    0    0    -1  
$EndComp
Text Label 6360 2170 0    50   ~ 0
MOSI1
Text Label 6370 2270 0    50   ~ 0
SCK1
Text Label 6370 2370 0    50   ~ 0
SS1
Text Label 6365 2470 0    50   ~ 0
MISO1
$Comp
L Device:C C7
U 1 1 5E35B8A2
P 4945 5820
F 0 "C7" H 5060 5866 50  0000 L CNN
F 1 "0.1uF" H 5060 5775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4983 5670 50  0001 C CNN
F 3 "~" H 4945 5820 50  0001 C CNN
	1    4945 5820
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5E3640D6
P 4945 6020
F 0 "#PWR029" H 4945 5770 50  0001 C CNN
F 1 "GND" H 4950 5847 50  0000 C CNN
F 2 "" H 4945 6020 50  0001 C CNN
F 3 "" H 4945 6020 50  0001 C CNN
	1    4945 6020
	1    0    0    -1  
$EndComp
Connection ~ 4485 5975
Wire Wire Line
	4485 5975 4485 6075
Wire Wire Line
	4485 5960 4485 5975
$Comp
L Memory_Flash:W25Q32JVSS U6
U 1 1 5E2FB9AC
P 3565 5875
F 0 "U6" H 3320 6245 50  0000 C CNN
F 1 "GD25Q16C" H 3840 6275 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 3565 5875 50  0001 C CNN
F 3 "http://www.winbond.com/resource-files/w25q32jv%20revg%2003272018%20plus.pdf" H 3565 5875 50  0001 C CNN
	1    3565 5875
	1    0    0    -1  
$EndComp
Connection ~ 2925 5775
Wire Wire Line
	2770 5775 2925 5775
Text Label 2770 5775 0    50   ~ 0
SS1
Wire Wire Line
	3565 6275 3565 6380
$Comp
L power:GND #PWR036
U 1 1 5E3429A2
P 3565 6380
F 0 "#PWR036" H 3565 6130 50  0001 C CNN
F 1 "GND" H 3570 6207 50  0000 C CNN
F 2 "" H 3565 6380 50  0001 C CNN
F 3 "" H 3565 6380 50  0001 C CNN
	1    3565 6380
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 5335 3565 5335
Connection ~ 3175 5335
Wire Wire Line
	3175 5255 3175 5335
Wire Wire Line
	3565 5335 3565 5475
Wire Wire Line
	2925 5335 3175 5335
Wire Wire Line
	2925 5405 2925 5335
$Comp
L power:+3.3V #PWR020
U 1 1 5E33AC91
P 3175 5255
F 0 "#PWR020" H 3175 5105 50  0001 C CNN
F 1 "+3.3V" H 3190 5428 50  0000 C CNN
F 2 "" H 3175 5255 50  0001 C CNN
F 3 "" H 3175 5255 50  0001 C CNN
	1    3175 5255
	1    0    0    -1  
$EndComp
Wire Wire Line
	2925 5775 2925 5705
Wire Wire Line
	3065 5775 2925 5775
$Comp
L Device:R R3
U 1 1 5E31C604
P 2925 5555
F 0 "R3" H 2995 5601 50  0000 L CNN
F 1 "10K" H 2965 5525 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2855 5555 50  0001 C CNN
F 3 "~" H 2925 5555 50  0001 C CNN
	1    2925 5555
	1    0    0    -1  
$EndComp
Wire Wire Line
	3065 5975 2820 5975
Text Label 2820 5975 0    50   ~ 0
SCK1
Wire Wire Line
	4065 6075 4485 6075
Wire Wire Line
	4065 5975 4485 5975
Text Label 4170 5675 0    50   ~ 0
MOSI1
Text Label 4165 5775 0    50   ~ 0
MISO1
$Comp
L power:+3.3V #PWR022
U 1 1 5E3736F6
P 4945 5610
F 0 "#PWR022" H 4945 5460 50  0001 C CNN
F 1 "+3.3V" H 4960 5783 50  0000 C CNN
F 2 "" H 4945 5610 50  0001 C CNN
F 3 "" H 4945 5610 50  0001 C CNN
	1    4945 5610
	1    0    0    -1  
$EndComp
Wire Wire Line
	4945 5670 4945 5610
Wire Wire Line
	4945 5970 4945 6020
Wire Wire Line
	1280 3445 1890 3445
NoConn ~ 2150 5670
Text Label 8510 5980 0    50   ~ 0
OUTB
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR035
U 1 1 5D11661F
P 9010 6280
F 0 "#PWR035" H 9010 6030 50  0001 C CNN
F 1 "GND" H 9015 6107 50  0000 C CNN
F 2 "" H 9010 6280 50  0000 C CNN
F 3 "" H 9010 6280 50  0000 C CNN
	1    9010 6280
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5D11FCB0
P 9010 6180
F 0 "C8" H 9102 6226 50  0000 L CNN
F 1 "10uf" H 9102 6135 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9010 6180 50  0001 C CNN
F 3 "~" H 9010 6180 50  0001 C CNN
	1    9010 6180
	1    0    0    -1  
$EndComp
Wire Wire Line
	9010 6080 9010 6005
Wire Wire Line
	8510 5830 8810 5830
Wire Wire Line
	8810 5830 8810 5780
Wire Wire Line
	4065 5675 4170 5675
Wire Wire Line
	4065 5775 4165 5775
Wire Wire Line
	6260 2170 6360 2170
Wire Wire Line
	6260 2270 6370 2270
Wire Wire Line
	6260 2370 6370 2370
Wire Wire Line
	6260 2470 6365 2470
Wire Wire Line
	6260 1670 6320 1670
Wire Wire Line
	6260 1770 6315 1770
Wire Wire Line
	7510 5830 7220 5830
Wire Wire Line
	7220 5830 7220 5895
Wire Wire Line
	655  2630 655  2555
Connection ~ 930  2630
Wire Wire Line
	1535 2730 1535 2630
Connection ~ 1280 3445
$Comp
L power:+BATT #PWR023
U 1 1 6080D6FF
P 8810 5780
F 0 "#PWR023" H 8810 5630 50  0001 C CNN
F 1 "+BATT" H 8825 5953 50  0000 C CNN
F 2 "" H 8810 5780 50  0001 C CNN
F 3 "" H 8810 5780 50  0001 C CNN
	1    8810 5780
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR028
U 1 1 6080F77B
P 9010 6005
F 0 "#PWR028" H 9010 5855 50  0001 C CNN
F 1 "+BATT" H 9025 6178 50  0000 C CNN
F 2 "" H 9010 6005 50  0001 C CNN
F 3 "" H 9010 6005 50  0001 C CNN
	1    9010 6005
	1    0    0    -1  
$EndComp
Wire Notes Line
	3150 480  3150 4915
Wire Notes Line
	485  6405 2560 6405
Wire Notes Line
	2560 6405 2560 4925
Wire Notes Line
	2565 6395 2565 6625
Wire Notes Line
	2565 6625 5275 6625
Wire Notes Line
	5275 6625 5275 4915
Text Notes 5545 5195 0    79   ~ 0
LEDS
Wire Notes Line
	5310 6630 6965 6630
Wire Notes Line
	6965 6630 6965 6380
Text Notes 1100 6620 0    79   ~ 0
BUTTONS
Wire Notes Line
	3330 6635 3330 7775
Wire Notes Line
	8490 4915 11215 4915
Wire Notes Line
	11215 4915 11215 4910
Wire Notes Line
	470  1860 3145 1860
Wire Notes Line
	3145 1860 3145 1850
Text Notes 4110 6840 0    79   ~ 0
SWD
Text Label 10315 4070 0    50   ~ 0
D+
Text Label 10315 3970 0    50   ~ 0
D-
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR017
U 1 1 6111F618
P 8025 4210
F 0 "#PWR017" H 8025 3960 50  0001 C CNN
F 1 "GND" H 8025 4060 50  0000 C CNN
F 2 "" H 8025 4210 50  0000 C CNN
F 3 "" H 8025 4210 50  0000 C CNN
	1    8025 4210
	-1   0    0    -1  
$EndComp
Text Label 7995 1370 2    50   ~ 0
RESET
Wire Wire Line
	7995 1370 8045 1370
Text Label 10165 1870 0    50   ~ 0
IN_A
Text Label 10165 1970 0    50   ~ 0
IN_B
Text Label 10165 3070 0    50   ~ 0
11(MOSI)
Text Label 10165 3170 0    50   ~ 0
13(SCK)
Text Label 10165 3270 0    50   ~ 0
10(SS)
Text Label 10165 3370 0    50   ~ 0
12(MISO)
Text Label 10115 4370 0    50   ~ 0
SWCLK
Text Label 10115 4470 0    50   ~ 0
SWDIO
Wire Wire Line
	8025 4010 8025 4210
Wire Wire Line
	8025 4210 8045 4210
Wire Wire Line
	8025 4010 8045 4010
NoConn ~ 10115 1270
NoConn ~ 10115 1370
NoConn ~ 10115 1570
NoConn ~ 10115 3770
NoConn ~ 10115 3870
NoConn ~ 10115 2970
Wire Wire Line
	10115 4070 10315 4070
Wire Wire Line
	10315 3970 10115 3970
Wire Wire Line
	10165 3370 10115 3370
Wire Wire Line
	10115 3270 10165 3270
Wire Wire Line
	10165 3170 10115 3170
Wire Wire Line
	10115 3070 10165 3070
Wire Wire Line
	10115 1970 10165 1970
Wire Wire Line
	10115 1870 10165 1870
$Comp
L nfc_copy_cat-rescue:ATSAMD21E18A-electroniccats U3
U 1 1 6111F64B
P 8715 2870
F 0 "U3" H 9080 4724 45  0000 C CNN
F 1 "ATSAMD21E18A" H 9080 4640 45  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 8745 3020 20  0001 C CNN
F 3 "https://www.mouser.mx/datasheet/2/268/SAM-D21-Family-Datasheet-DS40001882C-1381353.pdf" H 8715 2870 60  0001 C CNN
	1    8715 2870
	1    0    0    -1  
$EndComp
Text Label 10115 4170 0    50   ~ 0
SW1
Text Label 10115 4270 0    50   ~ 0
SW2
Text Label 10115 1470 0    50   ~ 0
IRQ
Text Label 10115 2870 0    50   ~ 0
LED1
Text Label 10175 1670 0    50   ~ 0
LED3
Text Label 10170 1770 0    50   ~ 0
LED2
Text Label 10215 2170 0    50   ~ 0
MOSI1
Text Label 10225 2270 0    50   ~ 0
SCK1
Text Label 10225 2370 0    50   ~ 0
SS1
Text Label 10220 2470 0    50   ~ 0
MISO1
Wire Wire Line
	10115 2170 10215 2170
Wire Wire Line
	10115 2270 10225 2270
Wire Wire Line
	10115 2370 10225 2370
Wire Wire Line
	10115 2470 10220 2470
Wire Wire Line
	10115 1670 10175 1670
Wire Wire Line
	10115 1770 10170 1770
Connection ~ 8025 4210
Text Notes 5065 950  0    98   ~ 0
QFN
Text Notes 8920 960  0    98   ~ 0
TQFN
Wire Wire Line
	3475 2360 3475 2430
Text Label 3685 2430 0    79   ~ 0
VDDA
Text Label 3690 2570 0    79   ~ 0
VDDIN
Wire Wire Line
	3685 2430 3475 2430
Connection ~ 3475 2430
Wire Wire Line
	3475 2430 3475 2570
Wire Wire Line
	3690 2570 3475 2570
Connection ~ 3475 2570
Wire Wire Line
	3475 2570 3475 2750
Text Label 4105 1660 2    79   ~ 0
VDDA
Wire Wire Line
	4105 1660 4190 1660
Text Label 4110 1790 2    79   ~ 0
VDDIN
Wire Wire Line
	4110 1790 4190 1790
Connection ~ 4170 4210
$Comp
L Device:C_Small C5
U 1 1 5D1030E9
P 3515 3660
F 0 "C5" H 3607 3706 50  0000 L CNN
F 1 "1uf" H 3607 3615 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3515 3660 50  0001 C CNN
F 3 "~" H 3515 3660 50  0001 C CNN
	1    3515 3660
	-1   0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR012
U 1 1 5D10A9A0
P 3515 3855
F 0 "#PWR012" H 3515 3605 50  0001 C CNN
F 1 "GND" H 3520 3682 50  0000 C CNN
F 2 "" H 3515 3855 50  0000 C CNN
F 3 "" H 3515 3855 50  0000 C CNN
	1    3515 3855
	-1   0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:ATSAMD21E18A-electroniccats U2
U 1 1 5D120B36
P 4860 2870
F 0 "U2" H 5225 4724 45  0000 C CNN
F 1 "ATSAMD21E18A" H 5225 4640 45  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.6x3.6mm" H 4890 3020 20  0001 C CNN
F 3 "https://www.mouser.mx/datasheet/2/268/SAM-D21-Family-Datasheet-DS40001882C-1381353.pdf" H 4860 2870 60  0001 C CNN
	1    4860 2870
	1    0    0    -1  
$EndComp
Wire Wire Line
	3515 3855 3515 3760
Text Label 3585 3475 0    79   ~ 0
VDDCORE
Wire Wire Line
	3515 3560 3515 3475
Wire Wire Line
	3515 3475 3585 3475
Text Label 4110 1940 2    79   ~ 0
VDDCORE
Wire Wire Line
	4110 1940 4190 1940
Text Label 7940 1660 2    79   ~ 0
VDDA
Text Label 7935 1790 2    79   ~ 0
VDDIN
Text Label 7945 1940 2    79   ~ 0
VDDCORE
Wire Wire Line
	7945 1940 8045 1940
Wire Wire Line
	7935 1790 8045 1790
Wire Wire Line
	7940 1660 8045 1660
$Comp
L nfc_copy_cat-rescue:USB_B_Micro-Connector J1
U 1 1 5D106D67
P 880 1080
F 0 "J1" H 937 1547 50  0000 C CNN
F 1 "USB_B_Micro" H 937 1456 50  0000 C CNN
F 2 "Connectors:U254051N4BH806" H 1030 1030 50  0001 C CNN
F 3 "~" H 1030 1030 50  0001 C CNN
	1    880  1080
	1    0    0    -1  
$EndComp
Wire Wire Line
	1180 880  1400 880 
$Comp
L nfc_copy_cat-rescue:Switch_SW_Push-Bast_WAN-cache SW2
U 1 1 610BBDBF
P 910 7000
F 0 "SW2" H 1010 7250 50  0000 R CNN
F 1 "RST" H 1000 7175 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 910 7200 50  0001 C CNN
F 3 "" H 910 7200 50  0001 C CNN
	1    910  7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 7000 1110 7000
Wire Wire Line
	600  7050 600  7000
Wire Wire Line
	600  7000 710  7000
$Comp
L nfc_copy_cat-rescue:Switch_SW_Push-Bast_WAN-cache SW3
U 1 1 61103185
P 1780 7000
F 0 "SW3" H 1880 7250 50  0000 R CNN
F 1 "Magspoof" H 1950 7180 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 1780 7200 50  0001 C CNN
F 3 "" H 1780 7200 50  0001 C CNN
	1    1780 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1545 7080 1545 7000
Wire Wire Line
	1545 7000 1580 7000
Wire Wire Line
	2035 7000 1980 7000
$Comp
L nfc_copy_cat-rescue:Switch_SW_Push-Bast_WAN-cache SW4
U 1 1 61120039
P 2670 7010
F 0 "SW4" H 2770 7260 50  0000 R CNN
F 1 "NFC" H 2755 7185 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 2670 7210 50  0001 C CNN
F 3 "" H 2670 7210 50  0001 C CNN
	1    2670 7010
	1    0    0    -1  
$EndComp
Wire Wire Line
	2430 7060 2430 7010
Wire Wire Line
	2430 7010 2470 7010
Wire Wire Line
	2870 7010 2920 7010
$Comp
L nfc_copy_cat-rescue:SW_DPST_x2-Switch SW1
U 1 1 607BCC65
P 1295 2630
F 0 "SW1" H 1295 2865 50  0000 C CNN
F 1 "ON/OFF" H 1295 2774 50  0000 C CNN
F 2 "hardware:Micro_interruptor_SPDT" H 1295 2630 50  0001 C CNN
F 3 "" H 1295 2630 50  0001 C CNN
	1    1295 2630
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U4
U 1 1 5D138B32
P 1280 3955
F 0 "U4" H 1125 4300 50  0000 C CNN
F 1 "MCP73831-2-OT" H 1155 4190 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1330 3705 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 1130 3905 50  0001 C CNN
	1    1280 3955
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 6110E900
P 5555 5675
F 0 "D3" V 5601 5607 50  0000 R CNN
F 1 "LED" V 5510 5607 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5555 5675 50  0001 C CNN
F 3 "~" V 5555 5675 50  0001 C CNN
	1    5555 5675
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6110E906
P 5555 5925
F 0 "R4" H 5614 5971 50  0000 L CNN
F 1 "330" H 5614 5880 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5555 5925 50  0001 C CNN
F 3 "~" H 5555 5925 50  0001 C CNN
	1    5555 5925
	1    0    0    -1  
$EndComp
$Comp
L nfc_copy_cat-rescue:GND-MagSpoofTC-cache #PWR030
U 1 1 6110E90C
P 5555 6075
F 0 "#PWR030" H 5555 5825 50  0001 C CNN
F 1 "GND" H 5560 5902 50  0000 C CNN
F 2 "" H 5555 6075 50  0000 C CNN
F 3 "" H 5555 6075 50  0000 C CNN
	1    5555 6075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5555 5525 5555 5575
Wire Wire Line
	5555 5775 5555 5825
Wire Wire Line
	5555 6025 5555 6075
Text Label 5555 5525 0    50   ~ 0
ON
Wire Wire Line
	1495 2630 1535 2630
Wire Wire Line
	1730 2830 1600 2830
Wire Wire Line
	1600 2830 1600 2630
Connection ~ 1600 2630
Wire Wire Line
	1600 2630 1730 2630
Connection ~ 2050 880 
Wire Wire Line
	2205 880  2050 880 
Text Label 2205 880  0    79   ~ 0
ON
Wire Wire Line
	2050 880  2050 820 
$Comp
L nfc_copy_cat-rescue:VCC-MagSpoofTC-cache #PWR01
U 1 1 5D11AC9C
P 2050 820
F 0 "#PWR01" H 2050 670 50  0001 C CNN
F 1 "VCC" V 2067 948 50  0000 L CNN
F 2 "" H 2050 820 50  0000 C CNN
F 3 "" H 2050 820 50  0000 C CNN
	1    2050 820 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 880  2050 880 
Wire Wire Line
	930  2630 1095 2630
Connection ~ 1535 2630
Wire Wire Line
	1535 2630 1600 2630
Wire Wire Line
	655  2630 855  2630
Wire Wire Line
	855  2715 855  2630
Connection ~ 855  2630
Wire Wire Line
	855  2630 930  2630
$EndSCHEMATC
