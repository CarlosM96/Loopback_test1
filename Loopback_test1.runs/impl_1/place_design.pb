
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a200t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3149.2152default:default2
0.0002default:default2
6462default:default2
71672default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 12fe36567
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.03 ; elapsed = 00:00:00.05 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 646 ; free virtual = 71672default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3149.2152default:default2
0.0002default:default2
6462default:default2
71672default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1051f6ed6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 623 ; free virtual = 71452default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 110ead615
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:17 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 576 ; free virtual = 70972default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 110ead615
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:17 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 576 ; free virtual = 70972default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 110ead615
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:31 ; elapsed = 00:00:17 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 573 ; free virtual = 70942default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 164714b5e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:42 ; elapsed = 00:00:21 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 553 ; free virtual = 70742default:defaulth px? 
x

Phase %s%s
101*constraints2
2.2 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.2.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
02default:default2
1252default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
02default:default2
02default:default2
02default:default2
02default:defaultZ32-1044h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
512default:default2!
nets or cells2default:default2
02default:default2
cell2default:default2
512default:default2
cells2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
112default:default2
nets2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[0]rx/consume[0]2default:default2
542default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[1]rx/consume[1]2default:default2
542default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[2]rx/consume[2]2default:default2
542default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[3]rx/consume[3]2default:default2
542default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[4]rx/consume[4]2default:default2
542default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/consume[5]rx/consume[5]2default:default2
552default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/produce[9]rx/produce[9]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth26
rx/consume_0[6]rx/consume_0[6]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth26
rx/consume_0[7]rx/consume_0[7]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/produce[8]rx/produce[8]2default:default2
112default:default8Z32-81h px? 
?
'Processed net %s. Replicated %s times.
81*physynth22
rx/produce[6]rx/produce[6]2default:default2
112default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
112default:default2
nets2default:default2
3802default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
112default:default2!
nets or cells2default:default2
3802default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.242default:default2
00:00:00.242default:default2
3149.2152default:default2
0.0002default:default2
5192default:default2
70402default:defaultZ17-722h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3149.2152default:default2
0.0002default:default2
5192default:default2
70412default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |            0  |             51  |                    51  |           0  |           1  |  00:00:01  |
|  Very High Fanout                                 |          380  |              0  |                    11  |           0  |           1  |  00:00:38  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          380  |             51  |                    62  |           0  |           8  |  00:00:39  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.2.1 Physical Synthesis In Placer | Checksum: 29014ebfc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:23 ; elapsed = 00:01:50 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 518 ; free virtual = 70402default:defaulth px? 
K
6Phase 2.2 Global Placement Core | Checksum: 1d769a73c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:38 ; elapsed = 00:01:56 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 515 ; free virtual = 70372default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1d769a73c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:38 ; elapsed = 00:01:56 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 523 ; free virtual = 70452default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 2335ff9d1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:55 ; elapsed = 00:02:02 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 518 ; free virtual = 70402default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 13804d89a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:12 ; elapsed = 00:02:46 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 493 ; free virtual = 70232default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 14ecf7e1e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:13 ; elapsed = 00:02:47 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 493 ; free virtual = 70232default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1aac87280
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:13 ; elapsed = 00:02:47 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 493 ; free virtual = 70232default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 14d57fc35
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:48 ; elapsed = 00:03:01 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 497 ; free virtual = 70282default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 24ab1f619
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:54 ; elapsed = 00:03:05 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 477 ; free virtual = 70082default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 1b45b7779
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:54 ; elapsed = 00:03:06 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 484 ; free virtual = 70142default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 158647b57
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:55 ; elapsed = 00:03:06 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 484 ; free virtual = 70142default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 182606dd1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:39 ; elapsed = 00:03:21 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 476 ; free virtual = 70072default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 182606dd1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:39 ; elapsed = 00:03:21 . Memory (MB): peak = 3149.215 ; gain = 0.000 ; free physical = 476 ; free virtual = 70072default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 10a925aba
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
42default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-0.1862default:default2
-1.9272default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 1cac4369b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:07 ; elapsed = 00:00:03 . Memory (MB): peak = 3154.004 ; gain = 0.000 ; free physical = 465 ; free virtual = 69952default:defaulth px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 1ae1e878c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:08 ; elapsed = 00:00:04 . Memory (MB): peak = 3154.004 ; gain = 0.000 ; free physical = 465 ; free virtual = 69962default:defaulth px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 10a925aba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:07:20 ; elapsed = 00:03:40 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 466 ; free virtual = 69962default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
0.0532default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1ad54b713
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:29 ; elapsed = 00:04:23 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 462 ; free virtual = 69932default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1ad54b713
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:30 ; elapsed = 00:04:23 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 462 ; free virtual = 69932default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1ad54b713
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:30 ; elapsed = 00:04:24 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 469 ; free virtual = 69992default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1ad54b713
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:31 ; elapsed = 00:04:24 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 469 ; free virtual = 70002default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
3154.0042default:default2
0.0002default:default2
4692default:default2
70002default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 196ddf7d3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:31 ; elapsed = 00:04:24 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 469 ; free virtual = 70002default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 196ddf7d3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:31 ; elapsed = 00:04:24 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 469 ; free virtual = 70002default:defaulth px? 
=
(Ending Placer Task | Checksum: dae6c535
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:31 ; elapsed = 00:04:25 . Memory (MB): peak = 3154.004 ; gain = 4.789 ; free physical = 469 ; free virtual = 70002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
822default:default2
52default:default2
32default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:08:372default:default2
00:04:302default:default2
3154.0042default:default2
4.7892default:default2
5162default:default2
70462default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:082default:default2
00:00:032default:default2
3162.0082default:default2
0.0042default:default2
4762default:default2
70392default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2s
_/home/daphnelme/Desktop/fullModeDAPHNE/Loopback_test1/Loopback_test1.runs/impl_1/top_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:102default:default2
00:00:052default:default2
3162.0082default:default2
8.0042default:default2
5022default:default2
70392default:defaultZ17-722h px? 
^
%s4*runtcl2B
.Executing : report_io -file top_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.15 ; elapsed = 00:00:00.25 . Memory (MB): peak = 3162.008 ; gain = 0.000 ; free physical = 484 ; free virtual = 7022
*commonh px? 
?
%s4*runtcl2r
^Executing : report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb
2default:defaulth px? 
{
%s4*runtcl2_
KExecuting : report_control_sets -verbose -file top_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.28 ; elapsed = 00:00:00.37 . Memory (MB): peak = 3162.008 ; gain = 0.000 ; free physical = 498 ; free virtual = 7037
*commonh px? 


End Record