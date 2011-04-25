;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Apr 25 23:33:50 2011                                *
;******************************************************************************

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 3                                   *
;*   Optimizing for    : Speed                                                *
;*                       Based on options: -o3, no -ms                        *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Enabled                                              *
;*   Speculate Loads   : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("serial_asm")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
	.sect	".text"
	.global _edge_detection_la
	.sect	".text"

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("edge_detection_la"), DW_AT_symbol_name("_edge_detection_la")
	.dwattr DW$1, DW_AT_low_pc(_edge_detection_la)
	.dwattr DW$1, DW_AT_high_pc(0x00)
	.dwattr DW$1, DW_AT_begin_file("edge_detection_la.sa")
	.dwattr DW$1, DW_AT_begin_line(0x04)
	.dwattr DW$1, DW_AT_begin_column(0x01)
	.dwpsn	"edge_detection_la.sa",4,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _edge_detection_la                                          *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5,A6,A7,A8,A9,B0,B4,B5,B6,B7,B8,A16,A17       *
;*   Regs Used         : A3,A4,A5,A6,A7,A8,A9,B0,B3,B4,B5,B6,B7,B8,DP,SP,A16, *
;*                           A17                                              *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o3) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_edge_detection_la:

	.map	pEdgemap/B4
	.map	pEdgemap'/B5
	.map	y_minus_0/A6
	.map	y_minus_1/A7
	.map	x_plus_0/A6
	.map	x_plus_0'/B7
	.map	x_plus_1/A7
	.map	index_y_minus/A4
	.map	gradientX_0/B7
	.map	gradientX_1/A4
	.map	comparison_0/B6
	.map	comparison_1/A4
	.map	gradientY_0/B6
	.map	gradientY_1/A5
	.map	index_x_plus/A5
	.map	threshold/A8
	.map	threshold'/A17
	.map	x_minus_0/A8
	.map	edge_0/B6
	.map	x_minus_1/A9
	.map	edge_1/B7
	.map	count/A6
	.map	count'/B0
	.map	count''/B4
	.map	index_y_plus/A4
	.map	widthx/B6
	.map	widthx'/A16
	.map	gradient_int_0/B6
	.map	gradient_int_1/A4
	.map	pFrame_1/A3
	.map	pFrame_1'/A4
	.map	y_plus_0/A4
	.map	y_plus_0'/B6
	.map	y_plus_1/A5
	.map	index_x_minus/A4

;** --------------------------------------------------------------------------*
;
;
; _edge_detection_la .cproc pFrame_1, pEdgemap, count, widthx, threshold
; 				   .reg index_x_plus, index_x_minus, index_y_plus, index_y_minus
; 				   .reg x_plus_1:x_plus_0, x_minus_1:x_minus_0
; 				   .reg y_plus_1:y_plus_0, y_minus_1:y_minus_0
; 				   .reg gradientX_1, gradientX_0, gradientY_1, gradientY_0
; 				   .reg gradient_int_1, gradient_int_0
; 				   .reg comparison_1, comparison_0, edge_1, edge_0
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$2	.dwtag  DW_TAG_variable, DW_AT_name("pEdgemap"), DW_AT_symbol_name("pEdgemap")
	.dwattr DW$2, DW_AT_type(*DW$T$10)
	.dwattr DW$2, DW_AT_location[DW_OP_reg20]
DW$3	.dwtag  DW_TAG_variable, DW_AT_name("y_minus_0"), DW_AT_symbol_name("y_minus_0")
	.dwattr DW$3, DW_AT_type(*DW$T$10)
	.dwattr DW$3, DW_AT_location[DW_OP_reg6]
DW$4	.dwtag  DW_TAG_variable, DW_AT_name("y_minus_1"), DW_AT_symbol_name("y_minus_1")
	.dwattr DW$4, DW_AT_type(*DW$T$10)
	.dwattr DW$4, DW_AT_location[DW_OP_reg7]
DW$5	.dwtag  DW_TAG_variable, DW_AT_name("x_plus_0"), DW_AT_symbol_name("x_plus_0")
	.dwattr DW$5, DW_AT_type(*DW$T$10)
	.dwattr DW$5, DW_AT_location[DW_OP_reg6]
DW$6	.dwtag  DW_TAG_variable, DW_AT_name("x_plus_1"), DW_AT_symbol_name("x_plus_1")
	.dwattr DW$6, DW_AT_type(*DW$T$10)
	.dwattr DW$6, DW_AT_location[DW_OP_reg7]
DW$7	.dwtag  DW_TAG_variable, DW_AT_name("index_y_minus"), DW_AT_symbol_name("index_y_minus")
	.dwattr DW$7, DW_AT_type(*DW$T$10)
	.dwattr DW$7, DW_AT_location[DW_OP_reg4]
DW$8	.dwtag  DW_TAG_variable, DW_AT_name("gradientX_0"), DW_AT_symbol_name("gradientX_0")
	.dwattr DW$8, DW_AT_type(*DW$T$10)
	.dwattr DW$8, DW_AT_location[DW_OP_reg23]
DW$9	.dwtag  DW_TAG_variable, DW_AT_name("gradientX_1"), DW_AT_symbol_name("gradientX_1")
	.dwattr DW$9, DW_AT_type(*DW$T$10)
	.dwattr DW$9, DW_AT_location[DW_OP_reg4]
DW$10	.dwtag  DW_TAG_variable, DW_AT_name("comparison_0"), DW_AT_symbol_name("comparison_0")
	.dwattr DW$10, DW_AT_type(*DW$T$10)
	.dwattr DW$10, DW_AT_location[DW_OP_reg22]
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("comparison_1"), DW_AT_symbol_name("comparison_1")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_location[DW_OP_reg4]
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("gradientY_0"), DW_AT_symbol_name("gradientY_0")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_location[DW_OP_reg22]
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("gradientY_1"), DW_AT_symbol_name("gradientY_1")
	.dwattr DW$13, DW_AT_type(*DW$T$10)
	.dwattr DW$13, DW_AT_location[DW_OP_reg5]
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("index_x_plus"), DW_AT_symbol_name("index_x_plus")
	.dwattr DW$14, DW_AT_type(*DW$T$10)
	.dwattr DW$14, DW_AT_location[DW_OP_reg5]
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("threshold"), DW_AT_symbol_name("threshold")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_location[DW_OP_reg8]
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("x_minus_0"), DW_AT_symbol_name("x_minus_0")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_location[DW_OP_reg8]
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("edge_0"), DW_AT_symbol_name("edge_0")
	.dwattr DW$17, DW_AT_type(*DW$T$10)
	.dwattr DW$17, DW_AT_location[DW_OP_reg22]
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("x_minus_1"), DW_AT_symbol_name("x_minus_1")
	.dwattr DW$18, DW_AT_type(*DW$T$10)
	.dwattr DW$18, DW_AT_location[DW_OP_reg9]
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("edge_1"), DW_AT_symbol_name("edge_1")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_location[DW_OP_reg23]
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("count"), DW_AT_symbol_name("count")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_location[DW_OP_reg6]
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("index_y_plus"), DW_AT_symbol_name("index_y_plus")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_location[DW_OP_reg4]
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("widthx"), DW_AT_symbol_name("widthx")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_location[DW_OP_reg22]
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("gradient_int_0"), DW_AT_symbol_name("gradient_int_0")
	.dwattr DW$23, DW_AT_type(*DW$T$10)
	.dwattr DW$23, DW_AT_location[DW_OP_reg22]
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("gradient_int_1"), DW_AT_symbol_name("gradient_int_1")
	.dwattr DW$24, DW_AT_type(*DW$T$10)
	.dwattr DW$24, DW_AT_location[DW_OP_reg4]
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("pFrame_1"), DW_AT_symbol_name("pFrame_1")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_location[DW_OP_reg3]
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("pFrame_1"), DW_AT_symbol_name("pFrame_1")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_location[DW_OP_reg4]
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("y_plus_0"), DW_AT_symbol_name("y_plus_0")
	.dwattr DW$27, DW_AT_type(*DW$T$10)
	.dwattr DW$27, DW_AT_location[DW_OP_reg4]
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("y_plus_1"), DW_AT_symbol_name("y_plus_1")
	.dwattr DW$28, DW_AT_type(*DW$T$10)
	.dwattr DW$28, DW_AT_location[DW_OP_reg5]
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("index_x_minus"), DW_AT_symbol_name("index_x_minus")
	.dwattr DW$29, DW_AT_type(*DW$T$10)
	.dwattr DW$29, DW_AT_location[DW_OP_reg4]
           MV      .L1     pFrame_1',pFrame_1 ; |4| 
	.dwpsn	"edge_detection_la.sa",2,1
	.dwpsn	"edge_detection_la.sa",3,1
	.dwpsn	"edge_detection_la.sa",13,1

           MVC     .S2     CSR,B8
||         MV      .L1X    widthx,widthx'

           AND     .L2     -2,B8,B6
||         ADD     .L1X    count,widthx,index_y_plus ; |14| 
||         MV      .S2X    count,count'

           MVC     .S2     B6,CSR            ; interrupts off
||         MV      .L2X    count,count''
||         ADD     .L1     0x1,count,index_x_plus ; |12| 
||         MV      .S1     threshold,threshold'
||         MV      .D2     pEdgemap,pEdgemap'

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*
;*      Loop label : loop
;*      Loop source line                 : 12
;*      Loop closing brace source line   : 32
;*      Known Minimum Trip Count         : 1                    
;*      Known Max Trip Count Factor      : 1
;*      Loop Carried Dependency Bound(^) : 12
;*      Unpartitioned Resource Bound     : 4
;*      Partitioned Resource Bound(*)    : 5
;*      Resource Partition:
;*                                A-side   B-side
;*      .L units                     3        3     
;*      .S units                     2        1     
;*      .D units                     2        3     
;*      .M units                     1        1     
;*      .X cross paths               5*       4     
;*      .T address paths             3        2     
;*      Long read paths              0        0     
;*      Long write paths             0        0     
;*      Logical  ops (.LS)           1        0     (.L or .S unit)
;*      Addition ops (.LSD)          4        4     (.L or .S or .D unit)
;*      Bound(.L .S .LS)             3        2     
;*      Bound(.L .S .D .LS .LSD)     4        4     
;*
;*      Searching for software pipeline schedule at ...
;*         ii = 12 Did not find schedule
;*         ii = 13 Did not find schedule
;*         ii = 14 Did not find schedule
;*         ii = 15 Schedule found with 2 iterations in parallel
;*      Done
;*
;*      Collapsed epilog stages     : 1
;*      Prolog not removed
;*      Collapsed prolog stages     : 0
;*
;*      Minimum required memory pad : 0 bytes
;*
;*      Minimum safe trip count     : 1
;*----------------------------------------------------------------------------*
L1:    ; PIPED LOOP PROLOG
;** --------------------------------------------------------------------------*
loop:    ; PIPED LOOP KERNEL
DW$L$_edge_detection_la$3$B:

           LDDW    .D1T1   *+pFrame_1[index_y_plus],y_plus_1:y_plus_0 ; |18| <0,2>  ^ 
||         ADD     .L1X    0xffffffff,count',index_x_minus ; |13| <0,2> 

           LDDW    .D1T1   *+pFrame_1[index_x_plus],x_plus_1:x_plus_0 ; |16| <0,3>  ^ 

           SUB     .L1X    count',widthx',index_y_minus ; |15| <0,4> 
||         LDDW    .D1T1   *+pFrame_1[index_x_minus],x_minus_1:x_minus_0 ; |17| <0,4>  ^ 

           LDDW    .D1T1   *+pFrame_1[index_y_minus],y_minus_1:y_minus_0 ; |19| <0,5>  ^ 
           NOP             1
           MV      .L2X    y_plus_0,y_plus_0' ; |18| <0,7>  ^ Define a twin register
           MV      .L2X    x_plus_0,x_plus_0' ; |16| <0,8>  ^ Define a twin register

           SUBABS4 .L1     x_plus_1,x_minus_1,gradientX_1 ; |20| <0,9>  ^ 
||         SUBABS4 .L2X    x_plus_0',x_minus_0,gradientX_0 ; |21| <0,9>  ^ 

   [ count'] ADD   .S2     0xffffffff,count',count' ; |31| <0,10> 
||         SUBABS4 .L2X    y_plus_0',y_minus_0,gradientY_0 ; |23| <0,10>  ^ 
||         SUBABS4 .L1     y_plus_1,y_minus_1,gradientY_1 ; |22| <0,10>  ^ 

           ADD4    .L2     gradientX_0,gradientY_0,gradient_int_0 ; |25| <0,11>  ^ 
|| [ count'] B     .S2     loop              ; |32| <0,11> 
||         ADD4    .L1     gradientX_1,gradientY_1,gradient_int_1 ; |24| <0,11>  ^ 

           CMPGTU4 .S2X    gradient_int_0,threshold',comparison_0 ; |27| <0,12>  ^ 
||         CMPGTU4 .S1     gradient_int_1,threshold',comparison_1 ; |26| <0,12>  ^ 

           XPND4   .M2     comparison_0,edge_0 ; |29| <0,13>  ^ 
           XPND4   .M2X    comparison_1,edge_1 ; |28| <0,14>  ^ 
           ADD     .L1X    0x1,count',index_x_plus ; |12| <1,0> 

   [ count'] MV    .L2     count',count''    ; |31| <0,16> Inserted to break DPG cycle
||         STDW    .D2T2   edge_1:edge_0,*+pEdgemap'[count''] ; |30| <0,16>  ^ 
||         ADD     .L1X    count',widthx',index_y_plus ; |14| <1,1> 

DW$L$_edge_detection_la$3$E:
;** --------------------------------------------------------------------------*
L3:    ; PIPED LOOP EPILOG
           MVC     .S2     B8,CSR            ; interrupts on
	.dwcfa	0x0e, 0
	.dwpsn	"edge_detection_la.sa",34,1
           RETNOP  .S2     B3,5              ; |34| 
           ; BRANCH OCCURS {B3}              ; |34| 

DW$30	.dwtag  DW_TAG_loop
	.dwattr DW$30, DW_AT_name("D:\Documents and Settings\Hari\Ajay\EdgeDetection\edge_detection_la.asm:L2:1:1303770831")
	.dwattr DW$30, DW_AT_begin_file("edge_detection_la.sa")
	.dwattr DW$30, DW_AT_begin_line(0x0c)
	.dwattr DW$30, DW_AT_end_line(0x20)
DW$31	.dwtag  DW_TAG_loop_range
	.dwattr DW$31, DW_AT_low_pc(DW$L$_edge_detection_la$3$B)
	.dwattr DW$31, DW_AT_high_pc(DW$L$_edge_detection_la$3$E)
	.dwendtag DW$30

	.dwattr DW$1, DW_AT_end_file("edge_detection_la.sa")
	.dwattr DW$1, DW_AT_end_line(0x22)
	.dwattr DW$1, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$1

	.clearmap


; 		.endproc

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$32, DW_AT_location[DW_OP_reg0]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$33, DW_AT_location[DW_OP_reg1]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$34, DW_AT_location[DW_OP_reg2]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$35, DW_AT_location[DW_OP_reg3]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$36, DW_AT_location[DW_OP_reg4]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$37, DW_AT_location[DW_OP_reg5]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$38, DW_AT_location[DW_OP_reg6]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$39, DW_AT_location[DW_OP_reg7]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$40, DW_AT_location[DW_OP_reg8]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$41, DW_AT_location[DW_OP_reg9]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$42, DW_AT_location[DW_OP_reg10]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$43, DW_AT_location[DW_OP_reg11]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$44, DW_AT_location[DW_OP_reg12]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$45, DW_AT_location[DW_OP_reg13]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$46, DW_AT_location[DW_OP_reg14]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$47, DW_AT_location[DW_OP_reg15]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$48, DW_AT_location[DW_OP_reg16]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$49, DW_AT_location[DW_OP_reg17]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$50, DW_AT_location[DW_OP_reg18]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$51, DW_AT_location[DW_OP_reg19]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$52, DW_AT_location[DW_OP_reg20]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$53, DW_AT_location[DW_OP_reg21]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$54, DW_AT_location[DW_OP_reg22]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$55, DW_AT_location[DW_OP_reg23]
DW$56	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$56, DW_AT_location[DW_OP_reg24]
DW$57	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$57, DW_AT_location[DW_OP_reg25]
DW$58	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$58, DW_AT_location[DW_OP_reg26]
DW$59	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$59, DW_AT_location[DW_OP_reg27]
DW$60	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$60, DW_AT_location[DW_OP_reg28]
DW$61	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$61, DW_AT_location[DW_OP_reg29]
DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$62, DW_AT_location[DW_OP_reg30]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$63, DW_AT_location[DW_OP_reg31]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$64, DW_AT_location[DW_OP_regx 0x20]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$65, DW_AT_location[DW_OP_regx 0x21]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$66, DW_AT_location[DW_OP_regx 0x22]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$67, DW_AT_location[DW_OP_regx 0x23]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$68, DW_AT_location[DW_OP_regx 0x24]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$69, DW_AT_location[DW_OP_regx 0x25]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$70, DW_AT_location[DW_OP_regx 0x26]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$71, DW_AT_location[DW_OP_regx 0x27]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$72, DW_AT_location[DW_OP_regx 0x28]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$73, DW_AT_location[DW_OP_regx 0x29]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$74, DW_AT_location[DW_OP_regx 0x2a]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$75, DW_AT_location[DW_OP_regx 0x2b]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$76, DW_AT_location[DW_OP_regx 0x2c]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$77, DW_AT_location[DW_OP_regx 0x2d]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$78, DW_AT_location[DW_OP_regx 0x2e]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$79, DW_AT_location[DW_OP_regx 0x2f]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$80, DW_AT_location[DW_OP_regx 0x30]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$81, DW_AT_location[DW_OP_regx 0x31]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$82, DW_AT_location[DW_OP_regx 0x32]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$83, DW_AT_location[DW_OP_regx 0x33]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$84, DW_AT_location[DW_OP_regx 0x34]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$85, DW_AT_location[DW_OP_regx 0x35]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$86, DW_AT_location[DW_OP_regx 0x36]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$87, DW_AT_location[DW_OP_regx 0x37]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$88, DW_AT_location[DW_OP_regx 0x38]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$89, DW_AT_location[DW_OP_regx 0x39]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$90, DW_AT_location[DW_OP_regx 0x3a]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$91, DW_AT_location[DW_OP_regx 0x3b]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$92, DW_AT_location[DW_OP_regx 0x3c]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$93, DW_AT_location[DW_OP_regx 0x3d]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$94, DW_AT_location[DW_OP_regx 0x3e]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$95, DW_AT_location[DW_OP_regx 0x3f]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x40]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x41]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x42]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x43]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x44]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x45]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x46]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x47]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x48]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x49]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x4a]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x4b]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x4c]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x4d]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x4e]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x4f]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x50]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x51]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x52]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x53]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x54]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x55]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x56]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x57]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x58]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x59]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x5a]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x5b]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x5c]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x5d]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x5e]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x5f]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x60]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$129, DW_AT_location[DW_OP_regx 0x61]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$130, DW_AT_location[DW_OP_regx 0x62]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$131, DW_AT_location[DW_OP_regx 0x63]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$132, DW_AT_location[DW_OP_regx 0x64]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x65]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x66]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x67]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x68]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x69]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x6a]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x6b]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x6c]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x6d]
DW$142	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$142, DW_AT_location[DW_OP_regx 0x6e]
DW$143	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$143, DW_AT_location[DW_OP_regx 0x6f]
DW$144	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$144, DW_AT_location[DW_OP_regx 0x70]
DW$145	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$145, DW_AT_location[DW_OP_regx 0x71]
DW$146	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$146, DW_AT_location[DW_OP_regx 0x72]
DW$147	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$147, DW_AT_location[DW_OP_regx 0x73]
DW$148	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$148, DW_AT_location[DW_OP_regx 0x74]
DW$149	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$149, DW_AT_location[DW_OP_regx 0x75]
DW$150	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$150, DW_AT_location[DW_OP_regx 0x76]
DW$151	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$151, DW_AT_location[DW_OP_regx 0x77]
DW$152	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$152, DW_AT_location[DW_OP_regx 0x78]
DW$153	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$153, DW_AT_location[DW_OP_regx 0x79]
DW$154	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$154, DW_AT_location[DW_OP_regx 0x7a]
DW$155	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$155, DW_AT_location[DW_OP_regx 0x7b]
DW$156	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$156, DW_AT_location[DW_OP_regx 0x7c]
DW$157	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$157, DW_AT_location[DW_OP_regx 0x7d]
DW$158	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$158, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

