;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.1 #12107 (MINGW64)
;--------------------------------------------------------
	.module timer
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
	.globl _T0_ISR
	.globl _timerGet
	.globl _timerGetLowBits
	.globl _timerInit
	.globl _timerDelay
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
_timerDelay_sloc0_1_0:
	.ds 4
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
_mTmrHi:
	.ds 2
_timerGet_val_65536_9:
	.ds 4
_timerDelay_ticks_65536_15:
	.ds 4
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
;Allocation info for local variables in function 'T0_ISR'
;------------------------------------------------------------
;	timer.c:7: void T0_ISR(void) __interrupt (1)
;	-----------------------------------------
;	 function T0_ISR
;	-----------------------------------------
_T0_ISR:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	timer.c:9: TCON &=~ 0x20;	//clear flag
	anl	_TCON,#0xdf
;	timer.c:10: mTmrHi++;
	mov	dptr,#_mTmrHi
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mTmrHi
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
;	timer.c:11: }
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timerGet'
;------------------------------------------------------------
;val                       Allocated with name '_timerGet_val_65536_9'
;------------------------------------------------------------
;	timer.c:13: uint32_t timerGet(void)
;	-----------------------------------------
;	 function timerGet
;	-----------------------------------------
_timerGet:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
;	timer.c:24: do {
00102$:
;	timer.c:25: val.hi = mTmrHi;
	mov	dptr,#_mTmrHi
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_timerGet_val_65536_9 + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	timer.c:26: val.tH = TH0;
	mov	dptr,#(_timerGet_val_65536_9 + 0x0001)
	mov	a,_TH0
	movx	@dptr,a
;	timer.c:27: val.tL = TL0;	//read order is important due ot hardware buffering
	mov	dptr,#_timerGet_val_65536_9
	mov	a,_TL0
	movx	@dptr,a
;	timer.c:28: } while (val.hi != mTmrHi || val.tH != TH0);
	mov	dptr,#(_timerGet_val_65536_9 + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_mTmrHi
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar4,00102$
	mov	a,r7
	cjne	a,ar5,00102$
	mov	dptr,#(_timerGet_val_65536_9 + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	a,_TH0,00102$
;	timer.c:30: return val.ret;
	mov	dptr,#_timerGet_val_65536_9
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	timer.c:31: }
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerGetLowBits'
;------------------------------------------------------------
;	timer.c:33: uint8_t timerGetLowBits(void)
;	-----------------------------------------
;	 function timerGetLowBits
;	-----------------------------------------
_timerGetLowBits:
;	timer.c:35: return TL0;
	mov	dpl,_TL0
;	timer.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerInit'
;------------------------------------------------------------
;	timer.c:38: void timerInit(void)
;	-----------------------------------------
;	 function timerInit
;	-----------------------------------------
_timerInit:
;	timer.c:41: CLKEN |= 0x01;
	orl	_CLKEN,#0x01
;	timer.c:45: TCON &=~ 0xf0;
	anl	_TCON,#0x0f
;	timer.c:48: mTmrHi = 0;
	mov	dptr,#_mTmrHi
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	timer.c:49: T0 = 0;
	mov	((_T0 >> 0) & 0xFF),a
	mov	((_T0 >> 8) & 0xFF),a
;	timer.c:52: TMOD = 0x31;
	mov	_TMOD,#0x31
;	timer.c:55: TCON |= 0x10;
	orl	_TCON,#0x10
;	timer.c:58: IEN_TMR0 = 1;
;	assignBit
	setb	_IEN_TMR0
;	timer.c:59: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timerDelay'
;------------------------------------------------------------
;sloc0                     Allocated with name '_timerDelay_sloc0_1_0'
;ticks                     Allocated with name '_timerDelay_ticks_65536_15'
;start                     Allocated with name '_timerDelay_start_65536_16'
;------------------------------------------------------------
;	timer.c:61: void timerDelay(uint32_t ticks)
;	-----------------------------------------
;	 function timerDelay
;	-----------------------------------------
_timerDelay:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_timerDelay_ticks_65536_15
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
;	timer.c:63: uint32_t start = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	timer.c:64: while (timerGet() - start <= ticks);
	mov	dptr,#_timerDelay_ticks_65536_15
	movx	a,@dptr
	mov	_timerDelay_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_timerDelay_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_timerDelay_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_timerDelay_sloc0_1_0 + 3),a
00101$:
	lcall	_timerGet
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r0,a
	mov	a,r1
	subb	a,r5
	mov	r1,a
	mov	a,r2
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
	mov	r3,a
	clr	c
	mov	a,_timerDelay_sloc0_1_0
	subb	a,r0
	mov	a,(_timerDelay_sloc0_1_0 + 1)
	subb	a,r1
	mov	a,(_timerDelay_sloc0_1_0 + 2)
	subb	a,r2
	mov	a,(_timerDelay_sloc0_1_0 + 3)
	subb	a,r3
	jnc	00101$
;	timer.c:65: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
