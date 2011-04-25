;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Mon Apr 25 23:49:40 2011                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=near --mem_model:data=far_aggregates --quiet --silicon_version=6400 

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
;*   Debug Info        : Optimized w/Profiling Info                           *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;	C:\CCStudio_v3.1\C6000\cgtools\bin\opt6x.exe D:\DOCUME~1\Hari\LOCALS~1\Temp\TI96820 D:\DOCUME~1\Hari\LOCALS~1\Temp\TI96814 
	.sect	".text:CSL_cfgInit"
	.global	_CSL_cfgInit

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL_cfgInit"), DW_AT_symbol_name("_CSL_cfgInit")
	.dwattr DW$1, DW_AT_low_pc(_CSL_cfgInit)
	.dwattr DW$1, DW_AT_high_pc(0x00)
	.dwattr DW$1, DW_AT_begin_file("D:\Documents and Settings\Hari\Ajay\EdgeDetection\C6416_DSK_FIRcfg_c.c")
	.dwattr DW$1, DW_AT_begin_line(0x20)
	.dwattr DW$1, DW_AT_begin_column(0x06)
	.dwattr DW$1, DW_AT_frame_base[DW_OP_breg31 0]
	.dwattr DW$1, DW_AT_skeletal(0x01)
	.dwpsn	"D:\Documents and Settings\Hari\Ajay\EdgeDetection\C6416_DSK_FIRcfg_c.c",33,1

;******************************************************************************
;* FUNCTION NAME: _CSL_cfgInit                                                *
;*                                                                            *
;*   Regs Modified     :                                                      *
;*   Regs Used         : B3                                                   *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************
_CSL_cfgInit:
;** --------------------------------------------------------------------------*
           RETNOP  .S2     B3,5              ; |34| 
           ; BRANCH OCCURS {B3}              ; |34| 
	.dwattr DW$1, DW_AT_end_file("D:\Documents and Settings\Hari\Ajay\EdgeDetection\C6416_DSK_FIRcfg_c.c")
	.dwattr DW$1, DW_AT_end_line(0x22)
	.dwattr DW$1, DW_AT_end_column(0x01)
	.dwendtag DW$1


;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$19	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

	.dwattr DW$1, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$2	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$2, DW_AT_location[DW_OP_reg0]
DW$3	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$3, DW_AT_location[DW_OP_reg1]
DW$4	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$4, DW_AT_location[DW_OP_reg2]
DW$5	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$5, DW_AT_location[DW_OP_reg3]
DW$6	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$6, DW_AT_location[DW_OP_reg4]
DW$7	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$7, DW_AT_location[DW_OP_reg5]
DW$8	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$8, DW_AT_location[DW_OP_reg6]
DW$9	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$9, DW_AT_location[DW_OP_reg7]
DW$10	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$10, DW_AT_location[DW_OP_reg8]
DW$11	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$11, DW_AT_location[DW_OP_reg9]
DW$12	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$12, DW_AT_location[DW_OP_reg10]
DW$13	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$13, DW_AT_location[DW_OP_reg11]
DW$14	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$14, DW_AT_location[DW_OP_reg12]
DW$15	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$15, DW_AT_location[DW_OP_reg13]
DW$16	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$16, DW_AT_location[DW_OP_reg14]
DW$17	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$17, DW_AT_location[DW_OP_reg15]
DW$18	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$18, DW_AT_location[DW_OP_reg16]
DW$19	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$19, DW_AT_location[DW_OP_reg17]
DW$20	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$20, DW_AT_location[DW_OP_reg18]
DW$21	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$21, DW_AT_location[DW_OP_reg19]
DW$22	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$22, DW_AT_location[DW_OP_reg20]
DW$23	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$23, DW_AT_location[DW_OP_reg21]
DW$24	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$24, DW_AT_location[DW_OP_reg22]
DW$25	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$25, DW_AT_location[DW_OP_reg23]
DW$26	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$26, DW_AT_location[DW_OP_reg24]
DW$27	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$27, DW_AT_location[DW_OP_reg25]
DW$28	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$28, DW_AT_location[DW_OP_reg26]
DW$29	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$29, DW_AT_location[DW_OP_reg27]
DW$30	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$30, DW_AT_location[DW_OP_reg28]
DW$31	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$31, DW_AT_location[DW_OP_reg29]
DW$32	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$32, DW_AT_location[DW_OP_reg30]
DW$33	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$33, DW_AT_location[DW_OP_reg31]
DW$34	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$34, DW_AT_location[DW_OP_regx 0x20]
DW$35	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$35, DW_AT_location[DW_OP_regx 0x21]
DW$36	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$36, DW_AT_location[DW_OP_regx 0x22]
DW$37	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$37, DW_AT_location[DW_OP_regx 0x23]
DW$38	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$38, DW_AT_location[DW_OP_regx 0x24]
DW$39	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$39, DW_AT_location[DW_OP_regx 0x25]
DW$40	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$40, DW_AT_location[DW_OP_regx 0x26]
DW$41	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$41, DW_AT_location[DW_OP_regx 0x27]
DW$42	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$42, DW_AT_location[DW_OP_regx 0x28]
DW$43	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$43, DW_AT_location[DW_OP_regx 0x29]
DW$44	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$44, DW_AT_location[DW_OP_regx 0x2a]
DW$45	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$45, DW_AT_location[DW_OP_regx 0x2b]
DW$46	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$46, DW_AT_location[DW_OP_regx 0x2c]
DW$47	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$47, DW_AT_location[DW_OP_regx 0x2d]
DW$48	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$48, DW_AT_location[DW_OP_regx 0x2e]
DW$49	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$49, DW_AT_location[DW_OP_regx 0x2f]
DW$50	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$50, DW_AT_location[DW_OP_regx 0x30]
DW$51	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$51, DW_AT_location[DW_OP_regx 0x31]
DW$52	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$52, DW_AT_location[DW_OP_regx 0x32]
DW$53	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$53, DW_AT_location[DW_OP_regx 0x33]
DW$54	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$54, DW_AT_location[DW_OP_regx 0x34]
DW$55	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$55, DW_AT_location[DW_OP_regx 0x35]
DW$56	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$56, DW_AT_location[DW_OP_regx 0x36]
DW$57	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$57, DW_AT_location[DW_OP_regx 0x37]
DW$58	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$58, DW_AT_location[DW_OP_regx 0x38]
DW$59	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$59, DW_AT_location[DW_OP_regx 0x39]
DW$60	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$60, DW_AT_location[DW_OP_regx 0x3a]
DW$61	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$61, DW_AT_location[DW_OP_regx 0x3b]
DW$62	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$62, DW_AT_location[DW_OP_regx 0x3c]
DW$63	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$63, DW_AT_location[DW_OP_regx 0x3d]
DW$64	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$64, DW_AT_location[DW_OP_regx 0x3e]
DW$65	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$65, DW_AT_location[DW_OP_regx 0x3f]
DW$66	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$66, DW_AT_location[DW_OP_regx 0x40]
DW$67	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$67, DW_AT_location[DW_OP_regx 0x41]
DW$68	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$68, DW_AT_location[DW_OP_regx 0x42]
DW$69	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$69, DW_AT_location[DW_OP_regx 0x43]
DW$70	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$70, DW_AT_location[DW_OP_regx 0x44]
DW$71	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$71, DW_AT_location[DW_OP_regx 0x45]
DW$72	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$72, DW_AT_location[DW_OP_regx 0x46]
DW$73	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$73, DW_AT_location[DW_OP_regx 0x47]
DW$74	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$74, DW_AT_location[DW_OP_regx 0x48]
DW$75	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$75, DW_AT_location[DW_OP_regx 0x49]
DW$76	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$76, DW_AT_location[DW_OP_regx 0x4a]
DW$77	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$77, DW_AT_location[DW_OP_regx 0x4b]
DW$78	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$78, DW_AT_location[DW_OP_regx 0x4c]
DW$79	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$79, DW_AT_location[DW_OP_regx 0x4d]
DW$80	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$80, DW_AT_location[DW_OP_regx 0x4e]
DW$81	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$81, DW_AT_location[DW_OP_regx 0x4f]
DW$82	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$82, DW_AT_location[DW_OP_regx 0x50]
DW$83	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$83, DW_AT_location[DW_OP_regx 0x51]
DW$84	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$84, DW_AT_location[DW_OP_regx 0x52]
DW$85	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$85, DW_AT_location[DW_OP_regx 0x53]
DW$86	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$86, DW_AT_location[DW_OP_regx 0x54]
DW$87	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$87, DW_AT_location[DW_OP_regx 0x55]
DW$88	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$88, DW_AT_location[DW_OP_regx 0x56]
DW$89	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$89, DW_AT_location[DW_OP_regx 0x57]
DW$90	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$90, DW_AT_location[DW_OP_regx 0x58]
DW$91	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$91, DW_AT_location[DW_OP_regx 0x59]
DW$92	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$92, DW_AT_location[DW_OP_regx 0x5a]
DW$93	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$93, DW_AT_location[DW_OP_regx 0x5b]
DW$94	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$94, DW_AT_location[DW_OP_regx 0x5c]
DW$95	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$95, DW_AT_location[DW_OP_regx 0x5d]
DW$96	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$96, DW_AT_location[DW_OP_regx 0x5e]
DW$97	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$97, DW_AT_location[DW_OP_regx 0x5f]
DW$98	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$98, DW_AT_location[DW_OP_regx 0x60]
DW$99	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$99, DW_AT_location[DW_OP_regx 0x61]
DW$100	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$100, DW_AT_location[DW_OP_regx 0x62]
DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$101, DW_AT_location[DW_OP_regx 0x63]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$102, DW_AT_location[DW_OP_regx 0x64]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$103, DW_AT_location[DW_OP_regx 0x65]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$104, DW_AT_location[DW_OP_regx 0x66]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$105, DW_AT_location[DW_OP_regx 0x67]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$106, DW_AT_location[DW_OP_regx 0x68]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$107, DW_AT_location[DW_OP_regx 0x69]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$108, DW_AT_location[DW_OP_regx 0x6a]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$109, DW_AT_location[DW_OP_regx 0x6b]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$110, DW_AT_location[DW_OP_regx 0x6c]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$111, DW_AT_location[DW_OP_regx 0x6d]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$112, DW_AT_location[DW_OP_regx 0x6e]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$113, DW_AT_location[DW_OP_regx 0x6f]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$114, DW_AT_location[DW_OP_regx 0x70]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$115, DW_AT_location[DW_OP_regx 0x71]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$116, DW_AT_location[DW_OP_regx 0x72]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$117, DW_AT_location[DW_OP_regx 0x73]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$118, DW_AT_location[DW_OP_regx 0x74]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$119, DW_AT_location[DW_OP_regx 0x75]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$120, DW_AT_location[DW_OP_regx 0x76]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$121, DW_AT_location[DW_OP_regx 0x77]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$122, DW_AT_location[DW_OP_regx 0x78]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$123, DW_AT_location[DW_OP_regx 0x79]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$124, DW_AT_location[DW_OP_regx 0x7a]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$125, DW_AT_location[DW_OP_regx 0x7b]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$126, DW_AT_location[DW_OP_regx 0x7c]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$127, DW_AT_location[DW_OP_regx 0x7d]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$128, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

