
h
Command: %s
1870*	planAhead23
open_checkpoint main_routed.dcp2default:defaultZ12-2866h px? 
^

Starting %s Task
103*constraints2#
open_checkpoint2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.046 . Memory (MB): peak = 1273.887 ; gain = 0.0002default:defaulth px? 
?
?The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board2;
'digilentinc.com:nexys-a7-100t:part0:1.22default:defaultZ49-67h px? 
?
?The board_part definition was not found for %s. Valid board_part values can be retrieved with the 'get_board_parts' Tcl command.
32*board2;
'digilentinc.com:nexys-a7-100t:part0:1.22default:defaultZ49-67h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1273.8872default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
522default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2022.12default:defaultZ1-479h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
L
*Restoring timing data from binary archive.264*timingZ38-478h px? 
F
$Binary timing data restore complete.265*timingZ38-479h px? 
L
*Restoring constraints from binary archive.481*projectZ1-856h px? 
E
#Binary constraint restore complete.478*projectZ1-853h px? 
?
Reading XDEF placement.
206*designutilsZ20-206h px? 
D
Reading placer database...
1602*designutilsZ20-1892h px? 
=
Reading XDEF routing.
207*designutilsZ20-207h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
Read XDEF Files: 2default:default2
00:00:002default:default2 
00:00:00.1242default:default2
1463.9222default:default2
7.8482default:defaultZ17-268h px? 
?
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2
1.0000002default:default2
0.0000002default:defaultZ20-1924h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common20
Finished XDEF File Restore: 2default:default2
00:00:002default:default2 
00:00:00.1252default:default2
1463.9222default:default2
7.8482default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1463.9222default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
'Checkpoint was created with %s build %s378*project2+
Vivado v2022.1 (64-bit)2default:default2
35262622default:defaultZ1-604h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
open_checkpoint: 2default:default2
00:00:182default:default2
00:00:192default:default2
1463.9222default:default2
190.0352default:defaultZ17-268h px? 
d
Command: %s
53*	vivadotcl23
write_bitstream -force main.bit2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
G
"No user IP repositories specified
1154*coregenZ19-1704h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2F
 "0
lis_A/signallis_A/signal2default:default2default:default2l
 "V
lis_A/current_count[7]_i_1__3/Olis_A/current_count[7]_i_1__3/O2default:default2default:default2h
 "R
lis_A/current_count[7]_i_1__3	lis_A/current_count[7]_i_1__32default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2H
 "2
lis_AP/signallis_AP/signal2default:default2default:default2n
 "X
 lis_AP/current_count[7]_i_1__6/O lis_AP/current_count[7]_i_1__6/O2default:default2default:default2j
 "T
lis_AP/current_count[7]_i_1__6	lis_AP/current_count[7]_i_1__62default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2F
 "0
lis_B/signallis_B/signal2default:default2default:default2f
 "P
lis_B/current_count[7]_i_1/Olis_B/current_count[7]_i_1/O2default:default2default:default2b
 "L
lis_B/current_count[7]_i_1	lis_B/current_count[7]_i_12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2J
 "4
lis_B/signal_0lis_B/signal_02default:default2default:default2l
 "V
lis_B/current_count[7]_i_1__1/Olis_B/current_count[7]_i_1__1/O2default:default2default:default2h
 "R
lis_B/current_count[7]_i_1__1	lis_B/current_count[7]_i_1__12default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2J
 "4
lis_B/signal_1lis_B/signal_12default:default2default:default2l
 "V
lis_B/current_count[7]_i_1__4/Olis_B/current_count[7]_i_1__4/O2default:default2default:default2h
 "R
lis_B/current_count[7]_i_1__4	lis_B/current_count[7]_i_1__42default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2H
 "2
lis_BP/signallis_BP/signal2default:default2default:default2n
 "X
 lis_BP/current_count[7]_i_1__0/O lis_BP/current_count[7]_i_1__0/O2default:default2default:default2j
 "T
lis_BP/current_count[7]_i_1__0	lis_BP/current_count[7]_i_1__02default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2L
 "6
lis_BP/signal_0lis_BP/signal_02default:default2default:default2n
 "X
 lis_BP/current_count[7]_i_1__2/O lis_BP/current_count[7]_i_1__2/O2default:default2default:default2j
 "T
lis_BP/current_count[7]_i_1__2	lis_BP/current_count[7]_i_1__22default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2L
 "6
lis_BP/signal_1lis_BP/signal_12default:default2default:default2n
 "X
 lis_BP/current_count[7]_i_1__5/O lis_BP/current_count[7]_i_1__5/O2default:default2default:default2j
 "T
lis_BP/current_count[7]_i_1__5	lis_BP/current_count[7]_i_1__52default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Gated clock check: Net %s is a gated clock net sourced by a combinational pin %s, cell %s. This is not good design practice and will likely impact performance. For SLICE registers, for example, use the CE pin to control the loading of data.%s*DRC2L
 "6
lis_BP/signal_2lis_BP/signal_22default:default2default:default2n
 "X
 lis_BP/current_count[7]_i_1__7/O lis_BP/current_count[7]_i_1__7/O2default:default2default:default2j
 "T
lis_BP/current_count[7]_i_1__7	lis_BP/current_count[7]_i_1__72default:default2default:default2=
 %DRC|Physical Configuration|Chip Level2default:default8ZPDRC-153h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2h
 "R
lis_A/current_count[7]_i_1__3	lis_A/current_count[7]_i_1__32default:default2default:default2?
 "P
count_0/current_count_reg[0]	count_0/current_count_reg[0]2default:default"P
count_0/current_count_reg[1]	count_0/current_count_reg[1]2default:default"P
count_0/current_count_reg[2]	count_0/current_count_reg[2]2default:default"P
count_0/current_count_reg[3]	count_0/current_count_reg[3]2default:default"P
count_0/current_count_reg[4]	count_0/current_count_reg[4]2default:default"P
count_0/current_count_reg[5]	count_0/current_count_reg[5]2default:default"P
count_0/current_count_reg[6]	count_0/current_count_reg[6]2default:default"P
count_0/current_count_reg[7]	count_0/current_count_reg[7]2default:default"8
count_0/q_reg[0]	count_0/q_reg[0]2default:default"8
count_0/q_reg[1]	count_0/q_reg[1]2default:default"8
count_0/q_reg[2]	count_0/q_reg[2]2default:default"8
count_0/q_reg[3]	count_0/q_reg[3]2default:default"8
count_0/q_reg[4]	count_0/q_reg[4]2default:default"8
count_0/q_reg[5]	count_0/q_reg[5]2default:default"4
count_0/q_reg[6]	count_0/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2j
 "T
lis_AP/current_count[7]_i_1__6	lis_AP/current_count[7]_i_1__62default:default2default:default2?
 "P
count_3/current_count_reg[0]	count_3/current_count_reg[0]2default:default"P
count_3/current_count_reg[1]	count_3/current_count_reg[1]2default:default"P
count_3/current_count_reg[2]	count_3/current_count_reg[2]2default:default"P
count_3/current_count_reg[3]	count_3/current_count_reg[3]2default:default"P
count_3/current_count_reg[4]	count_3/current_count_reg[4]2default:default"P
count_3/current_count_reg[5]	count_3/current_count_reg[5]2default:default"P
count_3/current_count_reg[6]	count_3/current_count_reg[6]2default:default"P
count_3/current_count_reg[7]	count_3/current_count_reg[7]2default:default"8
count_3/q_reg[0]	count_3/q_reg[0]2default:default"8
count_3/q_reg[1]	count_3/q_reg[1]2default:default"8
count_3/q_reg[2]	count_3/q_reg[2]2default:default"8
count_3/q_reg[3]	count_3/q_reg[3]2default:default"8
count_3/q_reg[4]	count_3/q_reg[4]2default:default"8
count_3/q_reg[5]	count_3/q_reg[5]2default:default"4
count_3/q_reg[6]	count_3/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2b
 "L
lis_B/current_count[7]_i_1	lis_B/current_count[7]_i_12default:default2default:default2?
 "P
count_4/current_count_reg[0]	count_4/current_count_reg[0]2default:default"P
count_4/current_count_reg[1]	count_4/current_count_reg[1]2default:default"P
count_4/current_count_reg[2]	count_4/current_count_reg[2]2default:default"P
count_4/current_count_reg[3]	count_4/current_count_reg[3]2default:default"P
count_4/current_count_reg[4]	count_4/current_count_reg[4]2default:default"P
count_4/current_count_reg[5]	count_4/current_count_reg[5]2default:default"P
count_4/current_count_reg[6]	count_4/current_count_reg[6]2default:default"P
count_4/current_count_reg[7]	count_4/current_count_reg[7]2default:default"8
count_4/q_reg[0]	count_4/q_reg[0]2default:default"8
count_4/q_reg[1]	count_4/q_reg[1]2default:default"8
count_4/q_reg[2]	count_4/q_reg[2]2default:default"8
count_4/q_reg[3]	count_4/q_reg[3]2default:default"8
count_4/q_reg[4]	count_4/q_reg[4]2default:default"8
count_4/q_reg[5]	count_4/q_reg[5]2default:default"4
count_4/q_reg[6]	count_4/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2h
 "R
lis_B/current_count[7]_i_1__1	lis_B/current_count[7]_i_1__12default:default2default:default2?
 "P
count_6/current_count_reg[0]	count_6/current_count_reg[0]2default:default"P
count_6/current_count_reg[1]	count_6/current_count_reg[1]2default:default"P
count_6/current_count_reg[2]	count_6/current_count_reg[2]2default:default"P
count_6/current_count_reg[3]	count_6/current_count_reg[3]2default:default"P
count_6/current_count_reg[4]	count_6/current_count_reg[4]2default:default"P
count_6/current_count_reg[5]	count_6/current_count_reg[5]2default:default"P
count_6/current_count_reg[6]	count_6/current_count_reg[6]2default:default"P
count_6/current_count_reg[7]	count_6/current_count_reg[7]2default:default"8
count_6/q_reg[0]	count_6/q_reg[0]2default:default"8
count_6/q_reg[1]	count_6/q_reg[1]2default:default"8
count_6/q_reg[2]	count_6/q_reg[2]2default:default"8
count_6/q_reg[3]	count_6/q_reg[3]2default:default"8
count_6/q_reg[4]	count_6/q_reg[4]2default:default"8
count_6/q_reg[5]	count_6/q_reg[5]2default:default"4
count_6/q_reg[6]	count_6/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2h
 "R
lis_B/current_count[7]_i_1__4	lis_B/current_count[7]_i_1__42default:default2default:default2?
 "P
count_1/current_count_reg[0]	count_1/current_count_reg[0]2default:default"P
count_1/current_count_reg[1]	count_1/current_count_reg[1]2default:default"P
count_1/current_count_reg[2]	count_1/current_count_reg[2]2default:default"P
count_1/current_count_reg[3]	count_1/current_count_reg[3]2default:default"P
count_1/current_count_reg[4]	count_1/current_count_reg[4]2default:default"P
count_1/current_count_reg[5]	count_1/current_count_reg[5]2default:default"P
count_1/current_count_reg[6]	count_1/current_count_reg[6]2default:default"P
count_1/current_count_reg[7]	count_1/current_count_reg[7]2default:default"8
count_1/q_reg[0]	count_1/q_reg[0]2default:default"8
count_1/q_reg[1]	count_1/q_reg[1]2default:default"8
count_1/q_reg[2]	count_1/q_reg[2]2default:default"8
count_1/q_reg[3]	count_1/q_reg[3]2default:default"8
count_1/q_reg[4]	count_1/q_reg[4]2default:default"8
count_1/q_reg[5]	count_1/q_reg[5]2default:default"4
count_1/q_reg[6]	count_1/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2j
 "T
lis_BP/current_count[7]_i_1__0	lis_BP/current_count[7]_i_1__02default:default2default:default2?
 "P
count_5/current_count_reg[0]	count_5/current_count_reg[0]2default:default"P
count_5/current_count_reg[1]	count_5/current_count_reg[1]2default:default"P
count_5/current_count_reg[2]	count_5/current_count_reg[2]2default:default"P
count_5/current_count_reg[3]	count_5/current_count_reg[3]2default:default"P
count_5/current_count_reg[4]	count_5/current_count_reg[4]2default:default"P
count_5/current_count_reg[5]	count_5/current_count_reg[5]2default:default"P
count_5/current_count_reg[6]	count_5/current_count_reg[6]2default:default"P
count_5/current_count_reg[7]	count_5/current_count_reg[7]2default:default"8
count_5/q_reg[0]	count_5/q_reg[0]2default:default"8
count_5/q_reg[1]	count_5/q_reg[1]2default:default"8
count_5/q_reg[2]	count_5/q_reg[2]2default:default"8
count_5/q_reg[3]	count_5/q_reg[3]2default:default"8
count_5/q_reg[4]	count_5/q_reg[4]2default:default"8
count_5/q_reg[5]	count_5/q_reg[5]2default:default"4
count_5/q_reg[6]	count_5/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2j
 "T
lis_BP/current_count[7]_i_1__2	lis_BP/current_count[7]_i_1__22default:default2default:default2?
 "P
count_7/current_count_reg[0]	count_7/current_count_reg[0]2default:default"P
count_7/current_count_reg[1]	count_7/current_count_reg[1]2default:default"P
count_7/current_count_reg[2]	count_7/current_count_reg[2]2default:default"P
count_7/current_count_reg[3]	count_7/current_count_reg[3]2default:default"P
count_7/current_count_reg[4]	count_7/current_count_reg[4]2default:default"P
count_7/current_count_reg[5]	count_7/current_count_reg[5]2default:default"P
count_7/current_count_reg[6]	count_7/current_count_reg[6]2default:default"P
count_7/current_count_reg[7]	count_7/current_count_reg[7]2default:default"8
count_7/q_reg[0]	count_7/q_reg[0]2default:default"8
count_7/q_reg[1]	count_7/q_reg[1]2default:default"8
count_7/q_reg[2]	count_7/q_reg[2]2default:default"8
count_7/q_reg[3]	count_7/q_reg[3]2default:default"8
count_7/q_reg[4]	count_7/q_reg[4]2default:default"8
count_7/q_reg[5]	count_7/q_reg[5]2default:default"4
count_7/q_reg[6]	count_7/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2j
 "T
lis_BP/current_count[7]_i_1__5	lis_BP/current_count[7]_i_1__52default:default2default:default2?
 "P
count_2/current_count_reg[0]	count_2/current_count_reg[0]2default:default"P
count_2/current_count_reg[1]	count_2/current_count_reg[1]2default:default"P
count_2/current_count_reg[2]	count_2/current_count_reg[2]2default:default"P
count_2/current_count_reg[3]	count_2/current_count_reg[3]2default:default"P
count_2/current_count_reg[4]	count_2/current_count_reg[4]2default:default"P
count_2/current_count_reg[5]	count_2/current_count_reg[5]2default:default"P
count_2/current_count_reg[6]	count_2/current_count_reg[6]2default:default"P
count_2/current_count_reg[7]	count_2/current_count_reg[7]2default:default"8
count_2/q_reg[0]	count_2/q_reg[0]2default:default"8
count_2/q_reg[1]	count_2/q_reg[1]2default:default"8
count_2/q_reg[2]	count_2/q_reg[2]2default:default"8
count_2/q_reg[3]	count_2/q_reg[3]2default:default"8
count_2/q_reg[4]	count_2/q_reg[4]2default:default"8
count_2/q_reg[5]	count_2/q_reg[5]2default:default"4
count_2/q_reg[6]	count_2/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
?
?Non-Optimal connections which could lead to hold violations: A LUT %s is driving clock pin of 16 cells. This could lead to large hold time violations. Involved cells are:
%s%s*DRC2j
 "T
lis_BP/current_count[7]_i_1__7	lis_BP/current_count[7]_i_1__72default:default2default:default2?
 "P
count_8/current_count_reg[0]	count_8/current_count_reg[0]2default:default"P
count_8/current_count_reg[1]	count_8/current_count_reg[1]2default:default"P
count_8/current_count_reg[2]	count_8/current_count_reg[2]2default:default"P
count_8/current_count_reg[3]	count_8/current_count_reg[3]2default:default"P
count_8/current_count_reg[4]	count_8/current_count_reg[4]2default:default"P
count_8/current_count_reg[5]	count_8/current_count_reg[5]2default:default"P
count_8/current_count_reg[6]	count_8/current_count_reg[6]2default:default"P
count_8/current_count_reg[7]	count_8/current_count_reg[7]2default:default"8
count_8/q_reg[0]	count_8/q_reg[0]2default:default"8
count_8/q_reg[1]	count_8/q_reg[1]2default:default"8
count_8/q_reg[2]	count_8/q_reg[2]2default:default"8
count_8/q_reg[3]	count_8/q_reg[3]2default:default"8
count_8/q_reg[4]	count_8/q_reg[4]2default:default"8
count_8/q_reg[5]	count_8/q_reg[5]2default:default"4
count_8/q_reg[6]	count_8/q_reg[6]2default:..."/
(the first 15 of 16 listed)2default:default2default:default2A
 )DRC|Implementation|Placement|DesignChecks2default:default8ZPLHOLDVIO-2h px? 
g
DRC finished with %s
1905*	planAhead2)
0 Errors, 19 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
i
)Running write_bitstream with %s threads.
1750*designutils2
22default:defaultZ20-2272h px? 
?
Loading data files...
1271*designutilsZ12-1165h px? 
>
Loading site data...
1273*designutilsZ12-1167h px? 
?
Loading route data...
1272*designutilsZ12-1166h px? 
?
Processing options...
1362*designutilsZ12-1514h px? 
<
Creating bitmap...
1249*designutilsZ12-1141h px? 
7
Creating bitstream...
7*	bitstreamZ40-7h px? 
[
Writing bitstream %s...
11*	bitstream2

./main.bit2default:defaultZ40-11h px? 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px? 
?
?WebTalk data collection is mandatory when using a ULT device. To see the specific WebTalk data collected for your design, open the usage_statistics_webtalk.html or usage_statistics_webtalk.xml file in the implementation directory.698*projectZ1-1876h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222default:default2
192default:default2
22default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
write_bitstream2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:142default:default2
00:00:132default:default2
1962.6212default:default2
498.6992default:defaultZ17-268h px? 


End Record