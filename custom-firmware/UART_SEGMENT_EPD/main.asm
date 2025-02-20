;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.1 #12107 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _uart_cmd
	.globl _send_to_next_node
	.globl _handle_cmd
	.globl _make_pixel_refresh
	.globl _sleep
	.globl _is_drawing
	.globl _screenDraw
	.globl _flashWrite
	.globl _flashRead
	.globl _wdtDeviceReset
	.globl _boardInit
	.globl _powerPortsDownForSleep
	.globl _clockingAndIntsInit
	.globl _timerGet
	.globl _timerInit
	.globl _sleepForMsec
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
	.globl _stay_awake_time
	.globl _start_time
	.globl _out_end_len
	.globl _out_posi
	.globl _endpoint
	.globl _cmd_data_cmd
	.globl _cmd_data_pos
	.globl _cmd_crc_in
	.globl _cmd_crc
	.globl _cmd_pos
	.globl _cmd_len
	.globl _data_len
	.globl _send_to_next_node_PARM_5
	.globl _send_to_next_node_PARM_4
	.globl _send_to_next_node_PARM_3
	.globl _send_to_next_node_PARM_2
	.globl _handle_cmd_PARM_3
	.globl _handle_cmd_PARM_2
	.globl _make_pixel_refresh_PARM_2
	.globl _uart_cmd_out_buffer
	.globl _display_loaded_buffer
	.globl _uart_cmd_buffer
	.globl _tx_free
	.globl _make_pixel_refresh_PARM_3
	.globl _out_enable
	.globl _new_cmd
	.globl _used_buffer
	.globl _uartInit
	.globl _uartTx
	.globl _UART_IRQ1
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_send_to_next_node_sloc0_1_0:
	.ds 2
_send_to_next_node_sloc1_1_0:
	.ds 2
_send_to_next_node_sloc2_1_0:
	.ds 3
_uart_cmd_sloc0_1_0:
	.ds 2
_uart_cmd_sloc1_1_0:
	.ds 2
_main_sloc1_1_0:
	.ds 1
_main_sloc2_1_0:
	.ds 1
_main_sloc3_1_0:
	.ds 1
_main_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
_used_buffer::
	.ds 1
_new_cmd::
	.ds 1
_out_enable::
	.ds 1
_make_pixel_refresh_PARM_3:
	.ds 1
_tx_free::
	.ds 1
_main_sloc0_1_0:
	.ds 1
_main_sloc5_1_0:
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
_uart_cmd_buffer::
	.ds 526
_display_loaded_buffer::
	.ds 200
_uart_cmd_out_buffer::
	.ds 263
_make_pixel_refresh_PARM_2:
	.ds 3
_make_pixel_refresh_our_id_65536_58:
	.ds 2
_handle_cmd_PARM_2:
	.ds 1
_handle_cmd_PARM_3:
	.ds 3
_handle_cmd_cmd_65536_64:
	.ds 1
_send_to_next_node_PARM_2:
	.ds 2
_send_to_next_node_PARM_3:
	.ds 1
_send_to_next_node_PARM_4:
	.ds 1
_send_to_next_node_PARM_5:
	.ds 3
_send_to_next_node_cmd_65536_69:
	.ds 1
_send_to_next_node_out_crc_65536_70:
	.ds 2
_uartTx_val_65536_75:
	.ds 1
_uart_cmd_rx_cur_65536_77:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_data_len::
	.ds 4
_cmd_len::
	.ds 4
_cmd_pos::
	.ds 2
_cmd_crc::
	.ds 4
_cmd_crc_in::
	.ds 4
_cmd_data_pos::
	.ds 4
_cmd_data_cmd::
	.ds 4
_endpoint::
	.ds 4
_out_posi::
	.ds 2
_out_end_len::
	.ds 2
_start_time::
	.ds 4
_stay_awake_time::
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_UART_IRQ1
	.ds	5
	ljmp	_T0_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:30: __bit used_buffer = 0;
;	assignBit
	clr	_used_buffer
;	main.c:31: __bit new_cmd = 0;
;	assignBit
	clr	_new_cmd
;	main.c:33: __bit out_enable = 0;
;	assignBit
	clr	_out_enable
;	main.c:117: __bit tx_free = 0;
;	assignBit
	clr	_tx_free
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sleep'
;------------------------------------------------------------
;	main.c:54: void sleep()
;	-----------------------------------------
;	 function sleep
;	-----------------------------------------
_sleep:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:56: powerPortsDownForSleep();
	lcall	_powerPortsDownForSleep
;	main.c:57: sleepForMsec(0);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_sleepForMsec
;	main.c:58: wdtDeviceReset();
;	main.c:59: }
	ljmp	_wdtDeviceReset
;------------------------------------------------------------
;Allocation info for local variables in function 'make_pixel_refresh'
;------------------------------------------------------------
;the_data                  Allocated with name '_make_pixel_refresh_PARM_2'
;our_id                    Allocated with name '_make_pixel_refresh_our_id_65536_58'
;our_byte                  Allocated with name '_make_pixel_refresh_our_byte_65536_59'
;used_bit                  Allocated with name '_make_pixel_refresh_used_bit_65536_59'
;our_bit                   Allocated with name '_make_pixel_refresh_our_bit_65536_59'
;i                         Allocated with name '_make_pixel_refresh_i_196608_62'
;------------------------------------------------------------
;	main.c:61: void make_pixel_refresh(uint16_t our_id, uint8_t *the_data, __bit custom_lut)
;	-----------------------------------------
;	 function make_pixel_refresh
;	-----------------------------------------
_make_pixel_refresh:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_make_pixel_refresh_our_id_65536_58
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:64: uint16_t our_byte = our_id / 8;
	mov	dptr,#_make_pixel_refresh_our_id_65536_58
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	swap	a
	rl	a
	xch	a,r4
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r4
	xch	a,r4
	anl	a,#0x1f
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
;	main.c:66: uint8_t used_bit = our_id % 8;
	anl	ar6,#0x07
;	main.c:68: uint8_t our_bit = (the_data[our_byte] >> used_bit) & 1;
	mov	dptr,#_make_pixel_refresh_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	mov	b,r6
	inc	b
	mov	a,r2
	sjmp	00124$
00123$:
	clr	c
	rrc	a
00124$:
	djnz	b,00123$
	anl	a,#0x01
	mov	r7,a
;	main.c:70: if (custom_lut)
	jnb	_make_pixel_refresh_PARM_3,00112$
;	main.c:72: flashRead(FLASH_ADDR_CUSTOM_LUT, &display_loaded_buffer[0], 30);
	mov	dptr,#_flashRead_PARM_2
	mov	a,#_display_loaded_buffer
	movx	@dptr,a
	mov	a,#(_display_loaded_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_flashRead_PARM_3
	mov	a,#0x1e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0xf000
	clr	a
	mov	b,a
	lcall	_flashRead
;	main.c:73: screenDraw(&display_loaded_buffer[0], our_bit, 1);
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_screenDraw_PARM_2,c
;	assignBit
	setb	_screenDraw_PARM_3
	mov	dptr,#_display_loaded_buffer
;	main.c:77: for (uint8_t i = 0; i < 14; i++)
	ljmp	_screenDraw
00112$:
	mov	r6,#0x00
00106$:
	cjne	r6,#0x0e,00126$
00126$:
	jnc	00101$
;	main.c:79: display_loaded_buffer[i] = 0x00;
	mov	a,r6
	add	a,#_display_loaded_buffer
	mov	dpl,a
	clr	a
	addc	a,#(_display_loaded_buffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	main.c:77: for (uint8_t i = 0; i < 14; i++)
	inc	r6
	sjmp	00106$
00101$:
;	main.c:81: screenDraw(&display_loaded_buffer[0], our_bit, 0);
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_screenDraw_PARM_2,c
;	assignBit
	clr	_screenDraw_PARM_3
	mov	dptr,#_display_loaded_buffer
;	main.c:83: }
	ljmp	_screenDraw
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_cmd'
;------------------------------------------------------------
;data_len                  Allocated with name '_handle_cmd_PARM_2'
;the_data                  Allocated with name '_handle_cmd_PARM_3'
;cmd                       Allocated with name '_handle_cmd_cmd_65536_64'
;------------------------------------------------------------
;	main.c:85: void handle_cmd(uint8_t cmd, uint8_t data_len, uint8_t *the_data)
;	-----------------------------------------
;	 function handle_cmd
;	-----------------------------------------
_handle_cmd:
	mov	a,dpl
	mov	dptr,#_handle_cmd_cmd_65536_64
	movx	@dptr,a
;	main.c:87: switch (cmd)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x41,00144$
	sjmp	00101$
00144$:
	cjne	r7,#0x42,00145$
	sjmp	00102$
00145$:
	cjne	r7,#0x43,00146$
	ljmp	00103$
00146$:
	cjne	r7,#0x45,00147$
	ljmp	00104$
00147$:
	cjne	r7,#0x46,00148$
	ljmp	00105$
00148$:
	cjne	r7,#0x47,00149$
	ljmp	00106$
00149$:
	cjne	r7,#0x48,00150$
	ljmp	00107$
00150$:
	cjne	r7,#0xab,00151$
	ljmp	00108$
00151$:
	ret
;	main.c:89: case CMD_TYPE_REFRESH_SEG:
00101$:
;	main.c:90: screenDraw(&the_data[1], the_data[0] & 1, 0);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_screenDraw_PARM_2,c
;	assignBit
	clr	_screenDraw_PARM_3
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	main.c:91: break;
	ljmp	_screenDraw
;	main.c:92: case CMD_TYPE_REFRESH_SEG_LOAD:
00102$:
;	main.c:93: flashWrite(FLASH_ADDR_CUSTOM_LUT, &the_data[0], data_len, 1);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_handle_cmd_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	dptr,#_flashWrite_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_flashWrite_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	assignBit
	setb	_flashWrite_PARM_4
	mov	dptr,#0xf000
	clr	a
	mov	b,a
;	main.c:94: break;
	ljmp	_flashWrite
;	main.c:95: case CMD_TYPE_REFRESH_SEG_LOADED:
00103$:
;	main.c:96: screenDraw(&the_data[1], the_data[0] & 1, 0);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_screenDraw_PARM_2,c
;	assignBit
	clr	_screenDraw_PARM_3
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
;	main.c:97: break;
	ljmp	_screenDraw
;	main.c:98: case CMD_TYPE_REFRESH_SEG_CUSTOM_LUT:
00104$:
;	main.c:99: screenDraw(&the_data[0], 0, 1);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	assignBit
	clr	_screenDraw_PARM_2
;	assignBit
	setb	_screenDraw_PARM_3
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	main.c:100: break;
	ljmp	_screenDraw
;	main.c:101: case CMD_TYPE_REFRESH_SEG_LOADED_CUSTOM_LUT:
00105$:
;	main.c:102: flashRead(FLASH_ADDR_CUSTOM_LUT, &display_loaded_buffer[0], 30);
	mov	dptr,#_flashRead_PARM_2
	mov	a,#_display_loaded_buffer
	movx	@dptr,a
	mov	a,#(_display_loaded_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_flashRead_PARM_3
	mov	a,#0x1e
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0xf000
	clr	a
	mov	b,a
	lcall	_flashRead
;	main.c:103: screenDraw(&display_loaded_buffer[0], 0, 1);
;	assignBit
	clr	_screenDraw_PARM_2
;	assignBit
	setb	_screenDraw_PARM_3
	mov	dptr,#_display_loaded_buffer
;	main.c:104: break;
	ljmp	_screenDraw
;	main.c:105: case CMD_TYPE_REFRESH_PIXEL:
00106$:
;	main.c:106: make_pixel_refresh(0, &the_data[0], 0);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_make_pixel_refresh_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	assignBit
	clr	_make_pixel_refresh_PARM_3
	mov	dptr,#0x0000
;	main.c:107: break;
;	main.c:108: case CMD_TYPE_REFRESH_PIXEL_CUSTOM_LUT:
	ljmp	_make_pixel_refresh
00107$:
;	main.c:109: make_pixel_refresh(0, &the_data[0], 1);
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_make_pixel_refresh_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	assignBit
	setb	_make_pixel_refresh_PARM_3
	mov	dptr,#0x0000
;	main.c:110: break;
;	main.c:111: case CMD_TYPE_STAY_AWAKE:
	ljmp	_make_pixel_refresh
00108$:
;	main.c:112: stay_awake_time = (TIMER_TICKS_PER_SECOND / 10) * the_data[0];
	mov	dptr,#_handle_cmd_PARM_3
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dptr,#__mullong_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x08d5
	mov	b,#0x02
	clr	a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_stay_awake_time
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
;	main.c:114: }
;	main.c:115: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartInit'
;------------------------------------------------------------
;	main.c:119: void uartInit(void)
;	-----------------------------------------
;	 function uartInit
;	-----------------------------------------
_uartInit:
;	main.c:122: CLKEN |= 0x20;
	orl	_CLKEN,#0x20
;	main.c:124: UARTBRGH = 0x00; // config for 115200
	mov	_UARTBRGH,#0x00
;	main.c:125: UARTBRGL = 0x8A;
	mov	_UARTBRGL,#0x8a
;	main.c:126: UARTSTA = 0x12; // also set the "empty" bit else we wait forever for it to go up
	mov	_UARTSTA,#0x12
;	main.c:127: IEN_UART0 = 1;
;	assignBit
	setb	_IEN_UART0
;	main.c:128: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'send_to_next_node'
;------------------------------------------------------------
;sloc0                     Allocated with name '_send_to_next_node_sloc0_1_0'
;sloc1                     Allocated with name '_send_to_next_node_sloc1_1_0'
;sloc2                     Allocated with name '_send_to_next_node_sloc2_1_0'
;endp                      Allocated with name '_send_to_next_node_PARM_2'
;data_len                  Allocated with name '_send_to_next_node_PARM_3'
;cmd_len                   Allocated with name '_send_to_next_node_PARM_4'
;cmd_buffer                Allocated with name '_send_to_next_node_PARM_5'
;cmd                       Allocated with name '_send_to_next_node_cmd_65536_69'
;out_crc                   Allocated with name '_send_to_next_node_out_crc_65536_70'
;i                         Allocated with name '_send_to_next_node_i_131072_71'
;i                         Allocated with name '_send_to_next_node_i_131072_73'
;------------------------------------------------------------
;	main.c:130: void send_to_next_node(uint8_t cmd, uint16_t endp, uint8_t data_len, uint8_t cmd_len, uint8_t *cmd_buffer)
;	-----------------------------------------
;	 function send_to_next_node
;	-----------------------------------------
_send_to_next_node:
	mov	a,dpl
	mov	dptr,#_send_to_next_node_cmd_65536_69
	movx	@dptr,a
;	main.c:134: uart_cmd_out_buffer[0] = 0xCA;
	mov	dptr,#_uart_cmd_out_buffer
	mov	a,#0xca
	movx	@dptr,a
;	main.c:135: uart_cmd_out_buffer[1] = data_len;
	mov	dptr,#_send_to_next_node_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_uart_cmd_out_buffer + 0x0001)
	movx	@dptr,a
;	main.c:136: out_crc += data_len;
	mov	ar6,r7
	mov	r7,#0x00
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0xca
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
;	main.c:137: uart_cmd_out_buffer[2] = cmd_len;
	mov	dptr,#_send_to_next_node_PARM_4
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#(_uart_cmd_out_buffer + 0x0002)
	movx	@dptr,a
;	main.c:138: out_crc += cmd_len;
	mov	ar1,r3
	mov	r2,#0x00
	mov	_send_to_next_node_sloc0_1_0,r4
	mov	(_send_to_next_node_sloc0_1_0 + 1),r5
	mov	ar0,r1
	mov	ar5,r2
	mov	a,r0
	add	a,_send_to_next_node_sloc0_1_0
	mov	r0,a
	mov	a,r5
	addc	a,(_send_to_next_node_sloc0_1_0 + 1)
	mov	r5,a
	mov	_send_to_next_node_sloc0_1_0,r0
	mov	(_send_to_next_node_sloc0_1_0 + 1),r5
;	main.c:139: uart_cmd_out_buffer[3] = cmd;
	mov	dptr,#_send_to_next_node_cmd_65536_69
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#(_uart_cmd_out_buffer + 0x0003)
	movx	@dptr,a
;	main.c:140: out_crc += cmd;
;	1-genFromRTrack replaced	mov	(_send_to_next_node_sloc1_1_0 + 1),#0x00
	mov	_send_to_next_node_sloc1_1_0,r4
	mov	(_send_to_next_node_sloc1_1_0 + 1),r7
	mov	r5,(_send_to_next_node_sloc1_1_0 + 1)
	mov	a,r4
	add	a,_send_to_next_node_sloc0_1_0
	mov	r4,a
	mov	a,r5
	addc	a,(_send_to_next_node_sloc0_1_0 + 1)
	mov	r5,a
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:141: for (uint8_t i = 0; i < cmd_len; i++)
	mov	dptr,#_send_to_next_node_PARM_5
	movx	a,@dptr
	mov	_send_to_next_node_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_send_to_next_node_sloc2_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_send_to_next_node_sloc2_1_0 + 2),a
;	1-genFromRTrack replaced	mov	_send_to_next_node_sloc1_1_0,#0x00
	mov	_send_to_next_node_sloc1_1_0,r7
00104$:
	clr	c
	mov	a,_send_to_next_node_sloc1_1_0
	subb	a,r3
	jnc	00101$
;	main.c:143: uart_cmd_out_buffer[4 + i] = cmd_buffer[i];
	push	ar1
	push	ar2
	mov	r1,_send_to_next_node_sloc1_1_0
	mov	r2,#0x00
	mov	a,#0x04
	add	a,r1
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	a,r1
	add	a,#_uart_cmd_out_buffer
	mov	_send_to_next_node_sloc0_1_0,a
	mov	a,r2
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	(_send_to_next_node_sloc0_1_0 + 1),a
	mov	a,_send_to_next_node_sloc1_1_0
	add	a,_send_to_next_node_sloc2_1_0
	mov	r1,a
	clr	a
	addc	a,(_send_to_next_node_sloc2_1_0 + 1)
	mov	r2,a
	mov	r5,(_send_to_next_node_sloc2_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r5
	lcall	__gptrget
	mov	dpl,_send_to_next_node_sloc0_1_0
	mov	dph,(_send_to_next_node_sloc0_1_0 + 1)
	movx	@dptr,a
;	main.c:144: out_crc += cmd_buffer[i];
	mov	dpl,r1
	mov	dph,r2
	mov	b,r5
	lcall	__gptrget
	mov	r1,a
	mov	r5,#0x00
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	a,r1
	add	a,r2
	mov	r2,a
	mov	a,r5
	addc	a,r4
	mov	r4,a
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	mov	a,r2
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:141: for (uint8_t i = 0; i < cmd_len; i++)
	inc	_send_to_next_node_sloc1_1_0
	pop	ar2
	pop	ar1
	sjmp	00104$
00101$:
;	main.c:146: for (int i = 0; i < (data_len - cmd_len); i++)
	mov	a,#0x04
	add	a,r1
	mov	r4,a
	clr	a
	addc	a,r2
	mov	r5,a
	mov	a,r6
	clr	c
	subb	a,r1
	mov	r3,a
	mov	a,r7
	subb	a,r2
	mov	r2,a
	mov	r0,#0x00
	mov	r1,#0x00
00107$:
	clr	c
	mov	a,r0
	subb	a,r3
	mov	a,r1
	xrl	a,#0x80
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	main.c:148: uart_cmd_out_buffer[4 + cmd_len + i] = 0x00;
	push	ar3
	push	ar2
	mov	a,r0
	add	a,r4
	mov	r2,a
	mov	a,r1
	addc	a,r5
	mov	r3,a
	mov	a,r2
	add	a,#_uart_cmd_out_buffer
	mov	dpl,a
	mov	a,r3
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
;	main.c:146: for (int i = 0; i < (data_len - cmd_len); i++)
	inc	r0
	cjne	r0,#0x00,00131$
	inc	r1
00131$:
	pop	ar2
	pop	ar3
	sjmp	00107$
00102$:
;	main.c:151: uart_cmd_out_buffer[4 + data_len] = endp >> 8;
	mov	a,#0x04
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_uart_cmd_out_buffer
	mov	r4,a
	mov	a,r5
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	r5,a
	mov	dptr,#_send_to_next_node_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	main.c:152: out_crc += endp >> 8;
	mov	ar4,r3
	mov	r5,#0x00
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	mov	a,r4
	add	a,r0
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:153: uart_cmd_out_buffer[5 + data_len] = endp & 0xff;
	mov	a,#0x05
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_uart_cmd_out_buffer
	mov	dpl,a
	mov	a,r5
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	dph,a
	mov	ar5,r2
	mov	a,r5
	movx	@dptr,a
;	main.c:154: out_crc += endp & 0xff;
	mov	r3,#0x00
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r2
	add	a,r4
	mov	r2,a
	mov	a,r3
	addc	a,r5
	mov	r3,a
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:156: uart_cmd_out_buffer[6 + data_len] = out_crc >> 8;
	mov	a,#0x06
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r4
	add	a,#_uart_cmd_out_buffer
	mov	r4,a
	mov	a,r5
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	r5,a
	mov	dptr,#_send_to_next_node_out_crc_65536_70
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	main.c:157: uart_cmd_out_buffer[7 + data_len] = out_crc & 0xff;
	mov	a,#0x07
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r6
	add	a,#_uart_cmd_out_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	dph,a
	mov	a,r2
	movx	@dptr,a
;	main.c:159: out_end_len = 7 + data_len;
	mov	dptr,#_out_end_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	main.c:160: out_posi = 1;
	mov	dptr,#_out_posi
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:161: uartTx(uart_cmd_out_buffer[0]);
	mov	dptr,#_uart_cmd_out_buffer
	movx	a,@dptr
	mov	dpl,a
	lcall	_uartTx
;	main.c:162: out_enable = 1;
;	assignBit
	setb	_out_enable
;	main.c:163: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uartTx'
;------------------------------------------------------------
;val                       Allocated with name '_uartTx_val_65536_75'
;------------------------------------------------------------
;	main.c:166: void uartTx(uint8_t val)
;	-----------------------------------------
;	 function uartTx
;	-----------------------------------------
_uartTx:
	mov	a,dpl
	mov	dptr,#_uartTx_val_65536_75
	movx	@dptr,a
;	main.c:168: while (tx_free)
00101$:
	jb	_tx_free,00101$
;	main.c:170: UARTBUF = val;
	mov	dptr,#_uartTx_val_65536_75
	movx	a,@dptr
	mov	_UARTBUF,a
;	main.c:171: tx_free = 1;
;	assignBit
	setb	_tx_free
;	main.c:172: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_cmd'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uart_cmd_sloc0_1_0'
;sloc1                     Allocated with name '_uart_cmd_sloc1_1_0'
;rx_cur                    Allocated with name '_uart_cmd_rx_cur_65536_77'
;------------------------------------------------------------
;	main.c:174: void uart_cmd(uint8_t rx_cur)
;	-----------------------------------------
;	 function uart_cmd
;	-----------------------------------------
_uart_cmd:
	mov	a,dpl
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	@dptr,a
;	main.c:176: switch (cmd_pos)
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,#0x08
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00142$
	ret
00142$:
	mov	a,r6
	add	a,#(00143$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00144$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00143$:
	.db	00101$
	.db	00104$
	.db	00105$
	.db	00109$
	.db	00110$
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
00144$:
	.db	00101$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
;	main.c:178: case 0:
00101$:
;	main.c:179: if (rx_cur == 0xCA)
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xca,00145$
	sjmp	00146$
00145$:
	ret
00146$:
;	main.c:181: cmd_crc[used_buffer] = 0x00CA;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_cmd_crc
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	dph,a
	mov	a,#0xca
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:182: P0FUNC |= 0b01000000; // Enable Uart TXD only now to wake up the next node
	orl	_P0FUNC,#0x40
;	main.c:183: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:185: break;
	ret
;	main.c:186: case 1:
00104$:
;	main.c:187: data_len[used_buffer] = rx_cur;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_data_len
	mov	r4,a
	mov	a,r7
	addc	a,#(_data_len >> 8)
	mov	r5,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r3,a
	mov	r1,a
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	main.c:188: cmd_crc[used_buffer] += rx_cur;
	mov	a,r6
	add	a,#_cmd_crc
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:189: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:190: break;
	ret
;	main.c:191: case 2:
00105$:
;	main.c:192: if (rx_cur <= data_len[used_buffer])
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_data_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r3,a
	mov	r1,a
	mov	r2,#0x00
	clr	c
	mov	a,r4
	subb	a,r1
	mov	a,r5
	subb	a,r2
	jc	00107$
;	main.c:194: cmd_len[used_buffer] = rx_cur;
	mov	a,r6
	add	a,#_cmd_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_len >> 8)
	mov	dph,a
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	main.c:195: cmd_data_pos[used_buffer] = 0;
	mov	a,r6
	add	a,#_cmd_data_pos
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_data_pos >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:196: cmd_crc[used_buffer] += rx_cur;
	mov	a,r6
	add	a,#_cmd_crc
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:197: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	ret
00107$:
;	main.c:201: cmd_pos = 0;
	mov	dptr,#_cmd_pos
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:203: break;
	ret
;	main.c:204: case 3:
00109$:
;	main.c:205: cmd_data_cmd[used_buffer] = rx_cur;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_cmd_data_cmd
	mov	r4,a
	mov	a,r7
	addc	a,#(_cmd_data_cmd >> 8)
	mov	r5,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r3,a
	mov	r1,a
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	main.c:206: cmd_crc[used_buffer] += rx_cur;
	mov	a,r6
	add	a,#_cmd_crc
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:207: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:208: break;
	ret
;	main.c:209: case 4:
00110$:
;	main.c:210: uart_cmd_buffer[used_buffer][cmd_data_pos[used_buffer]++] = rx_cur;
	mov	dptr,#__mulint_PARM_2
	mov	c,_used_buffer
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_uart_cmd_buffer
	mov	_uart_cmd_sloc0_1_0,a
	mov	a,r7
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	(_uart_cmd_sloc0_1_0 + 1),a
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r5,#0x00
	add	a,acc
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_cmd_data_pos
	mov	r2,a
	mov	a,r5
	addc	a,#(_cmd_data_pos >> 8)
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x01
	add	a,r0
	mov	r6,a
	clr	a
	addc	a,r1
	mov	r7,a
	mov	dpl,r2
	mov	dph,r3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r0
	add	a,_uart_cmd_sloc0_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_uart_cmd_sloc0_1_0 + 1)
	mov	r1,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	_uart_cmd_sloc0_1_0,a
	mov	dpl,r0
	mov	dph,r1
	movx	@dptr,a
;	main.c:211: cmd_crc[used_buffer] += rx_cur;
	mov	a,r4
	add	a,#_cmd_crc
	mov	r1,a
	mov	a,r5
	addc	a,#(_cmd_crc >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	mov	_uart_cmd_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_uart_cmd_sloc1_1_0 + 1),a
	mov	(_uart_cmd_sloc0_1_0 + 1),#0x00
	mov	r0,_uart_cmd_sloc0_1_0
	mov	r3,(_uart_cmd_sloc0_1_0 + 1)
	mov	a,r0
	add	a,_uart_cmd_sloc1_1_0
	mov	r0,a
	mov	a,r3
	addc	a,(_uart_cmd_sloc1_1_0 + 1)
	mov	r3,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:212: if (cmd_data_pos[used_buffer] >= data_len[used_buffer])
	mov	a,r4
	add	a,#_data_len
	mov	dpl,a
	mov	a,r5
	addc	a,#(_data_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r6
	subb	a,r4
	mov	a,r7
	subb	a,r5
	jnc	00148$
	ret
00148$:
;	main.c:214: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:216: break;
	ret
;	main.c:217: case 5:
00113$:
;	main.c:218: endpoint[used_buffer] = rx_cur << 8;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_endpoint
	mov	r4,a
	mov	a,r7
	addc	a,#(_endpoint >> 8)
	mov	r5,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	ar1,r3
	mov	r0,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:219: cmd_crc[used_buffer] += rx_cur;
	mov	a,r6
	add	a,#_cmd_crc
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r3
	add	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	main.c:220: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:221: break;
	ret
;	main.c:222: case 6:
00114$:
;	main.c:223: endpoint[used_buffer] += rx_cur;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_endpoint
	mov	r4,a
	mov	a,r7
	addc	a,#(_endpoint >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r0,a
	mov	r1,#0x00
	add	a,r2
	mov	r2,a
	mov	a,r1
	addc	a,r3
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	main.c:224: cmd_crc[used_buffer] += rx_cur;
	mov	a,r6
	add	a,#_cmd_crc
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r0
	add	a,r4
	mov	r0,a
	mov	a,r1
	addc	a,r5
	mov	r1,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:225: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:226: break;
	ret
;	main.c:227: case 7:
00115$:
;	main.c:228: cmd_crc_in[used_buffer] = rx_cur << 8;
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_cmd_crc_in
	mov	r6,a
	mov	a,r7
	addc	a,#(_cmd_crc_in >> 8)
	mov	r7,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:229: cmd_pos++;
	mov	dptr,#_cmd_pos
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	main.c:230: break;
;	main.c:231: case 8:
	ret
00116$:
;	main.c:232: if ((cmd_crc_in[used_buffer] | rx_cur) == cmd_crc[used_buffer])
	mov	c,_used_buffer
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_cmd_crc_in
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_crc_in >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_uart_cmd_rx_cur_65536_77
	movx	a,@dptr
	mov	r2,#0x00
	orl	ar4,a
	mov	a,r2
	orl	ar5,a
	mov	a,r6
	add	a,#_cmd_crc
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_crc >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	cjne	a,ar6,00118$
	mov	a,r5
	cjne	a,ar7,00118$
;	main.c:234: used_buffer = !used_buffer;
	cpl	_used_buffer
;	main.c:235: new_cmd = 1;
;	assignBit
	setb	_new_cmd
00118$:
;	main.c:237: cmd_pos = 0;
	mov	dptr,#_cmd_pos
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:239: }
;	main.c:240: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_IRQ1'
;------------------------------------------------------------
;	main.c:242: void UART_IRQ1(void) __interrupt(0)
;	-----------------------------------------
;	 function UART_IRQ1
;	-----------------------------------------
_UART_IRQ1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:244: P1_0 = 1;
;	assignBit
	setb	_P1_0
;	main.c:245: if (UARTSTA & 1)
	mov	a,_UARTSTA
	jnb	acc.0,00102$
;	main.c:247: UARTSTA &= 0xfe;
	anl	_UARTSTA,#0xfe
;	main.c:248: uart_cmd(UARTBUF);
	mov	dpl,_UARTBUF
	lcall	_uart_cmd
00102$:
;	main.c:250: if (UARTSTA & 2)
	mov	a,_UARTSTA
	jnb	acc.1,00109$
;	main.c:252: UARTSTA &= 0xfd;
	anl	_UARTSTA,#0xfd
;	main.c:253: if (out_enable)
	jnb	_out_enable,00107$
;	main.c:255: if (out_posi <= out_end_len)
	mov	dptr,#_out_posi
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_out_end_len
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jc	00104$
;	main.c:257: UARTBUF = uart_cmd_out_buffer[out_posi++];
	mov	dptr,#_out_posi
	mov	a,#0x01
	add	a,r6
	movx	@dptr,a
	clr	a
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	add	a,#_uart_cmd_out_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_uart_cmd_out_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_UARTBUF,a
	sjmp	00107$
00104$:
;	main.c:261: out_enable = 0;
;	assignBit
	clr	_out_enable
00107$:
;	main.c:264: tx_free = 0;
;	assignBit
	clr	_tx_free
00109$:
;	main.c:266: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	main.c:267: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;sloc1                     Allocated with name '_main_sloc1_1_0'
;sloc2                     Allocated with name '_main_sloc2_1_0'
;sloc3                     Allocated with name '_main_sloc3_1_0'
;sloc4                     Allocated with name '_main_sloc4_1_0'
;------------------------------------------------------------
;	main.c:269: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:271: P0CHSTA = 0x00;
	mov	_P0CHSTA,#0x00
;	main.c:272: clockingAndIntsInit();
	lcall	_clockingAndIntsInit
;	main.c:273: timerInit();
	lcall	_timerInit
;	main.c:274: boardInit();
	lcall	_boardInit
;	main.c:276: IEN_EA = 1;
;	assignBit
	setb	_IEN_EA
;	main.c:278: flashRead(0xe000, &display_loaded_buffer[0], 1);
	mov	dptr,#_flashRead_PARM_2
	mov	a,#_display_loaded_buffer
	movx	@dptr,a
	mov	a,#(_display_loaded_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_flashRead_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0xe000
	clr	a
	mov	b,a
	lcall	_flashRead
;	main.c:279: if (display_loaded_buffer[0] != 0xAC)
	mov	dptr,#_display_loaded_buffer
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xac,00165$
	sjmp	00129$
00165$:
;	main.c:281: display_loaded_buffer[3] = 0b01101000; /*number small last*/
	mov	dptr,#(_display_loaded_buffer + 0x0003)
	mov	a,#0x68
	movx	@dptr,a
;	main.c:282: display_loaded_buffer[4] = 0b11101000; /*number small after point*/
	mov	dptr,#(_display_loaded_buffer + 0x0004)
	mov	a,#0xe8
	movx	@dptr,a
;	main.c:283: display_loaded_buffer[2] = 0b11111100; /*number small before point*/
	mov	dptr,#(_display_loaded_buffer + 0x0002)
	mov	a,#0xfc
	movx	@dptr,a
;	main.c:284: screenDraw(&display_loaded_buffer[1], 0, 0);
;	assignBit
	clr	_screenDraw_PARM_2
;	assignBit
	clr	_screenDraw_PARM_3
	mov	dptr,#(_display_loaded_buffer + 0x0001)
	lcall	_screenDraw
;	main.c:285: while (is_drawing())
00101$:
	lcall	_is_drawing
	mov	a,dpl
	jnz	00101$
;	main.c:288: display_loaded_buffer[0] = 0xAC;
	mov	dptr,#_display_loaded_buffer
	mov	a,#0xac
	movx	@dptr,a
;	main.c:289: flashWrite(0xe000, &display_loaded_buffer[0], 1, 1);
	mov	dptr,#_flashWrite_PARM_2
	mov	a,#_display_loaded_buffer
	movx	@dptr,a
	mov	a,#(_display_loaded_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_flashWrite_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	assignBit
	setb	_flashWrite_PARM_4
	mov	dptr,#0xe000
	clr	a
	mov	b,a
	lcall	_flashWrite
;	main.c:292: while (is_drawing() || (timerGet() - start_time < stay_awake_time))
00129$:
00120$:
	lcall	_is_drawing
	mov	a,dpl
	jnz	00121$
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_start_time
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
	mov	dptr,#_stay_awake_time
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
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	subb	a,r3
	jc	00168$
	ljmp	_sleep
00168$:
00121$:
;	main.c:294: if (new_cmd)
;	main.c:296: new_cmd = 0;
;	assignBit
	jbc	_new_cmd,00169$
	sjmp	00120$
00169$:
;	main.c:297: start_time = timerGet();
	lcall	_timerGet
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_start_time
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
;	main.c:298: if (endpoint[!used_buffer] == BROADCAST_NODE_ID) // The CMD is a broadcast cmd so for every node
	mov	c,_used_buffer
	cpl	c
	mov  _main_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_endpoint
	mov	dpl,a
	mov	a,r7
	addc	a,#(_endpoint >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc4_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_main_sloc4_1_0 + 1),a
	mov	r2,_main_sloc4_1_0
	mov	r3,(_main_sloc4_1_0 + 1)
	cjne	r2,#0xff,00170$
	cjne	r3,#0xff,00170$
	sjmp	00171$
00170$:
	ljmp	00115$
00171$:
;	main.c:300: send_to_next_node(cmd_data_cmd[!used_buffer], endpoint[!used_buffer], data_len[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
	mov	a,r6
	add	a,#_cmd_data_cmd
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_data_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc3_1_0,a
	mov	a,r6
	add	a,#_data_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc1_1_0,a
	mov	a,r6
	add	a,#_cmd_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc2_1_0,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc0_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	mov	a,r0
	add	a,#_uart_cmd_buffer
	mov	r0,a
	mov	a,r1
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r1,a
	mov	r5,#0x00
	mov	dptr,#_send_to_next_node_PARM_2
	mov	a,_main_sloc4_1_0
	movx	@dptr,a
	mov	a,(_main_sloc4_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_3
	mov	a,_main_sloc1_1_0
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_4
	mov	a,_main_sloc2_1_0
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_5
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,_main_sloc3_1_0
	lcall	_send_to_next_node
;	main.c:301: handle_cmd(cmd_data_cmd[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
	mov	c,_used_buffer
	cpl	c
	mov  _main_sloc5_1_0,c
	clr	a
	rlc	a
	mov	r5,#0x00
	add	a,acc
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_cmd_data_cmd
	mov	dpl,a
	mov	a,r5
	addc	a,#(_cmd_data_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	a,r4
	add	a,#_cmd_len
	mov	dpl,a
	mov	a,r5
	addc	a,#(_cmd_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc3_1_0,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc5_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar1
	lcall	__mulint
	mov	r0,dpl
	mov	r4,dph
	pop	ar1
	mov	a,r0
	add	a,#_uart_cmd_buffer
	mov	r0,a
	mov	a,r4
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#_handle_cmd_PARM_2
	mov	a,_main_sloc3_1_0
	movx	@dptr,a
	mov	dptr,#_handle_cmd_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	lcall	_handle_cmd
	ljmp	00120$
00115$:
;	main.c:303: else if (endpoint[!used_buffer] == 0) // The CMD was meant for us
	mov	a,_main_sloc4_1_0
	orl	a,(_main_sloc4_1_0 + 1)
	jz	00172$
	ljmp	00112$
00172$:
;	main.c:305: send_to_next_node(CMD_TYPE_NODE_TX, NODE_TX_ID, data_len[!used_buffer], 0, uart_cmd_buffer[!used_buffer]);
	mov	a,r6
	add	a,#_data_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc0_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar5
	lcall	__mulint
	mov	r1,dpl
	mov	r4,dph
	pop	ar5
	mov	a,r1
	add	a,#_uart_cmd_buffer
	mov	r1,a
	mov	a,r4
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r0,a
	mov	r4,#0x00
	mov	dptr,#_send_to_next_node_PARM_2
	mov	a,#0xfe
	movx	@dptr,a
	inc	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_4
	clr	a
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_5
	mov	a,r1
	movx	@dptr,a
	mov	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0xaa
	lcall	_send_to_next_node
;	main.c:306: handle_cmd(cmd_data_cmd[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
	mov	c,_used_buffer
	cpl	c
	mov  _main_sloc5_1_0,c
	clr	a
	rlc	a
	mov	r5,#0x00
	add	a,acc
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_cmd_data_cmd
	mov	dpl,a
	mov	a,r5
	addc	a,#(_cmd_data_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r1,a
	mov	a,r4
	add	a,#_cmd_len
	mov	dpl,a
	mov	a,r5
	addc	a,#(_cmd_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	_main_sloc4_1_0,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc5_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar1
	lcall	__mulint
	mov	r0,dpl
	mov	r4,dph
	pop	ar1
	mov	a,r0
	add	a,#_uart_cmd_buffer
	mov	r0,a
	mov	a,r4
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#_handle_cmd_PARM_2
	mov	a,_main_sloc4_1_0
	movx	@dptr,a
	mov	dptr,#_handle_cmd_PARM_3
	mov	a,r0
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r1
	lcall	_handle_cmd
	ljmp	00120$
00112$:
;	main.c:310: send_to_next_node(cmd_data_cmd[!used_buffer], endpoint[!used_buffer] - 1, data_len[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
	mov	a,r6
	add	a,#_cmd_data_cmd
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_data_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	dec	r2
	cjne	r2,#0xff,00173$
	dec	r3
00173$:
	mov	a,r6
	add	a,#_data_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	mov	a,r6
	add	a,#_cmd_len
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_len >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc0_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar7
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r1,dpl
	mov	r6,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar7
	mov	a,r1
	add	a,#_uart_cmd_buffer
	mov	r1,a
	mov	a,r6
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r0,a
	mov	r6,#0x00
	mov	dptr,#_send_to_next_node_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_4
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#_send_to_next_node_PARM_5
	mov	a,r1
	movx	@dptr,a
	mov	a,r0
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	lcall	_send_to_next_node
;	main.c:311: if (cmd_data_cmd[!used_buffer] == CMD_TYPE_REFRESH_PIXEL) // Special CMD so that we can use one TX for all pixels
	mov	c,_used_buffer
	cpl	c
	mov  _main_sloc5_1_0,c
	clr	a
	rlc	a
	mov	r7,#0x00
	add	a,acc
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_cmd_data_cmd
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cmd_data_cmd >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x47,00109$
	cjne	r5,#0x00,00109$
;	main.c:312: make_pixel_refresh(endpoint[!used_buffer], uart_cmd_buffer[!used_buffer], 0);
	mov	a,r6
	add	a,#_endpoint
	mov	dpl,a
	mov	a,r7
	addc	a,#(_endpoint >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc5_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r0,dpl
	mov	r1,dph
	pop	ar2
	pop	ar3
	mov	a,r0
	add	a,#_uart_cmd_buffer
	mov	r0,a
	mov	a,r1
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r1,a
	mov	dptr,#_make_pixel_refresh_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	assignBit
	clr	_make_pixel_refresh_PARM_3
	mov	dpl,r2
	mov	dph,r3
	lcall	_make_pixel_refresh
	ljmp	00120$
00109$:
;	main.c:313: else if (cmd_data_cmd[!used_buffer] == CMD_TYPE_REFRESH_PIXEL_CUSTOM_LUT)
	cjne	r4,#0x48,00176$
	cjne	r5,#0x00,00176$
	sjmp	00177$
00176$:
	ljmp	00120$
00177$:
;	main.c:314: make_pixel_refresh(endpoint[!used_buffer], uart_cmd_buffer[!used_buffer], 1);
	mov	a,r6
	add	a,#_endpoint
	mov	dpl,a
	mov	a,r7
	addc	a,#(_endpoint >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__mulint_PARM_2
	mov	c,_main_sloc5_1_0
	clr	a
	rlc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0107
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_uart_cmd_buffer
	mov	r4,a
	mov	a,r5
	addc	a,#(_uart_cmd_buffer >> 8)
	mov	r5,a
	mov	dptr,#_make_pixel_refresh_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	assignBit
	setb	_make_pixel_refresh_PARM_3
	mov	dpl,r6
	mov	dph,r7
	lcall	_make_pixel_refresh
;	main.c:318: sleep();
;	main.c:319: }
	ljmp	00120$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__data_len:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__cmd_len:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__cmd_pos:
	.byte #0x00, #0x00	; 0
__xinit__cmd_crc:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__cmd_crc_in:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__cmd_data_pos:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__cmd_data_cmd:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__endpoint:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
__xinit__out_posi:
	.byte #0x00, #0x00	; 0
__xinit__out_end_len:
	.byte #0x00, #0x00	; 0
__xinit__start_time:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit__stay_awake_time:
	.byte #0xd5, #0x08, #0x02, #0x00	; 133333
	.area CABS    (ABS,CODE)
