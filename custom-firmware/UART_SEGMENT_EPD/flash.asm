;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.1 #12107 (MINGW64)
;--------------------------------------------------------
	.module flash
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART_TXE
	.globl _UART_RXF
	.globl _IEN_EA
	.globl _IEN_RF2
	.globl _IEN_RF1
	.globl _IEN_TMR1
	.globl _IEN_TMR0
	.globl _IEN_UART0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _CFGPAGE
	.globl _TCON2
	.globl _SETTINGS
	.globl _TRIGGER
	.globl _UNK_C1
	.globl _RADIO_GOTLEN
	.globl _RADIO_INITSEQ3
	.globl _RADIO_RXLEN
	.globl _RADIO_RXPTRH
	.globl _RADIO_RXPTRL
	.globl _RADIO_INITSEQ5
	.globl _RADIO_INITSEQ4
	.globl _RADIO_INITSEQ0
	.globl _RADIO_TXLEN
	.globl _RADIO_INITSEQ2
	.globl _RADIO_INITSEQ1
	.globl _RADIO_TXPTRH
	.globl _RADIO_TXPTRL
	.globl _TEMPCAL6
	.globl _TEMPCAL5
	.globl _TEMPCAL4
	.globl _TEMPCAL3
	.globl _TEMPRETL
	.globl _TEMPRETH
	.globl _TEMPCFG
	.globl _TEMPCAL2
	.globl _TEMPCAL1
	.globl _FWRTHREE
	.globl _FWRLENH
	.globl _FWRLENL
	.globl _FWRDSTH
	.globl _FWRDSTL
	.globl _FWRSRCH
	.globl _FWRSRCL
	.globl _FPGNO
	.globl _T1
	.globl _T0
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _UARTBRGH
	.globl _UARTBRGL
	.globl _UARTBUF
	.globl _UARTSTA
	.globl _I2CUNKNOWN
	.globl _I2CSPEED
	.globl _I2CCTL
	.globl _I2CBUF
	.globl _I2CSTATE
	.globl _SPIRX
	.globl _SPITX
	.globl _SPIENA
	.globl _SPICFG
	.globl _SPIUNKNOWN
	.globl _WDTCONF
	.globl _WDTRSTVALH
	.globl _WDTRSTVALM
	.globl _WDTRSTVALL
	.globl _WDTPET
	.globl _WDTENA
	.globl _RESET
	.globl _CLKEN
	.globl _CLKSPEED
	.globl _IEN1
	.globl _IEN0
	.globl _XPAGE
	.globl _P2PULL
	.globl _P1PULL
	.globl _P0PULL
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _P2FUNC
	.globl _P1FUNC
	.globl _P0FUNC
	.globl _P2CHSTA
	.globl _P1CHSTA
	.globl _P0CHSTA
	.globl _P2INTEN
	.globl _P1INTEN
	.globl _P0INTEN
	.globl _P2LVLSEL
	.globl _P1LVLSEL
	.globl _P0LVLSEL
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _PERFMON4
	.globl _PCL
	.globl _PCH
	.globl _PERFMON1
	.globl _PERFMON0
	.globl _PCON
	.globl _DPS
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _ACC
	.globl _B
	.globl _flashRead_PARM_3
	.globl _flashRead_PARM_2
	.globl _flashWrite_PARM_3
	.globl _flashWrite_PARM_2
	.globl _flashWrite_PARM_4
	.globl _flashWrite
	.globl _flashRead
	.globl _flashErase
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_B	=	0x00f0
_ACC	=	0x00e0
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0092
_PCON	=	0x0087
_PERFMON0	=	0x00b2
_PERFMON1	=	0x00b3
_PCH	=	0x00b4
_PCL	=	0x00b5
_PERFMON4	=	0x00b6
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P0LVLSEL	=	0x00a3
_P1LVLSEL	=	0x00a4
_P2LVLSEL	=	0x00a5
_P0INTEN	=	0x00a6
_P1INTEN	=	0x00a7
_P2INTEN	=	0x00a9
_P0CHSTA	=	0x00aa
_P1CHSTA	=	0x00ab
_P2CHSTA	=	0x00ac
_P0FUNC	=	0x00ad
_P1FUNC	=	0x00ae
_P2FUNC	=	0x00af
_P0DIR	=	0x00b9
_P1DIR	=	0x00ba
_P2DIR	=	0x00bb
_P0PULL	=	0x00bc
_P1PULL	=	0x00bd
_P2PULL	=	0x00be
_XPAGE	=	0x00a0
_IEN0	=	0x00a8
_IEN1	=	0x00a1
_CLKSPEED	=	0x008e
_CLKEN	=	0x00b7
_RESET	=	0x008f
_WDTENA	=	0x00ba
_WDTPET	=	0x00bb
_WDTRSTVALL	=	0x00bc
_WDTRSTVALM	=	0x00bd
_WDTRSTVALH	=	0x00be
_WDTCONF	=	0x00bf
_SPIUNKNOWN	=	0x00eb
_SPICFG	=	0x00ec
_SPIENA	=	0x00ed
_SPITX	=	0x00ee
_SPIRX	=	0x00ef
_I2CSTATE	=	0x0091
_I2CBUF	=	0x0094
_I2CCTL	=	0x0095
_I2CSPEED	=	0x0096
_I2CUNKNOWN	=	0x00a2
_UARTSTA	=	0x0098
_UARTBUF	=	0x0099
_UARTBRGL	=	0x009a
_UARTBRGH	=	0x009b
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_T0	=	0x8c8a
_T1	=	0x8d8b
_FPGNO	=	0x00d8
_FWRSRCL	=	0x00d9
_FWRSRCH	=	0x00da
_FWRDSTL	=	0x00db
_FWRDSTH	=	0x00dc
_FWRLENL	=	0x00dd
_FWRLENH	=	0x00de
_FWRTHREE	=	0x00df
_TEMPCAL1	=	0x00e6
_TEMPCAL2	=	0x00e7
_TEMPCFG	=	0x00f7
_TEMPRETH	=	0x00f8
_TEMPRETL	=	0x00f9
_TEMPCAL3	=	0x00fb
_TEMPCAL4	=	0x00fc
_TEMPCAL5	=	0x00fd
_TEMPCAL6	=	0x00fe
_RADIO_TXPTRL	=	0x00c9
_RADIO_TXPTRH	=	0x00ca
_RADIO_INITSEQ1	=	0x00cb
_RADIO_INITSEQ2	=	0x00cc
_RADIO_TXLEN	=	0x00cd
_RADIO_INITSEQ0	=	0x00ce
_RADIO_INITSEQ4	=	0x00d1
_RADIO_INITSEQ5	=	0x00d2
_RADIO_RXPTRL	=	0x00d3
_RADIO_RXPTRH	=	0x00d4
_RADIO_RXLEN	=	0x00d5
_RADIO_INITSEQ3	=	0x00d6
_RADIO_GOTLEN	=	0x00fa
_UNK_C1	=	0x00c1
_TRIGGER	=	0x00d7
_SETTINGS	=	0x00c7
_TCON2	=	0x00cf
_CFGPAGE	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_IEN_UART0	=	0x00a8
_IEN_TMR0	=	0x00a9
_IEN_TMR1	=	0x00ab
_IEN_RF1	=	0x00ac
_IEN_RF2	=	0x00ad
_IEN_EA	=	0x00af
_UART_RXF	=	0x0098
_UART_TXE	=	0x0099
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
_R0	=	0x0000
_R1	=	0x0001
_R2	=	0x0002
_R3	=	0x0003
_R4	=	0x0004
_R5	=	0x0005
_R6	=	0x0006
_R7	=	0x0007
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_flashWrite_PARM_4:
	.ds 1
_flashWrite_irq_65536_8:
	.ds 1
_flashRead_irq_65536_10:
	.ds 1
_flashErase_irq_65536_12:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_RADIO_command	=	0xdf48
_RADIO_calibration_70	=	0xdf70
_RADIO_calibration_71	=	0xdf71
_RADIO_FLAGS	=	0xdf80
_RADIO_calibration_81	=	0xdf81
_RADIO_unk_83	=	0xdf83
_RADIO_currentRSSI	=	0xdf84
_RADIO_calibration_86	=	0xdf86
_RADIO_ownMac_7	=	0xdf88
_RADIO_ownMac_6	=	0xdf89
_RADIO_ownMac_5	=	0xdf8a
_RADIO_ownMac_4	=	0xdf8b
_RADIO_ownMac_3	=	0xdf8c
_RADIO_ownMac_2	=	0xdf8d
_RADIO_ownMac_1	=	0xdf8e
_RADIO_ownMac_0	=	0xdf8f
_RADIO_PANID_Hi	=	0xdf90
_RADIO_PANID_Lo	=	0xdf91
_RADIO_ownShortAddress_Hi	=	0xdf92
_RADIO_ownShortAddress_Lo	=	0xdf93
_RADIO_calibration_94	=	0xdf94
_RADIO_calibration_95	=	0xdf95
_RADIO_calibration_96	=	0xdf96
_RADIO_rxFirstByte	=	0xdf98
_RADIO_curRfState	=	0xdf9b
_RADIO_calibration_9D	=	0xdf9d
_RADIO_calibration_A1	=	0xdfa1
_RADIO_unk_rxAckSta	=	0xdfa5
_RADIO_unk_A6	=	0xdfa6
_RADIO_IRQ4_pending	=	0xdfad
_RADIO_unk_AF	=	0xdfaf
_RADIO_channel	=	0xdfc0
_RADIO_unk_C1	=	0xdfc1
_RADIO_calibration_C2	=	0xdfc2
_RADIO_calibration_C3	=	0xdfc3
_RADIO_calibration_C4	=	0xdfc4
_RADIO_calibration_C5	=	0xdfc5
_RADIO_calibration_C6	=	0xdfc6
_RADIO_calibration_C7	=	0xdfc7
_RADIO_unk_C8	=	0xdfc8
_RADIO_txPower	=	0xdfc9
_RADIO_unk_CA	=	0xdfca
_RADIO_perChannelSetting2	=	0xdfcb
_RADIO_unk_CD	=	0xdfcd
_RADIO_unk_CE	=	0xdfce
_RADIO_calibration_CF	=	0xdfcf
_RADIO_calibration_D0	=	0xdfd0
_RADIO_calibration_D1	=	0xdfd1
_RADIO_calibration_D2	=	0xdfd2
_RADIO_calibration_D3	=	0xdfd3
_RADIO_calibration_D4	=	0xdfd4
_RADIO_calibration_D5	=	0xdfd5
_RADIO_unk_D7	=	0xdfd7
_RADIO_unk_D8	=	0xdfd8
_RADIO_SleepTimerHi	=	0xdfd9
_RADIO_SleepTimerMid	=	0xdfda
_RADIO_SleepTimerLo	=	0xdfdb
_RADIO_unk_E2	=	0xdfe2
_RADIO_unk_F0	=	0xdff0
_RADIO_SleepTimerSettings	=	0xdff3
_RADIO_RadioPowerCtl	=	0xdff4
_RADIO_perChannelSetting1	=	0xdffd
_flashWrite_PARM_2:
	.ds 2
_flashWrite_PARM_3:
	.ds 2
_flashWrite_dstAddr_65536_7:
	.ds 4
_flashWrite_cfgPg_65536_8:
	.ds 1
_flashWrite_speed_65536_8:
	.ds 1
_flashRead_PARM_2:
	.ds 2
_flashRead_PARM_3:
	.ds 2
_flashRead_srcAddr_65536_9:
	.ds 4
_flashRead_cfgPg_65536_10:
	.ds 1
_flashRead_speed_65536_10:
	.ds 1
_flashErase_dstAddr_65536_11:
	.ds 4
_flashErase_dummyByte_65536_12:
	.ds 1
_flashErase_cfgPg_65536_12:
	.ds 1
_flashErase_speed_65536_12:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'flashAddrCheck'
;------------------------------------------------------------
;len                       Allocated to stack - sp -7
;flashAddr                 Allocated to stack - sp -3
;dstOfst                   Allocated to registers r4 r5 
;pgNo                      Allocated to registers r7 
;------------------------------------------------------------
;	flash.c:8: static uint8_t flashAddrCheck(uint32_t flashAddr, uint16_t len) __reentrant /* to save ram space */ // return 0xff for error, pgNo
;	-----------------------------------------
;	 function flashAddrCheck
;	-----------------------------------------
_flashAddrCheck:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	dpl
	push	dph
	push	b
	push	acc
;	flash.c:13: if (!len)
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00102$
;	flash.c:14: return 0xff;
	mov	dpl,#0xff
	sjmp	00113$
00102$:
;	flash.c:17: if ((uint8_t)(flashAddr >> 24))
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	inc	r0
	inc	r0
	mov	a,@r0
	mov	r3,a
	jz	00104$
;	flash.c:18: return 0xff;
	mov	dpl,#0xff
	sjmp	00113$
00104$:
;	flash.c:20: switch ((uint8_t)(flashAddr >> 16))  {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	inc	r0
	mov	ar3,@r0
	clr	a
	cjne	r3,#0x00,00147$
	inc	a
00147$:
	mov	r2,a
	mov	r7,#0x00
	jnz	00105$
;	flash.c:21: case 0x00:
	cjne	r3,#0x80,00109$
	sjmp	00106$
00105$:
;	flash.c:22: pgNo = ((uint8_t)(flashAddr >> 8)) >> 2;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	inc	r0
	mov	a,@r0
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r6,a
;	flash.c:23: break;
;	flash.c:25: case 0x80:
	sjmp	00110$
00106$:
;	flash.c:26: if (pgNo)
	mov	a,r7
	jz	00108$
;	flash.c:27: return 0xff;
	mov	dpl,#0xff
	sjmp	00113$
00108$:
;	flash.c:28: pgNo = 0x80;
	mov	r6,#0x80
;	flash.c:29: break;
;	flash.c:31: default:
	sjmp	00110$
00109$:
;	flash.c:32: return 0xff;
	mov	dpl,#0xff
;	flash.c:33: }
	sjmp	00113$
00110$:
;	flash.c:35: dstOfst = flashAddr & 0x3ff;
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	anl	ar5,#0x03
;	flash.c:37: if (((uint8_t)((dstOfst + len - 1) >> 8)) >> 2)	//yeah...sdcc
	mov	a,sp
	add	a,#0xf1
	mov	r0,a
	mov	a,@r0
	add	a,r4
	mov	r4,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	r5,a
	dec	r4
	cjne	r4,#0xff,00152$
	dec	r5
00152$:
	mov	ar4,r5
	mov	a,r4
	rr	a
	rr	a
	anl	a,#0x3f
	mov	r4,a
	jz	00112$
;	flash.c:38: return 0xff;
	mov	dpl,#0xff
	sjmp	00113$
00112$:
;	flash.c:40: return pgNo;
	mov	dpl,r6
00113$:
;	flash.c:41: }
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flashWrite'
;------------------------------------------------------------
;src                       Allocated with name '_flashWrite_PARM_2'
;len                       Allocated with name '_flashWrite_PARM_3'
;dstAddr                   Allocated with name '_flashWrite_dstAddr_65536_7'
;pgNo                      Allocated with name '_flashWrite_pgNo_65536_8'
;cfgPg                     Allocated with name '_flashWrite_cfgPg_65536_8'
;speed                     Allocated with name '_flashWrite_speed_65536_8'
;------------------------------------------------------------
;	flash.c:45: __bit flashWrite(uint32_t dstAddr, const void __xdata *src, uint16_t len, __bit alsoErase /*whole page */)
;	-----------------------------------------
;	 function flashWrite
;	-----------------------------------------
_flashWrite:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_flashWrite_dstAddr_65536_7
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	flash.c:50: pgNo = flashAddrCheck(dstAddr, len);
	mov	dptr,#_flashWrite_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_flashWrite_dstAddr_65536_7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_flashAddrCheck
	mov	r5,dpl
	dec	sp
	dec	sp
;	flash.c:51: if (pgNo == 0xff)
	cjne	r5,#0xff,00102$
;	flash.c:52: return false;
	clr	c
	sjmp	00109$
00102$:
;	flash.c:54: irq = IEN_EA;
;	assignBit
	mov	c,_IEN_EA
	mov	_flashWrite_irq_65536_8,c
;	flash.c:55: IEN_EA = false;
;	assignBit
	clr	_IEN_EA
;	flash.c:57: speed = CLKSPEED;
	mov	dptr,#_flashWrite_speed_65536_8
	mov	a,_CLKSPEED
	movx	@dptr,a
;	flash.c:58: CLKSPEED = 0x21;	//flash ops only work at this speed
	mov	_CLKSPEED,#0x21
;	flash.c:60: cfgPg = CFGPAGE;
	mov	dptr,#_flashWrite_cfgPg_65536_8
	mov	a,_CFGPAGE
	movx	@dptr,a
;	flash.c:61: CFGPAGE = 4;
	mov	_CFGPAGE,#0x04
;	flash.c:63: if (alsoErase)
	jnb	_flashWrite_PARM_4,00104$
;	flash.c:64: SETTINGS |= 0x38;
	orl	_SETTINGS,#0x38
	sjmp	00105$
00104$:
;	flash.c:66: SETTINGS = 0x18;
	mov	_SETTINGS,#0x18
00105$:
;	flash.c:67: FWRTHREE = 3;
	mov	_FWRTHREE,#0x03
;	flash.c:68: FPGNO = pgNo;
	mov	_FPGNO,r5
;	flash.c:69: FWRDSTL = (uint8_t)dstAddr;
	mov	dptr,#_flashWrite_dstAddr_65536_7
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	_FWRDSTL,r2
;	flash.c:70: FWRDSTH = (((uint16_t)dstAddr) >> 8) & 0x03;
	mov	ar2,r3
	mov	a,#0x03
	anl	a,r2
	mov	_FWRDSTH,a
;	flash.c:71: FWRLENL = (uint8_t)(len - 1);
	mov	ar5,r6
	dec	r5
	mov	_FWRLENL,r5
;	flash.c:72: FWRLENH = (len - 1) >> 8;
	dec	r6
	cjne	r6,#0xff,00130$
	dec	r7
00130$:
	mov	_FWRLENH,r7
;	flash.c:73: FWRSRCL = (uint8_t)src;
	mov	dptr,#_flashWrite_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_FWRSRCL,r6
;	flash.c:74: FWRSRCH = ((uint16_t)src) >> 8;
	mov	_FWRSRCH,r7
;	flash.c:75: TRIGGER |= 8;				//start
	orl	_TRIGGER,#0x08
;	flash.c:76: while (!(TCON2 & 0x08));	//wait
00106$:
	mov	a,_TCON2
	jnb	acc.3,00106$
;	flash.c:78: TCON2 &=~ 0x48;
	anl	_TCON2,#0xb7
;	flash.c:79: SETTINGS &=~ 0x10;
	anl	_SETTINGS,#0xef
;	flash.c:81: CFGPAGE = cfgPg;
	mov	dptr,#_flashWrite_cfgPg_65536_8
	movx	a,@dptr
	mov	_CFGPAGE,a
;	flash.c:83: CLKSPEED = speed;
	mov	dptr,#_flashWrite_speed_65536_8
	movx	a,@dptr
	mov	_CLKSPEED,a
;	flash.c:85: IEN_EA = irq;
;	assignBit
	mov	c,_flashWrite_irq_65536_8
	mov	_IEN_EA,c
;	flash.c:87: return true;
	setb	c
00109$:
;	flash.c:88: }
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flashRead'
;------------------------------------------------------------
;dst                       Allocated with name '_flashRead_PARM_2'
;len                       Allocated with name '_flashRead_PARM_3'
;srcAddr                   Allocated with name '_flashRead_srcAddr_65536_9'
;pgNo                      Allocated with name '_flashRead_pgNo_65536_10'
;cfgPg                     Allocated with name '_flashRead_cfgPg_65536_10'
;speed                     Allocated with name '_flashRead_speed_65536_10'
;------------------------------------------------------------
;	flash.c:91: __bit flashRead(uint32_t srcAddr, void __xdata *dst, uint16_t len)
;	-----------------------------------------
;	 function flashRead
;	-----------------------------------------
_flashRead:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_flashRead_srcAddr_65536_9
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	flash.c:96: pgNo = flashAddrCheck(srcAddr, len);
	mov	dptr,#_flashRead_PARM_3
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_flashRead_srcAddr_65536_9
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_flashAddrCheck
	mov	r1,dpl
	dec	sp
	dec	sp
;	flash.c:97: if (pgNo == 0xff)
	cjne	r1,#0xff,00102$
;	flash.c:98: return false;
	clr	c
	sjmp	00106$
00102$:
;	flash.c:100: irq = IEN_EA;
;	assignBit
	mov	c,_IEN_EA
	mov	_flashRead_irq_65536_10,c
;	flash.c:101: IEN_EA = false;
;	assignBit
	clr	_IEN_EA
;	flash.c:103: speed = CLKSPEED;
	mov	dptr,#_flashRead_speed_65536_10
	mov	a,_CLKSPEED
	movx	@dptr,a
;	flash.c:104: CLKSPEED = 0x21;	//flash ops only work at this speed
	mov	_CLKSPEED,#0x21
;	flash.c:106: cfgPg = CFGPAGE;
	mov	dptr,#_flashRead_cfgPg_65536_10
	mov	a,_CFGPAGE
	movx	@dptr,a
;	flash.c:107: CFGPAGE = 4;
	mov	_CFGPAGE,#0x04
;	flash.c:109: SETTINGS = 0x8;
	mov	_SETTINGS,#0x08
;	flash.c:110: FWRTHREE = 3;
	mov	_FWRTHREE,#0x03
;	flash.c:111: FPGNO = pgNo;
	mov	_FPGNO,r1
;	flash.c:112: FWRDSTL = (uint8_t)dst;
	mov	dptr,#_flashRead_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_FWRDSTL,r0
;	flash.c:113: FWRDSTH = ((uint16_t)dst) >> 8;
	mov	_FWRDSTH,r1
;	flash.c:114: FWRSRCL = (uint8_t)srcAddr;
	mov	_FWRSRCL,r2
;	flash.c:115: FWRSRCH = (((uint16_t)srcAddr) >> 8) & 0x03;
	mov	ar2,r3
	mov	a,#0x03
	anl	a,r2
	mov	_FWRSRCH,a
;	flash.c:116: FWRLENL = (uint8_t)(len - 1);
	mov	ar5,r6
	dec	r5
	mov	_FWRLENL,r5
;	flash.c:117: FWRLENH = (len - 1) >> 8;
	dec	r6
	cjne	r6,#0xff,00122$
	dec	r7
00122$:
	mov	_FWRLENH,r7
;	flash.c:118: TRIGGER |= 8;				//start
	orl	_TRIGGER,#0x08
;	flash.c:120: while (!(TCON2 & 0x08));	//wait
00103$:
	mov	a,_TCON2
	jnb	acc.3,00103$
;	flash.c:122: TCON2 &=~ 0x48;
	anl	_TCON2,#0xb7
;	flash.c:123: SETTINGS &=~ 0x10;
	anl	_SETTINGS,#0xef
;	flash.c:125: CFGPAGE = cfgPg;
	mov	dptr,#_flashRead_cfgPg_65536_10
	movx	a,@dptr
	mov	_CFGPAGE,a
;	flash.c:127: CLKSPEED = speed;
	mov	dptr,#_flashRead_speed_65536_10
	movx	a,@dptr
	mov	_CLKSPEED,a
;	flash.c:129: IEN_EA = irq;
;	assignBit
	mov	c,_flashRead_irq_65536_10
	mov	_IEN_EA,c
;	flash.c:131: return true;
	setb	c
00106$:
;	flash.c:132: }
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flashErase'
;------------------------------------------------------------
;dstAddr                   Allocated with name '_flashErase_dstAddr_65536_11'
;dummyByte                 Allocated with name '_flashErase_dummyByte_65536_12'
;pgNo                      Allocated with name '_flashErase_pgNo_65536_12'
;cfgPg                     Allocated with name '_flashErase_cfgPg_65536_12'
;speed                     Allocated with name '_flashErase_speed_65536_12'
;------------------------------------------------------------
;	flash.c:135: __bit  flashErase(uint32_t dstAddr)
;	-----------------------------------------
;	 function flashErase
;	-----------------------------------------
_flashErase:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_flashErase_dstAddr_65536_11
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	flash.c:137: uint8_t __xdata dummyByte = 0xff;
	mov	dptr,#_flashErase_dummyByte_65536_12
	mov	a,#0xff
	movx	@dptr,a
;	flash.c:141: pgNo = flashAddrCheck(dstAddr, 1);
	mov	dptr,#_flashErase_dstAddr_65536_11
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	push	acc
	clr	a
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_flashAddrCheck
	mov	r7,dpl
	dec	sp
	dec	sp
;	flash.c:143: if (pgNo == 0xff)
	cjne	r7,#0xff,00102$
;	flash.c:144: return false;
	clr	c
	sjmp	00106$
00102$:
;	flash.c:146: irq = IEN_EA;
;	assignBit
	mov	c,_IEN_EA
	mov	_flashErase_irq_65536_12,c
;	flash.c:147: IEN_EA = false;
;	assignBit
	clr	_IEN_EA
;	flash.c:149: speed = CLKSPEED;
	mov	dptr,#_flashErase_speed_65536_12
	mov	a,_CLKSPEED
	movx	@dptr,a
;	flash.c:150: CLKSPEED = 0x21;	//flash ops only work at this speed
	mov	_CLKSPEED,#0x21
;	flash.c:152: cfgPg = CFGPAGE;
	mov	dptr,#_flashErase_cfgPg_65536_12
	mov	a,_CFGPAGE
	movx	@dptr,a
;	flash.c:153: CFGPAGE = 4;
	mov	_CFGPAGE,#0x04
;	flash.c:158: SETTINGS |= 0x38;
	orl	_SETTINGS,#0x38
;	flash.c:159: FWRTHREE = 3;
	mov	_FWRTHREE,#0x03
;	flash.c:160: FPGNO = pgNo;
	mov	_FPGNO,r7
;	flash.c:161: FWRDSTL = 0;
	mov	_FWRDSTL,#0x00
;	flash.c:162: FWRDSTH = 0;
	mov	_FWRDSTH,#0x00
;	flash.c:163: FWRLENL = 0;
	mov	_FWRLENL,#0x00
;	flash.c:164: FWRLENH = 0;
	mov	_FWRLENH,#0x00
;	flash.c:165: FWRSRCL = (uint8_t)&dummyByte;
	mov	_FWRSRCL,#_flashErase_dummyByte_65536_12
;	flash.c:166: FWRSRCH = ((uint16_t)&dummyByte) >> 8;
	mov	r6,#_flashErase_dummyByte_65536_12
	mov	r7,#(_flashErase_dummyByte_65536_12 >> 8)
	mov	_FWRSRCH,r7
;	flash.c:167: TRIGGER |= 8;				//start
	orl	_TRIGGER,#0x08
;	flash.c:168: while (!(TCON2 & 0x08));	//wait
00103$:
	mov	a,_TCON2
	jnb	acc.3,00103$
;	flash.c:170: TCON2 &=~ 0x48;
	anl	_TCON2,#0xb7
;	flash.c:171: SETTINGS &=~ 0x10;
	anl	_SETTINGS,#0xef
;	flash.c:173: CFGPAGE = cfgPg;
	mov	dptr,#_flashErase_cfgPg_65536_12
	movx	a,@dptr
	mov	_CFGPAGE,a
;	flash.c:175: CLKSPEED = speed;
	mov	dptr,#_flashErase_speed_65536_12
	movx	a,@dptr
	mov	_CLKSPEED,a
;	flash.c:177: IEN_EA = irq;
;	assignBit
	mov	c,_flashErase_irq_65536_12
	mov	_IEN_EA,c
;	flash.c:179: return true;
	setb	c
00106$:
;	flash.c:180: }
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
