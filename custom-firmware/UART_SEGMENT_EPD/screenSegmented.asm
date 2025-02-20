;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.1 #12107 (MINGW64)
;--------------------------------------------------------
	.module screenSegmented
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spiByte
	.globl _timerDelay
	.globl _timerGet
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
	.globl _screen_start_time
	.globl _screenDraw_PARM_3
	.globl _screenDraw_PARM_2
	.globl _display_is_drawing
	.globl _screenDraw
	.globl _display_end
	.globl _is_drawing
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
_screenPrvTimedWait_sloc0_1_0:
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
_display_is_drawing::
	.ds 1
_screenDraw_PARM_2:
	.ds 1
_screenDraw_PARM_3:
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
_screenPrvTimedWait_maxTicks_65536_9:
	.ds 4
_screenPrvRegWriteGuts_PARM_2:
	.ds 1
_screenPrvRegWriteGuts_val_65536_12:
	.ds 4
_screenDraw_data_65536_14:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_screen_start_time::
	.ds 4
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
;	screenSegmented.c:7: __bit display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
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
;Allocation info for local variables in function 'screenPrvTimedWait'
;------------------------------------------------------------
;sloc0                     Allocated with name '_screenPrvTimedWait_sloc0_1_0'
;maxTicks                  Allocated with name '_screenPrvTimedWait_maxTicks_65536_9'
;startTicks                Allocated with name '_screenPrvTimedWait_startTicks_65536_10'
;------------------------------------------------------------
;	screenSegmented.c:11: static __bit screenPrvTimedWait(uint32_t maxTicks)
;	-----------------------------------------
;	 function screenPrvTimedWait
;	-----------------------------------------
_screenPrvTimedWait:
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
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_9
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
;	screenSegmented.c:13: uint32_t startTicks = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	screenSegmented.c:15: while (timerGet() - startTicks < maxTicks)
	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_9
	movx	a,@dptr
	mov	_screenPrvTimedWait_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_screenPrvTimedWait_sloc0_1_0 + 3),a
00103$:
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
	mov	a,r0
	subb	a,_screenPrvTimedWait_sloc0_1_0
	mov	a,r1
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 1)
	mov	a,r2
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 2)
	mov	a,r3
	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 3)
	jnc	00105$
;	screenSegmented.c:17: if (!P2_0)
	jb	_P2_0,00103$
;	screenSegmented.c:18: return true;
	setb	c
	sjmp	00106$
00105$:
;	screenSegmented.c:21: return false;
	clr	c
00106$:
;	screenSegmented.c:22: }
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
;Allocation info for local variables in function 'screenPrvRegWriteGuts'
;------------------------------------------------------------
;reg                       Allocated with name '_screenPrvRegWriteGuts_PARM_2'
;val                       Allocated with name '_screenPrvRegWriteGuts_val_65536_12'
;------------------------------------------------------------
;	screenSegmented.c:25: static __bit screenPrvRegWriteGuts(uint32_t val, uint8_t reg) // order because sdcc sucks
;	-----------------------------------------
;	 function screenPrvRegWriteGuts
;	-----------------------------------------
_screenPrvRegWriteGuts:
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_screenPrvRegWriteGuts_val_65536_12
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
;	screenSegmented.c:27: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_screenPrvTimedWait
;	screenSegmented.c:28: return false;
	jc	00102$
	sjmp	00103$
00102$:
;	screenSegmented.c:30: P2_1 = 0;
;	assignBit
	clr	_P2_1
;	screenSegmented.c:31: spiByte((uint8_t)0x80 + (uint8_t)(reg << 1));
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	movx	a,@dptr
	add	a,acc
	add	a,#0x80
	mov	dpl,a
	lcall	_spiByte
;	screenSegmented.c:32: spiByte(val >> 16);
	mov	dptr,#_screenPrvRegWriteGuts_val_65536_12
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
	mov	ar3,r6
	mov	dpl,r3
	lcall	_spiByte
;	screenSegmented.c:33: spiByte(val >> 8);
	mov	ar3,r5
	mov	dpl,r3
	lcall	_spiByte
;	screenSegmented.c:34: spiByte(val);
	mov	dpl,r4
	lcall	_spiByte
;	screenSegmented.c:35: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	screenSegmented.c:37: return true;
	setb	c
00103$:
;	screenSegmented.c:38: }
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'screenDraw'
;------------------------------------------------------------
;data                      Allocated with name '_screenDraw_data_65536_14'
;------------------------------------------------------------
;	screenSegmented.c:42: __bit screenDraw(const uint8_t __xdata *data, __bit inverted, __bit custom_lut)
;	-----------------------------------------
;	 function screenDraw
;	-----------------------------------------
_screenDraw:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_screenDraw_data_65536_14
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	screenSegmented.c:44: display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
;	screenSegmented.c:45: P2_1 = 1;
;	assignBit
	setb	_P2_1
;	screenSegmented.c:46: P2_2 = 1; // power it up
;	assignBit
	setb	_P2_2
;	screenSegmented.c:47: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	screenSegmented.c:48: P1_7 = 0; // assert reset
;	assignBit
	clr	_P1_7
;	screenSegmented.c:49: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	screenSegmented.c:50: P1_7 = 1; // release reset
;	assignBit
	setb	_P1_7
;	screenSegmented.c:51: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	screenSegmented.c:53: P1FUNC |= 0x40;
	orl	_P1FUNC,#0x40
;	screenSegmented.c:55: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND))
	mov	dptr,#0x5855
	mov	b,#0x14
	clr	a
	lcall	_screenPrvTimedWait
;	screenSegmented.c:57: return false;
	jc	00102$
	ret
00102$:
;	screenSegmented.c:61: if (!screenPrvRegWrite(0x03, 0x3a0000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x3a
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:62: return false;
	jc	00104$
	ret
00104$:
;	screenSegmented.c:64: if (!screenPrvRegWrite(0x01, 0x070000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x07
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:65: return false;
	jc	00106$
	ret
00106$:
;	screenSegmented.c:66: if (!screenPrvRegWrite(0x03, 0x400000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x40
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:67: return false;
	jc	00108$
	ret
00108$:
;	screenSegmented.c:68: if (!screenPrvRegWrite(0x04, 0xfc0000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0xfc
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:69: return false;
	jc	00110$
	ret
00110$:
;	screenSegmented.c:72: if (!screenPrvRegWrite(0x0d, *(uint32_t __xdata *)(data + 0)))
	mov	dptr,#_screenDraw_data_65536_14
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0d
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:73: return false;
	jc	00112$
	ret
00112$:
;	screenSegmented.c:74: if (!screenPrvRegWrite(0x0e, *(uint32_t __xdata *)(data + 3)))
	mov	a,#0x03
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0e
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:75: return false;
	jc	00114$
	ret
00114$:
;	screenSegmented.c:76: if (!screenPrvRegWrite(0x0f, *(uint32_t __xdata *)(data + 6)))
	mov	a,#0x06
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x0f
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:77: return false;
	jc	00116$
	ret
00116$:
;	screenSegmented.c:78: if (!screenPrvRegWrite(0x10, *(uint32_t __xdata *)(data + 9)))
	mov	a,#0x09
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:79: return false;
	jc	00118$
	ret
00118$:
;	screenSegmented.c:80: if (custom_lut)
	jb	_screenDraw_PARM_3,00269$
	ljmp	00144$
00269$:
;	screenSegmented.c:83: if (!screenPrvRegWrite(0x14, *(uint32_t __xdata *)(data + 12)))
	mov	a,#0x0c
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:84: return false;
	jc	00120$
	ret
00120$:
;	screenSegmented.c:85: if (!screenPrvRegWrite(0x15, *(uint32_t __xdata *)(data + 15)))
	mov	a,#0x0f
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x15
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:86: return false;
	jc	00122$
	ret
00122$:
;	screenSegmented.c:87: if (!screenPrvRegWrite(0x16, *(uint32_t __xdata *)(data + 18)))
	mov	a,#0x12
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x16
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:88: return false;
	jc	00124$
	ret
00124$:
;	screenSegmented.c:90: if (!screenPrvRegWrite(0x19, *(uint32_t __xdata *)(data + 21)))
	mov	a,#0x15
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x19
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:91: return false;
	jc	00126$
	ret
00126$:
;	screenSegmented.c:92: if (!screenPrvRegWrite(0x1a, *(uint32_t __xdata *)(data + 24)))
	mov	a,#0x18
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
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
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x1a
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:93: return false;
	jc	00128$
	ret
00128$:
;	screenSegmented.c:96: if (!screenPrvRegWrite(0x00, *(uint32_t __xdata *)(data + 27) | (inverted ? 0x200000 : 0x000000)))
	mov	a,#0x1b
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
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
	jnb	_screenDraw_PARM_2,00148$
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x20
	mov	r3,#0x00
	sjmp	00149$
00148$:
	mov	r0,#0x00
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r3,#0x00
00149$:
	mov	a,r0
	orl	ar4,a
	mov	a,r1
	orl	ar5,a
	mov	a,r2
	orl	ar6,a
	mov	a,r3
	orl	ar7,a
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
	jnc	00276$
	ljmp	00145$
00276$:
;	screenSegmented.c:97: return false;
	clr	c
	ret
00144$:
;	screenSegmented.c:102: if (!screenPrvRegWrite(0x14, 0x440000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x44
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:103: return false;
	jc	00132$
	ret
00132$:
;	screenSegmented.c:104: if (!screenPrvRegWrite(0x15, inverted ? 0x680001 : 0x860000))
	jnb	_screenDraw_PARM_2,00150$
	mov	r4,#0x01
	mov	r5,#0x00
	mov	r6,#0x68
	mov	r7,#0x00
	sjmp	00151$
00150$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x86
	mov	r7,#0x00
00151$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x15
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:105: return false;
	jc	00134$
	ret
00134$:
;	screenSegmented.c:106: if (!screenPrvRegWrite(0x16, inverted ? 0x240000 : 0x040000))
	jnb	_screenDraw_PARM_2,00152$
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x24
	mov	r7,#0x00
	sjmp	00153$
00152$:
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x04
	mov	r7,#0x00
00153$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x16
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:107: return false;
	jc	00136$
	ret
00136$:
;	screenSegmented.c:109: if (!screenPrvRegWrite(0x19, 0x082514))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#0x2514
	mov	b,#0x08
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:110: return false;
	jc	00138$
	ret
00138$:
;	screenSegmented.c:111: if (!screenPrvRegWrite(0x1a, 0xa02000))
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	mov	a,#0x1a
	movx	@dptr,a
	mov	dptr,#0x2000
	mov	b,#0xa0
	clr	a
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:112: return false;
	jc	00140$
	ret
00140$:
;	screenSegmented.c:115: if (!screenPrvRegWrite(0x00, inverted ? 0xa0001c : 0x80001c))
	jnb	_screenDraw_PARM_2,00154$
	mov	r4,#0x1c
	mov	r5,#0x00
	mov	r6,#0xa0
	mov	r7,#0x00
	sjmp	00155$
00154$:
	mov	r4,#0x1c
	mov	r5,#0x00
	mov	r6,#0x80
	mov	r7,#0x00
00155$:
	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_screenPrvRegWriteGuts
;	screenSegmented.c:116: return false;
	jc	00145$
	ret
00145$:
;	screenSegmented.c:118: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
	mov	dptr,#0x0535
	clr	a
	mov	b,a
	lcall	_timerDelay
;	screenSegmented.c:120: screen_start_time = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_screen_start_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	screenSegmented.c:121: display_is_drawing = 1;
;	assignBit
	setb	_display_is_drawing
;	screenSegmented.c:122: return true;
	setb	c
;	screenSegmented.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_end'
;------------------------------------------------------------
;	screenSegmented.c:125: void display_end()
;	-----------------------------------------
;	 function display_end
;	-----------------------------------------
_display_end:
;	screenSegmented.c:127: P1_7 = 0; // assert reset
;	assignBit
	clr	_P1_7
;	screenSegmented.c:128: timerDelay(TIMER_TICKS_PER_SECOND / 100);
	mov	dptr,#0x3415
	clr	a
	mov	b,a
	lcall	_timerDelay
;	screenSegmented.c:129: P2_2 = 0; // power it dowm
;	assignBit
	clr	_P2_2
;	screenSegmented.c:131: P1FUNC &= ~0x40;
	anl	_P1FUNC,#0xbf
;	screenSegmented.c:132: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'is_drawing'
;------------------------------------------------------------
;	screenSegmented.c:134: uint8_t is_drawing()
;	-----------------------------------------
;	 function is_drawing
;	-----------------------------------------
_is_drawing:
;	screenSegmented.c:136: if (display_is_drawing)
	jnb	_display_is_drawing,00105$
;	screenSegmented.c:138: if (!P2_0 || (timerGet() - screen_start_time > (TIMER_TICKS_PER_SECOND*3)))
	jnb	_P2_0,00101$
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_screen_start_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	clr	c
	mov	a,#0xff
	subb	a,r4
	mov	a,#0x08
	subb	a,r5
	mov	a,#0x3d
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
00101$:
;	screenSegmented.c:140: display_end();
	lcall	_display_end
;	screenSegmented.c:141: display_is_drawing = 0;
;	assignBit
	clr	_display_is_drawing
;	screenSegmented.c:142: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	screenSegmented.c:144: return 1;
	mov	dpl,#0x01
	ret
00105$:
;	screenSegmented.c:146: return 0;
	mov	dpl,#0x00
;	screenSegmented.c:147: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__screen_start_time:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
