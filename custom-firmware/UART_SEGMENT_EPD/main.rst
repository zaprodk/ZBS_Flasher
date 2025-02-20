                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.1 #12107 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _uart_cmd
                                     13 	.globl _send_to_next_node
                                     14 	.globl _handle_cmd
                                     15 	.globl _make_pixel_refresh
                                     16 	.globl _sleep
                                     17 	.globl _is_drawing
                                     18 	.globl _screenDraw
                                     19 	.globl _flashWrite
                                     20 	.globl _flashRead
                                     21 	.globl _wdtDeviceReset
                                     22 	.globl _boardInit
                                     23 	.globl _powerPortsDownForSleep
                                     24 	.globl _clockingAndIntsInit
                                     25 	.globl _timerGet
                                     26 	.globl _timerInit
                                     27 	.globl _sleepForMsec
                                     28 	.globl _UART_TXE
                                     29 	.globl _UART_RXF
                                     30 	.globl _IEN_EA
                                     31 	.globl _IEN_RF2
                                     32 	.globl _IEN_RF1
                                     33 	.globl _IEN_TMR1
                                     34 	.globl _IEN_TMR0
                                     35 	.globl _IEN_UART0
                                     36 	.globl _P2_7
                                     37 	.globl _P2_6
                                     38 	.globl _P2_5
                                     39 	.globl _P2_4
                                     40 	.globl _P2_3
                                     41 	.globl _P2_2
                                     42 	.globl _P2_1
                                     43 	.globl _P2_0
                                     44 	.globl _P1_7
                                     45 	.globl _P1_6
                                     46 	.globl _P1_5
                                     47 	.globl _P1_4
                                     48 	.globl _P1_3
                                     49 	.globl _P1_2
                                     50 	.globl _P1_1
                                     51 	.globl _P1_0
                                     52 	.globl _P0_7
                                     53 	.globl _P0_6
                                     54 	.globl _P0_5
                                     55 	.globl _P0_4
                                     56 	.globl _P0_3
                                     57 	.globl _P0_2
                                     58 	.globl _P0_1
                                     59 	.globl _P0_0
                                     60 	.globl _CFGPAGE
                                     61 	.globl _TCON2
                                     62 	.globl _SETTINGS
                                     63 	.globl _TRIGGER
                                     64 	.globl _UNK_C1
                                     65 	.globl _RADIO_GOTLEN
                                     66 	.globl _RADIO_INITSEQ3
                                     67 	.globl _RADIO_RXLEN
                                     68 	.globl _RADIO_RXPTRH
                                     69 	.globl _RADIO_RXPTRL
                                     70 	.globl _RADIO_INITSEQ5
                                     71 	.globl _RADIO_INITSEQ4
                                     72 	.globl _RADIO_INITSEQ0
                                     73 	.globl _RADIO_TXLEN
                                     74 	.globl _RADIO_INITSEQ2
                                     75 	.globl _RADIO_INITSEQ1
                                     76 	.globl _RADIO_TXPTRH
                                     77 	.globl _RADIO_TXPTRL
                                     78 	.globl _TEMPCAL6
                                     79 	.globl _TEMPCAL5
                                     80 	.globl _TEMPCAL4
                                     81 	.globl _TEMPCAL3
                                     82 	.globl _TEMPRETL
                                     83 	.globl _TEMPRETH
                                     84 	.globl _TEMPCFG
                                     85 	.globl _TEMPCAL2
                                     86 	.globl _TEMPCAL1
                                     87 	.globl _FWRTHREE
                                     88 	.globl _FWRLENH
                                     89 	.globl _FWRLENL
                                     90 	.globl _FWRDSTH
                                     91 	.globl _FWRDSTL
                                     92 	.globl _FWRSRCH
                                     93 	.globl _FWRSRCL
                                     94 	.globl _FPGNO
                                     95 	.globl _T1
                                     96 	.globl _T0
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _UARTBRGH
                                    104 	.globl _UARTBRGL
                                    105 	.globl _UARTBUF
                                    106 	.globl _UARTSTA
                                    107 	.globl _I2CUNKNOWN
                                    108 	.globl _I2CSPEED
                                    109 	.globl _I2CCTL
                                    110 	.globl _I2CBUF
                                    111 	.globl _I2CSTATE
                                    112 	.globl _SPIRX
                                    113 	.globl _SPITX
                                    114 	.globl _SPIENA
                                    115 	.globl _SPICFG
                                    116 	.globl _SPIUNKNOWN
                                    117 	.globl _WDTCONF
                                    118 	.globl _WDTRSTVALH
                                    119 	.globl _WDTRSTVALM
                                    120 	.globl _WDTRSTVALL
                                    121 	.globl _WDTPET
                                    122 	.globl _WDTENA
                                    123 	.globl _RESET
                                    124 	.globl _CLKEN
                                    125 	.globl _CLKSPEED
                                    126 	.globl _IEN1
                                    127 	.globl _IEN0
                                    128 	.globl _XPAGE
                                    129 	.globl _P2PULL
                                    130 	.globl _P1PULL
                                    131 	.globl _P0PULL
                                    132 	.globl _P2DIR
                                    133 	.globl _P1DIR
                                    134 	.globl _P0DIR
                                    135 	.globl _P2FUNC
                                    136 	.globl _P1FUNC
                                    137 	.globl _P0FUNC
                                    138 	.globl _P2CHSTA
                                    139 	.globl _P1CHSTA
                                    140 	.globl _P0CHSTA
                                    141 	.globl _P2INTEN
                                    142 	.globl _P1INTEN
                                    143 	.globl _P0INTEN
                                    144 	.globl _P2LVLSEL
                                    145 	.globl _P1LVLSEL
                                    146 	.globl _P0LVLSEL
                                    147 	.globl _P2
                                    148 	.globl _P1
                                    149 	.globl _P0
                                    150 	.globl _PERFMON4
                                    151 	.globl _PCL
                                    152 	.globl _PCH
                                    153 	.globl _PERFMON1
                                    154 	.globl _PERFMON0
                                    155 	.globl _PCON
                                    156 	.globl _DPS
                                    157 	.globl _DPH1
                                    158 	.globl _DPL1
                                    159 	.globl _DPH
                                    160 	.globl _DPL
                                    161 	.globl _ACC
                                    162 	.globl _B
                                    163 	.globl _stay_awake_time
                                    164 	.globl _start_time
                                    165 	.globl _out_end_len
                                    166 	.globl _out_posi
                                    167 	.globl _endpoint
                                    168 	.globl _cmd_data_cmd
                                    169 	.globl _cmd_data_pos
                                    170 	.globl _cmd_crc_in
                                    171 	.globl _cmd_crc
                                    172 	.globl _cmd_pos
                                    173 	.globl _cmd_len
                                    174 	.globl _data_len
                                    175 	.globl _send_to_next_node_PARM_5
                                    176 	.globl _send_to_next_node_PARM_4
                                    177 	.globl _send_to_next_node_PARM_3
                                    178 	.globl _send_to_next_node_PARM_2
                                    179 	.globl _handle_cmd_PARM_3
                                    180 	.globl _handle_cmd_PARM_2
                                    181 	.globl _make_pixel_refresh_PARM_2
                                    182 	.globl _uart_cmd_out_buffer
                                    183 	.globl _display_loaded_buffer
                                    184 	.globl _uart_cmd_buffer
                                    185 	.globl _tx_free
                                    186 	.globl _make_pixel_refresh_PARM_3
                                    187 	.globl _out_enable
                                    188 	.globl _new_cmd
                                    189 	.globl _used_buffer
                                    190 	.globl _uartInit
                                    191 	.globl _uartTx
                                    192 	.globl _UART_IRQ1
                                    193 ;--------------------------------------------------------
                                    194 ; special function registers
                                    195 ;--------------------------------------------------------
                                    196 	.area RSEG    (ABS,DATA)
      000000                        197 	.org 0x0000
                           0000F0   198 _B	=	0x00f0
                           0000E0   199 _ACC	=	0x00e0
                           000082   200 _DPL	=	0x0082
                           000083   201 _DPH	=	0x0083
                           000084   202 _DPL1	=	0x0084
                           000085   203 _DPH1	=	0x0085
                           000092   204 _DPS	=	0x0092
                           000087   205 _PCON	=	0x0087
                           0000B2   206 _PERFMON0	=	0x00b2
                           0000B3   207 _PERFMON1	=	0x00b3
                           0000B4   208 _PCH	=	0x00b4
                           0000B5   209 _PCL	=	0x00b5
                           0000B6   210 _PERFMON4	=	0x00b6
                           000080   211 _P0	=	0x0080
                           000090   212 _P1	=	0x0090
                           0000A0   213 _P2	=	0x00a0
                           0000A3   214 _P0LVLSEL	=	0x00a3
                           0000A4   215 _P1LVLSEL	=	0x00a4
                           0000A5   216 _P2LVLSEL	=	0x00a5
                           0000A6   217 _P0INTEN	=	0x00a6
                           0000A7   218 _P1INTEN	=	0x00a7
                           0000A9   219 _P2INTEN	=	0x00a9
                           0000AA   220 _P0CHSTA	=	0x00aa
                           0000AB   221 _P1CHSTA	=	0x00ab
                           0000AC   222 _P2CHSTA	=	0x00ac
                           0000AD   223 _P0FUNC	=	0x00ad
                           0000AE   224 _P1FUNC	=	0x00ae
                           0000AF   225 _P2FUNC	=	0x00af
                           0000B9   226 _P0DIR	=	0x00b9
                           0000BA   227 _P1DIR	=	0x00ba
                           0000BB   228 _P2DIR	=	0x00bb
                           0000BC   229 _P0PULL	=	0x00bc
                           0000BD   230 _P1PULL	=	0x00bd
                           0000BE   231 _P2PULL	=	0x00be
                           0000A0   232 _XPAGE	=	0x00a0
                           0000A8   233 _IEN0	=	0x00a8
                           0000A1   234 _IEN1	=	0x00a1
                           00008E   235 _CLKSPEED	=	0x008e
                           0000B7   236 _CLKEN	=	0x00b7
                           00008F   237 _RESET	=	0x008f
                           0000BA   238 _WDTENA	=	0x00ba
                           0000BB   239 _WDTPET	=	0x00bb
                           0000BC   240 _WDTRSTVALL	=	0x00bc
                           0000BD   241 _WDTRSTVALM	=	0x00bd
                           0000BE   242 _WDTRSTVALH	=	0x00be
                           0000BF   243 _WDTCONF	=	0x00bf
                           0000EB   244 _SPIUNKNOWN	=	0x00eb
                           0000EC   245 _SPICFG	=	0x00ec
                           0000ED   246 _SPIENA	=	0x00ed
                           0000EE   247 _SPITX	=	0x00ee
                           0000EF   248 _SPIRX	=	0x00ef
                           000091   249 _I2CSTATE	=	0x0091
                           000094   250 _I2CBUF	=	0x0094
                           000095   251 _I2CCTL	=	0x0095
                           000096   252 _I2CSPEED	=	0x0096
                           0000A2   253 _I2CUNKNOWN	=	0x00a2
                           000098   254 _UARTSTA	=	0x0098
                           000099   255 _UARTBUF	=	0x0099
                           00009A   256 _UARTBRGL	=	0x009a
                           00009B   257 _UARTBRGH	=	0x009b
                           000088   258 _TCON	=	0x0088
                           000089   259 _TMOD	=	0x0089
                           00008A   260 _TL0	=	0x008a
                           00008B   261 _TL1	=	0x008b
                           00008C   262 _TH0	=	0x008c
                           00008D   263 _TH1	=	0x008d
                           008C8A   264 _T0	=	0x8c8a
                           008D8B   265 _T1	=	0x8d8b
                           0000D8   266 _FPGNO	=	0x00d8
                           0000D9   267 _FWRSRCL	=	0x00d9
                           0000DA   268 _FWRSRCH	=	0x00da
                           0000DB   269 _FWRDSTL	=	0x00db
                           0000DC   270 _FWRDSTH	=	0x00dc
                           0000DD   271 _FWRLENL	=	0x00dd
                           0000DE   272 _FWRLENH	=	0x00de
                           0000DF   273 _FWRTHREE	=	0x00df
                           0000E6   274 _TEMPCAL1	=	0x00e6
                           0000E7   275 _TEMPCAL2	=	0x00e7
                           0000F7   276 _TEMPCFG	=	0x00f7
                           0000F8   277 _TEMPRETH	=	0x00f8
                           0000F9   278 _TEMPRETL	=	0x00f9
                           0000FB   279 _TEMPCAL3	=	0x00fb
                           0000FC   280 _TEMPCAL4	=	0x00fc
                           0000FD   281 _TEMPCAL5	=	0x00fd
                           0000FE   282 _TEMPCAL6	=	0x00fe
                           0000C9   283 _RADIO_TXPTRL	=	0x00c9
                           0000CA   284 _RADIO_TXPTRH	=	0x00ca
                           0000CB   285 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   286 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   287 _RADIO_TXLEN	=	0x00cd
                           0000CE   288 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   289 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   290 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   291 _RADIO_RXPTRL	=	0x00d3
                           0000D4   292 _RADIO_RXPTRH	=	0x00d4
                           0000D5   293 _RADIO_RXLEN	=	0x00d5
                           0000D6   294 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   295 _RADIO_GOTLEN	=	0x00fa
                           0000C1   296 _UNK_C1	=	0x00c1
                           0000D7   297 _TRIGGER	=	0x00d7
                           0000C7   298 _SETTINGS	=	0x00c7
                           0000CF   299 _TCON2	=	0x00cf
                           0000FF   300 _CFGPAGE	=	0x00ff
                                    301 ;--------------------------------------------------------
                                    302 ; special function bits
                                    303 ;--------------------------------------------------------
                                    304 	.area RSEG    (ABS,DATA)
      000000                        305 	.org 0x0000
                           000080   306 _P0_0	=	0x0080
                           000081   307 _P0_1	=	0x0081
                           000082   308 _P0_2	=	0x0082
                           000083   309 _P0_3	=	0x0083
                           000084   310 _P0_4	=	0x0084
                           000085   311 _P0_5	=	0x0085
                           000086   312 _P0_6	=	0x0086
                           000087   313 _P0_7	=	0x0087
                           000090   314 _P1_0	=	0x0090
                           000091   315 _P1_1	=	0x0091
                           000092   316 _P1_2	=	0x0092
                           000093   317 _P1_3	=	0x0093
                           000094   318 _P1_4	=	0x0094
                           000095   319 _P1_5	=	0x0095
                           000096   320 _P1_6	=	0x0096
                           000097   321 _P1_7	=	0x0097
                           0000A0   322 _P2_0	=	0x00a0
                           0000A1   323 _P2_1	=	0x00a1
                           0000A2   324 _P2_2	=	0x00a2
                           0000A3   325 _P2_3	=	0x00a3
                           0000A4   326 _P2_4	=	0x00a4
                           0000A5   327 _P2_5	=	0x00a5
                           0000A6   328 _P2_6	=	0x00a6
                           0000A7   329 _P2_7	=	0x00a7
                           0000A8   330 _IEN_UART0	=	0x00a8
                           0000A9   331 _IEN_TMR0	=	0x00a9
                           0000AB   332 _IEN_TMR1	=	0x00ab
                           0000AC   333 _IEN_RF1	=	0x00ac
                           0000AD   334 _IEN_RF2	=	0x00ad
                           0000AF   335 _IEN_EA	=	0x00af
                           000098   336 _UART_RXF	=	0x0098
                           000099   337 _UART_TXE	=	0x0099
                                    338 ;--------------------------------------------------------
                                    339 ; overlayable register banks
                                    340 ;--------------------------------------------------------
                                    341 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        342 	.ds 8
                                    343 ;--------------------------------------------------------
                                    344 ; overlayable bit register bank
                                    345 ;--------------------------------------------------------
                                    346 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        347 bits:
      000022                        348 	.ds 1
                           008000   349 	b0 = bits[0]
                           008100   350 	b1 = bits[1]
                           008200   351 	b2 = bits[2]
                           008300   352 	b3 = bits[3]
                           008400   353 	b4 = bits[4]
                           008500   354 	b5 = bits[5]
                           008600   355 	b6 = bits[6]
                           008700   356 	b7 = bits[7]
                                    357 ;--------------------------------------------------------
                                    358 ; internal ram data
                                    359 ;--------------------------------------------------------
                                    360 	.area DSEG    (DATA)
      000008                        361 _send_to_next_node_sloc0_1_0:
      000008                        362 	.ds 2
      00000A                        363 _send_to_next_node_sloc1_1_0:
      00000A                        364 	.ds 2
      00000C                        365 _send_to_next_node_sloc2_1_0:
      00000C                        366 	.ds 3
      00000F                        367 _uart_cmd_sloc0_1_0:
      00000F                        368 	.ds 2
      000011                        369 _uart_cmd_sloc1_1_0:
      000011                        370 	.ds 2
      000013                        371 _main_sloc1_1_0:
      000013                        372 	.ds 1
      000014                        373 _main_sloc2_1_0:
      000014                        374 	.ds 1
      000015                        375 _main_sloc3_1_0:
      000015                        376 	.ds 1
      000016                        377 _main_sloc4_1_0:
      000016                        378 	.ds 2
                                    379 ;--------------------------------------------------------
                                    380 ; overlayable items in internal ram 
                                    381 ;--------------------------------------------------------
                                    382 ;--------------------------------------------------------
                                    383 ; Stack segment in internal ram 
                                    384 ;--------------------------------------------------------
                                    385 	.area	SSEG
      000027                        386 __start__stack:
      000027                        387 	.ds	1
                                    388 
                                    389 ;--------------------------------------------------------
                                    390 ; indirectly addressable internal ram data
                                    391 ;--------------------------------------------------------
                                    392 	.area ISEG    (DATA)
                           000000   393 _R0	=	0x0000
                           000001   394 _R1	=	0x0001
                           000002   395 _R2	=	0x0002
                           000003   396 _R3	=	0x0003
                           000004   397 _R4	=	0x0004
                           000005   398 _R5	=	0x0005
                           000006   399 _R6	=	0x0006
                           000007   400 _R7	=	0x0007
                                    401 ;--------------------------------------------------------
                                    402 ; absolute internal ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area IABS    (ABS,DATA)
                                    405 	.area IABS    (ABS,DATA)
                                    406 ;--------------------------------------------------------
                                    407 ; bit data
                                    408 ;--------------------------------------------------------
                                    409 	.area BSEG    (BIT)
      000000                        410 _used_buffer::
      000000                        411 	.ds 1
      000001                        412 _new_cmd::
      000001                        413 	.ds 1
      000002                        414 _out_enable::
      000002                        415 	.ds 1
      000003                        416 _make_pixel_refresh_PARM_3:
      000003                        417 	.ds 1
      000004                        418 _tx_free::
      000004                        419 	.ds 1
      000005                        420 _main_sloc0_1_0:
      000005                        421 	.ds 1
      000006                        422 _main_sloc5_1_0:
      000006                        423 	.ds 1
                                    424 ;--------------------------------------------------------
                                    425 ; paged external ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area PSEG    (PAG,XDATA)
                                    428 ;--------------------------------------------------------
                                    429 ; external ram data
                                    430 ;--------------------------------------------------------
                                    431 	.area XSEG    (XDATA)
                           00DF48   432 _RADIO_command	=	0xdf48
                           00DF70   433 _RADIO_calibration_70	=	0xdf70
                           00DF71   434 _RADIO_calibration_71	=	0xdf71
                           00DF80   435 _RADIO_FLAGS	=	0xdf80
                           00DF81   436 _RADIO_calibration_81	=	0xdf81
                           00DF83   437 _RADIO_unk_83	=	0xdf83
                           00DF84   438 _RADIO_currentRSSI	=	0xdf84
                           00DF86   439 _RADIO_calibration_86	=	0xdf86
                           00DF88   440 _RADIO_ownMac_7	=	0xdf88
                           00DF89   441 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   442 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   443 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   444 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   445 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   446 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   447 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   448 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   449 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   450 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   451 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   452 _RADIO_calibration_94	=	0xdf94
                           00DF95   453 _RADIO_calibration_95	=	0xdf95
                           00DF96   454 _RADIO_calibration_96	=	0xdf96
                           00DF98   455 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   456 _RADIO_curRfState	=	0xdf9b
                           00DF9D   457 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   458 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   459 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   460 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   461 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   462 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   463 _RADIO_channel	=	0xdfc0
                           00DFC1   464 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   465 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   466 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   467 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   468 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   469 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   470 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   471 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   472 _RADIO_txPower	=	0xdfc9
                           00DFCA   473 _RADIO_unk_CA	=	0xdfca
                           00DFCB   474 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   475 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   476 _RADIO_unk_CE	=	0xdfce
                           00DFCF   477 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   478 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   479 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   480 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   481 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   482 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   483 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   484 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   485 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   486 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   487 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   488 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   489 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   490 _RADIO_unk_F0	=	0xdff0
                           00DFF3   491 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   492 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFD   493 _RADIO_perChannelSetting1	=	0xdffd
      00E000                        494 _uart_cmd_buffer::
      00E000                        495 	.ds 526
      00E20E                        496 _display_loaded_buffer::
      00E20E                        497 	.ds 200
      00E2D6                        498 _uart_cmd_out_buffer::
      00E2D6                        499 	.ds 263
      00E3DD                        500 _make_pixel_refresh_PARM_2:
      00E3DD                        501 	.ds 3
      00E3E0                        502 _make_pixel_refresh_our_id_65536_58:
      00E3E0                        503 	.ds 2
      00E3E2                        504 _handle_cmd_PARM_2:
      00E3E2                        505 	.ds 1
      00E3E3                        506 _handle_cmd_PARM_3:
      00E3E3                        507 	.ds 3
      00E3E6                        508 _handle_cmd_cmd_65536_64:
      00E3E6                        509 	.ds 1
      00E3E7                        510 _send_to_next_node_PARM_2:
      00E3E7                        511 	.ds 2
      00E3E9                        512 _send_to_next_node_PARM_3:
      00E3E9                        513 	.ds 1
      00E3EA                        514 _send_to_next_node_PARM_4:
      00E3EA                        515 	.ds 1
      00E3EB                        516 _send_to_next_node_PARM_5:
      00E3EB                        517 	.ds 3
      00E3EE                        518 _send_to_next_node_cmd_65536_69:
      00E3EE                        519 	.ds 1
      00E3EF                        520 _send_to_next_node_out_crc_65536_70:
      00E3EF                        521 	.ds 2
      00E3F1                        522 _uartTx_val_65536_75:
      00E3F1                        523 	.ds 1
      00E3F2                        524 _uart_cmd_rx_cur_65536_77:
      00E3F2                        525 	.ds 1
                                    526 ;--------------------------------------------------------
                                    527 ; absolute external ram data
                                    528 ;--------------------------------------------------------
                                    529 	.area XABS    (ABS,XDATA)
                                    530 ;--------------------------------------------------------
                                    531 ; external initialized ram data
                                    532 ;--------------------------------------------------------
                                    533 	.area XISEG   (XDATA)
      00E440                        534 _data_len::
      00E440                        535 	.ds 4
      00E444                        536 _cmd_len::
      00E444                        537 	.ds 4
      00E448                        538 _cmd_pos::
      00E448                        539 	.ds 2
      00E44A                        540 _cmd_crc::
      00E44A                        541 	.ds 4
      00E44E                        542 _cmd_crc_in::
      00E44E                        543 	.ds 4
      00E452                        544 _cmd_data_pos::
      00E452                        545 	.ds 4
      00E456                        546 _cmd_data_cmd::
      00E456                        547 	.ds 4
      00E45A                        548 _endpoint::
      00E45A                        549 	.ds 4
      00E45E                        550 _out_posi::
      00E45E                        551 	.ds 2
      00E460                        552 _out_end_len::
      00E460                        553 	.ds 2
      00E462                        554 _start_time::
      00E462                        555 	.ds 4
      00E466                        556 _stay_awake_time::
      00E466                        557 	.ds 4
                                    558 	.area HOME    (CODE)
                                    559 	.area GSINIT0 (CODE)
                                    560 	.area GSINIT1 (CODE)
                                    561 	.area GSINIT2 (CODE)
                                    562 	.area GSINIT3 (CODE)
                                    563 	.area GSINIT4 (CODE)
                                    564 	.area GSINIT5 (CODE)
                                    565 	.area GSINIT  (CODE)
                                    566 	.area GSFINAL (CODE)
                                    567 	.area CSEG    (CODE)
                                    568 ;--------------------------------------------------------
                                    569 ; interrupt vector 
                                    570 ;--------------------------------------------------------
                                    571 	.area HOME    (CODE)
      000000                        572 __interrupt_vect:
      000000 02 00 11         [24]  573 	ljmp	__sdcc_gsinit_startup
      000003 02 07 F2         [24]  574 	ljmp	_UART_IRQ1
      000006                        575 	.ds	5
      00000B 02 0E 3F         [24]  576 	ljmp	_T0_ISR
                                    577 ;--------------------------------------------------------
                                    578 ; global & static initialisations
                                    579 ;--------------------------------------------------------
                                    580 	.area HOME    (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 	.area GSFINAL (CODE)
                                    583 	.area GSINIT  (CODE)
                                    584 	.globl __sdcc_gsinit_startup
                                    585 	.globl __sdcc_program_startup
                                    586 	.globl __start__stack
                                    587 	.globl __mcs51_genXINIT
                                    588 	.globl __mcs51_genXRAMCLEAR
                                    589 	.globl __mcs51_genRAMCLEAR
                                    590 ;	main.c:30: __bit used_buffer = 0;
                                    591 ;	assignBit
      00006A C2 00            [12]  592 	clr	_used_buffer
                                    593 ;	main.c:31: __bit new_cmd = 0;
                                    594 ;	assignBit
      00006C C2 01            [12]  595 	clr	_new_cmd
                                    596 ;	main.c:33: __bit out_enable = 0;
                                    597 ;	assignBit
      00006E C2 02            [12]  598 	clr	_out_enable
                                    599 ;	main.c:117: __bit tx_free = 0;
                                    600 ;	assignBit
      000070 C2 04            [12]  601 	clr	_tx_free
                                    602 	.area GSFINAL (CODE)
      000074 02 00 0E         [24]  603 	ljmp	__sdcc_program_startup
                                    604 ;--------------------------------------------------------
                                    605 ; Home
                                    606 ;--------------------------------------------------------
                                    607 	.area HOME    (CODE)
                                    608 	.area HOME    (CODE)
      00000E                        609 __sdcc_program_startup:
      00000E 02 08 80         [24]  610 	ljmp	_main
                                    611 ;	return from main will return to caller
                                    612 ;--------------------------------------------------------
                                    613 ; code
                                    614 ;--------------------------------------------------------
                                    615 	.area CSEG    (CODE)
                                    616 ;------------------------------------------------------------
                                    617 ;Allocation info for local variables in function 'sleep'
                                    618 ;------------------------------------------------------------
                                    619 ;	main.c:54: void sleep()
                                    620 ;	-----------------------------------------
                                    621 ;	 function sleep
                                    622 ;	-----------------------------------------
      000077                        623 _sleep:
                           000007   624 	ar7 = 0x07
                           000006   625 	ar6 = 0x06
                           000005   626 	ar5 = 0x05
                           000004   627 	ar4 = 0x04
                           000003   628 	ar3 = 0x03
                           000002   629 	ar2 = 0x02
                           000001   630 	ar1 = 0x01
                           000000   631 	ar0 = 0x00
                                    632 ;	main.c:56: powerPortsDownForSleep();
      000077 12 12 74         [24]  633 	lcall	_powerPortsDownForSleep
                                    634 ;	main.c:57: sleepForMsec(0);
      00007A 90 00 00         [24]  635 	mov	dptr,#(0x00&0x00ff)
      00007D E4               [12]  636 	clr	a
      00007E F5 F0            [12]  637 	mov	b,a
      000080 12 0C 63         [24]  638 	lcall	_sleepForMsec
                                    639 ;	main.c:58: wdtDeviceReset();
                                    640 ;	main.c:59: }
      000083 02 0F 5D         [24]  641 	ljmp	_wdtDeviceReset
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'make_pixel_refresh'
                                    644 ;------------------------------------------------------------
                                    645 ;the_data                  Allocated with name '_make_pixel_refresh_PARM_2'
                                    646 ;our_id                    Allocated with name '_make_pixel_refresh_our_id_65536_58'
                                    647 ;our_byte                  Allocated with name '_make_pixel_refresh_our_byte_65536_59'
                                    648 ;used_bit                  Allocated with name '_make_pixel_refresh_used_bit_65536_59'
                                    649 ;our_bit                   Allocated with name '_make_pixel_refresh_our_bit_65536_59'
                                    650 ;i                         Allocated with name '_make_pixel_refresh_i_196608_62'
                                    651 ;------------------------------------------------------------
                                    652 ;	main.c:61: void make_pixel_refresh(uint16_t our_id, uint8_t *the_data, __bit custom_lut)
                                    653 ;	-----------------------------------------
                                    654 ;	 function make_pixel_refresh
                                    655 ;	-----------------------------------------
      000086                        656 _make_pixel_refresh:
      000086 AF 83            [24]  657 	mov	r7,dph
      000088 E5 82            [12]  658 	mov	a,dpl
      00008A 90 E3 E0         [24]  659 	mov	dptr,#_make_pixel_refresh_our_id_65536_58
      00008D F0               [24]  660 	movx	@dptr,a
      00008E EF               [12]  661 	mov	a,r7
      00008F A3               [24]  662 	inc	dptr
      000090 F0               [24]  663 	movx	@dptr,a
                                    664 ;	main.c:64: uint16_t our_byte = our_id / 8;
      000091 90 E3 E0         [24]  665 	mov	dptr,#_make_pixel_refresh_our_id_65536_58
      000094 E0               [24]  666 	movx	a,@dptr
      000095 FE               [12]  667 	mov	r6,a
      000096 A3               [24]  668 	inc	dptr
      000097 E0               [24]  669 	movx	a,@dptr
      000098 8E 04            [24]  670 	mov	ar4,r6
      00009A C4               [12]  671 	swap	a
      00009B 23               [12]  672 	rl	a
      00009C CC               [12]  673 	xch	a,r4
      00009D C4               [12]  674 	swap	a
      00009E 23               [12]  675 	rl	a
      00009F 54 1F            [12]  676 	anl	a,#0x1f
      0000A1 6C               [12]  677 	xrl	a,r4
      0000A2 CC               [12]  678 	xch	a,r4
      0000A3 54 1F            [12]  679 	anl	a,#0x1f
      0000A5 CC               [12]  680 	xch	a,r4
      0000A6 6C               [12]  681 	xrl	a,r4
      0000A7 CC               [12]  682 	xch	a,r4
      0000A8 FD               [12]  683 	mov	r5,a
                                    684 ;	main.c:66: uint8_t used_bit = our_id % 8;
      0000A9 53 06 07         [24]  685 	anl	ar6,#0x07
                                    686 ;	main.c:68: uint8_t our_bit = (the_data[our_byte] >> used_bit) & 1;
      0000AC 90 E3 DD         [24]  687 	mov	dptr,#_make_pixel_refresh_PARM_2
      0000AF E0               [24]  688 	movx	a,@dptr
      0000B0 FA               [12]  689 	mov	r2,a
      0000B1 A3               [24]  690 	inc	dptr
      0000B2 E0               [24]  691 	movx	a,@dptr
      0000B3 FB               [12]  692 	mov	r3,a
      0000B4 A3               [24]  693 	inc	dptr
      0000B5 E0               [24]  694 	movx	a,@dptr
      0000B6 FF               [12]  695 	mov	r7,a
      0000B7 EC               [12]  696 	mov	a,r4
      0000B8 2A               [12]  697 	add	a,r2
      0000B9 FA               [12]  698 	mov	r2,a
      0000BA ED               [12]  699 	mov	a,r5
      0000BB 3B               [12]  700 	addc	a,r3
      0000BC FB               [12]  701 	mov	r3,a
      0000BD 8A 82            [24]  702 	mov	dpl,r2
      0000BF 8B 83            [24]  703 	mov	dph,r3
      0000C1 8F F0            [24]  704 	mov	b,r7
      0000C3 12 18 BF         [24]  705 	lcall	__gptrget
      0000C6 FA               [12]  706 	mov	r2,a
      0000C7 8E F0            [24]  707 	mov	b,r6
      0000C9 05 F0            [12]  708 	inc	b
      0000CB EA               [12]  709 	mov	a,r2
      0000CC 80 02            [24]  710 	sjmp	00124$
      0000CE                        711 00123$:
      0000CE C3               [12]  712 	clr	c
      0000CF 13               [12]  713 	rrc	a
      0000D0                        714 00124$:
      0000D0 D5 F0 FB         [24]  715 	djnz	b,00123$
      0000D3 54 01            [12]  716 	anl	a,#0x01
      0000D5 FF               [12]  717 	mov	r7,a
                                    718 ;	main.c:70: if (custom_lut)
      0000D6 30 03 29         [24]  719 	jnb	_make_pixel_refresh_PARM_3,00112$
                                    720 ;	main.c:72: flashRead(FLASH_ADDR_CUSTOM_LUT, &display_loaded_buffer[0], 30);
      0000D9 90 E4 11         [24]  721 	mov	dptr,#_flashRead_PARM_2
      0000DC 74 0E            [12]  722 	mov	a,#_display_loaded_buffer
      0000DE F0               [24]  723 	movx	@dptr,a
      0000DF 74 E2            [12]  724 	mov	a,#(_display_loaded_buffer >> 8)
      0000E1 A3               [24]  725 	inc	dptr
      0000E2 F0               [24]  726 	movx	@dptr,a
      0000E3 90 E4 13         [24]  727 	mov	dptr,#_flashRead_PARM_3
      0000E6 74 1E            [12]  728 	mov	a,#0x1e
      0000E8 F0               [24]  729 	movx	@dptr,a
      0000E9 E4               [12]  730 	clr	a
      0000EA A3               [24]  731 	inc	dptr
      0000EB F0               [24]  732 	movx	@dptr,a
      0000EC 90 F0 00         [24]  733 	mov	dptr,#0xf000
      0000EF E4               [12]  734 	clr	a
      0000F0 F5 F0            [12]  735 	mov	b,a
      0000F2 12 10 F9         [24]  736 	lcall	_flashRead
                                    737 ;	main.c:73: screenDraw(&display_loaded_buffer[0], our_bit, 1);
                                    738 ;	assignBit
      0000F5 EF               [12]  739 	mov	a,r7
      0000F6 24 FF            [12]  740 	add	a,#0xff
      0000F8 92 0D            [24]  741 	mov	_screenDraw_PARM_2,c
                                    742 ;	assignBit
      0000FA D2 0E            [12]  743 	setb	_screenDraw_PARM_3
      0000FC 90 E2 0E         [24]  744 	mov	dptr,#_display_loaded_buffer
                                    745 ;	main.c:77: for (uint8_t i = 0; i < 14; i++)
      0000FF 02 13 BE         [24]  746 	ljmp	_screenDraw
      000102                        747 00112$:
      000102 7E 00            [12]  748 	mov	r6,#0x00
      000104                        749 00106$:
      000104 BE 0E 00         [24]  750 	cjne	r6,#0x0e,00126$
      000107                        751 00126$:
      000107 50 0F            [24]  752 	jnc	00101$
                                    753 ;	main.c:79: display_loaded_buffer[i] = 0x00;
      000109 EE               [12]  754 	mov	a,r6
      00010A 24 0E            [12]  755 	add	a,#_display_loaded_buffer
      00010C F5 82            [12]  756 	mov	dpl,a
      00010E E4               [12]  757 	clr	a
      00010F 34 E2            [12]  758 	addc	a,#(_display_loaded_buffer >> 8)
      000111 F5 83            [12]  759 	mov	dph,a
      000113 E4               [12]  760 	clr	a
      000114 F0               [24]  761 	movx	@dptr,a
                                    762 ;	main.c:77: for (uint8_t i = 0; i < 14; i++)
      000115 0E               [12]  763 	inc	r6
      000116 80 EC            [24]  764 	sjmp	00106$
      000118                        765 00101$:
                                    766 ;	main.c:81: screenDraw(&display_loaded_buffer[0], our_bit, 0);
                                    767 ;	assignBit
      000118 EF               [12]  768 	mov	a,r7
      000119 24 FF            [12]  769 	add	a,#0xff
      00011B 92 0D            [24]  770 	mov	_screenDraw_PARM_2,c
                                    771 ;	assignBit
      00011D C2 0E            [12]  772 	clr	_screenDraw_PARM_3
      00011F 90 E2 0E         [24]  773 	mov	dptr,#_display_loaded_buffer
                                    774 ;	main.c:83: }
      000122 02 13 BE         [24]  775 	ljmp	_screenDraw
                                    776 ;------------------------------------------------------------
                                    777 ;Allocation info for local variables in function 'handle_cmd'
                                    778 ;------------------------------------------------------------
                                    779 ;data_len                  Allocated with name '_handle_cmd_PARM_2'
                                    780 ;the_data                  Allocated with name '_handle_cmd_PARM_3'
                                    781 ;cmd                       Allocated with name '_handle_cmd_cmd_65536_64'
                                    782 ;------------------------------------------------------------
                                    783 ;	main.c:85: void handle_cmd(uint8_t cmd, uint8_t data_len, uint8_t *the_data)
                                    784 ;	-----------------------------------------
                                    785 ;	 function handle_cmd
                                    786 ;	-----------------------------------------
      000125                        787 _handle_cmd:
      000125 E5 82            [12]  788 	mov	a,dpl
      000127 90 E3 E6         [24]  789 	mov	dptr,#_handle_cmd_cmd_65536_64
      00012A F0               [24]  790 	movx	@dptr,a
                                    791 ;	main.c:87: switch (cmd)
      00012B E0               [24]  792 	movx	a,@dptr
      00012C FF               [12]  793 	mov	r7,a
      00012D BF 41 02         [24]  794 	cjne	r7,#0x41,00144$
      000130 80 2A            [24]  795 	sjmp	00101$
      000132                        796 00144$:
      000132 BF 42 02         [24]  797 	cjne	r7,#0x42,00145$
      000135 80 53            [24]  798 	sjmp	00102$
      000137                        799 00145$:
      000137 BF 43 03         [24]  800 	cjne	r7,#0x43,00146$
      00013A 02 01 B6         [24]  801 	ljmp	00103$
      00013D                        802 00146$:
      00013D BF 45 03         [24]  803 	cjne	r7,#0x45,00147$
      000140 02 01 E4         [24]  804 	ljmp	00104$
      000143                        805 00147$:
      000143 BF 46 03         [24]  806 	cjne	r7,#0x46,00148$
      000146 02 01 FC         [24]  807 	ljmp	00105$
      000149                        808 00148$:
      000149 BF 47 03         [24]  809 	cjne	r7,#0x47,00149$
      00014C 02 02 22         [24]  810 	ljmp	00106$
      00014F                        811 00149$:
      00014F BF 48 03         [24]  812 	cjne	r7,#0x48,00150$
      000152 02 02 40         [24]  813 	ljmp	00107$
      000155                        814 00150$:
      000155 BF AB 03         [24]  815 	cjne	r7,#0xab,00151$
      000158 02 02 5E         [24]  816 	ljmp	00108$
      00015B                        817 00151$:
      00015B 22               [24]  818 	ret
                                    819 ;	main.c:89: case CMD_TYPE_REFRESH_SEG:
      00015C                        820 00101$:
                                    821 ;	main.c:90: screenDraw(&the_data[1], the_data[0] & 1, 0);
      00015C 90 E3 E3         [24]  822 	mov	dptr,#_handle_cmd_PARM_3
      00015F E0               [24]  823 	movx	a,@dptr
      000160 FD               [12]  824 	mov	r5,a
      000161 A3               [24]  825 	inc	dptr
      000162 E0               [24]  826 	movx	a,@dptr
      000163 FE               [12]  827 	mov	r6,a
      000164 A3               [24]  828 	inc	dptr
      000165 E0               [24]  829 	movx	a,@dptr
      000166 FF               [12]  830 	mov	r7,a
      000167 74 01            [12]  831 	mov	a,#0x01
      000169 2D               [12]  832 	add	a,r5
      00016A FA               [12]  833 	mov	r2,a
      00016B E4               [12]  834 	clr	a
      00016C 3E               [12]  835 	addc	a,r6
      00016D FB               [12]  836 	mov	r3,a
      00016E 8F 04            [24]  837 	mov	ar4,r7
      000170 8D 82            [24]  838 	mov	dpl,r5
      000172 8E 83            [24]  839 	mov	dph,r6
      000174 8F F0            [24]  840 	mov	b,r7
      000176 12 18 BF         [24]  841 	lcall	__gptrget
      000179 54 01            [12]  842 	anl	a,#0x01
                                    843 ;	assignBit
      00017B 24 FF            [12]  844 	add	a,#0xff
      00017D 92 0D            [24]  845 	mov	_screenDraw_PARM_2,c
                                    846 ;	assignBit
      00017F C2 0E            [12]  847 	clr	_screenDraw_PARM_3
      000181 8A 82            [24]  848 	mov	dpl,r2
      000183 8B 83            [24]  849 	mov	dph,r3
      000185 8C F0            [24]  850 	mov	b,r4
                                    851 ;	main.c:91: break;
      000187 02 13 BE         [24]  852 	ljmp	_screenDraw
                                    853 ;	main.c:92: case CMD_TYPE_REFRESH_SEG_LOAD:
      00018A                        854 00102$:
                                    855 ;	main.c:93: flashWrite(FLASH_ADDR_CUSTOM_LUT, &the_data[0], data_len, 1);
      00018A 90 E3 E3         [24]  856 	mov	dptr,#_handle_cmd_PARM_3
      00018D E0               [24]  857 	movx	a,@dptr
      00018E FD               [12]  858 	mov	r5,a
      00018F A3               [24]  859 	inc	dptr
      000190 E0               [24]  860 	movx	a,@dptr
      000191 FE               [12]  861 	mov	r6,a
      000192 A3               [24]  862 	inc	dptr
      000193 E0               [24]  863 	movx	a,@dptr
      000194 90 E3 E2         [24]  864 	mov	dptr,#_handle_cmd_PARM_2
      000197 E0               [24]  865 	movx	a,@dptr
      000198 FF               [12]  866 	mov	r7,a
      000199 7C 00            [12]  867 	mov	r4,#0x00
      00019B 90 E4 07         [24]  868 	mov	dptr,#_flashWrite_PARM_2
      00019E ED               [12]  869 	mov	a,r5
      00019F F0               [24]  870 	movx	@dptr,a
      0001A0 EE               [12]  871 	mov	a,r6
      0001A1 A3               [24]  872 	inc	dptr
      0001A2 F0               [24]  873 	movx	@dptr,a
      0001A3 90 E4 09         [24]  874 	mov	dptr,#_flashWrite_PARM_3
      0001A6 EF               [12]  875 	mov	a,r7
      0001A7 F0               [24]  876 	movx	@dptr,a
      0001A8 EC               [12]  877 	mov	a,r4
      0001A9 A3               [24]  878 	inc	dptr
      0001AA F0               [24]  879 	movx	@dptr,a
                                    880 ;	assignBit
      0001AB D2 08            [12]  881 	setb	_flashWrite_PARM_4
      0001AD 90 F0 00         [24]  882 	mov	dptr,#0xf000
      0001B0 E4               [12]  883 	clr	a
      0001B1 F5 F0            [12]  884 	mov	b,a
                                    885 ;	main.c:94: break;
      0001B3 02 10 26         [24]  886 	ljmp	_flashWrite
                                    887 ;	main.c:95: case CMD_TYPE_REFRESH_SEG_LOADED:
      0001B6                        888 00103$:
                                    889 ;	main.c:96: screenDraw(&the_data[1], the_data[0] & 1, 0);
      0001B6 90 E3 E3         [24]  890 	mov	dptr,#_handle_cmd_PARM_3
      0001B9 E0               [24]  891 	movx	a,@dptr
      0001BA FD               [12]  892 	mov	r5,a
      0001BB A3               [24]  893 	inc	dptr
      0001BC E0               [24]  894 	movx	a,@dptr
      0001BD FE               [12]  895 	mov	r6,a
      0001BE A3               [24]  896 	inc	dptr
      0001BF E0               [24]  897 	movx	a,@dptr
      0001C0 FF               [12]  898 	mov	r7,a
      0001C1 74 01            [12]  899 	mov	a,#0x01
      0001C3 2D               [12]  900 	add	a,r5
      0001C4 FA               [12]  901 	mov	r2,a
      0001C5 E4               [12]  902 	clr	a
      0001C6 3E               [12]  903 	addc	a,r6
      0001C7 FB               [12]  904 	mov	r3,a
      0001C8 8F 04            [24]  905 	mov	ar4,r7
      0001CA 8D 82            [24]  906 	mov	dpl,r5
      0001CC 8E 83            [24]  907 	mov	dph,r6
      0001CE 8F F0            [24]  908 	mov	b,r7
      0001D0 12 18 BF         [24]  909 	lcall	__gptrget
      0001D3 54 01            [12]  910 	anl	a,#0x01
                                    911 ;	assignBit
      0001D5 24 FF            [12]  912 	add	a,#0xff
      0001D7 92 0D            [24]  913 	mov	_screenDraw_PARM_2,c
                                    914 ;	assignBit
      0001D9 C2 0E            [12]  915 	clr	_screenDraw_PARM_3
      0001DB 8A 82            [24]  916 	mov	dpl,r2
      0001DD 8B 83            [24]  917 	mov	dph,r3
      0001DF 8C F0            [24]  918 	mov	b,r4
                                    919 ;	main.c:97: break;
      0001E1 02 13 BE         [24]  920 	ljmp	_screenDraw
                                    921 ;	main.c:98: case CMD_TYPE_REFRESH_SEG_CUSTOM_LUT:
      0001E4                        922 00104$:
                                    923 ;	main.c:99: screenDraw(&the_data[0], 0, 1);
      0001E4 90 E3 E3         [24]  924 	mov	dptr,#_handle_cmd_PARM_3
      0001E7 E0               [24]  925 	movx	a,@dptr
      0001E8 FD               [12]  926 	mov	r5,a
      0001E9 A3               [24]  927 	inc	dptr
      0001EA E0               [24]  928 	movx	a,@dptr
      0001EB FE               [12]  929 	mov	r6,a
      0001EC A3               [24]  930 	inc	dptr
      0001ED E0               [24]  931 	movx	a,@dptr
      0001EE FF               [12]  932 	mov	r7,a
                                    933 ;	assignBit
      0001EF C2 0D            [12]  934 	clr	_screenDraw_PARM_2
                                    935 ;	assignBit
      0001F1 D2 0E            [12]  936 	setb	_screenDraw_PARM_3
      0001F3 8D 82            [24]  937 	mov	dpl,r5
      0001F5 8E 83            [24]  938 	mov	dph,r6
      0001F7 8F F0            [24]  939 	mov	b,r7
                                    940 ;	main.c:100: break;
      0001F9 02 13 BE         [24]  941 	ljmp	_screenDraw
                                    942 ;	main.c:101: case CMD_TYPE_REFRESH_SEG_LOADED_CUSTOM_LUT:
      0001FC                        943 00105$:
                                    944 ;	main.c:102: flashRead(FLASH_ADDR_CUSTOM_LUT, &display_loaded_buffer[0], 30);
      0001FC 90 E4 11         [24]  945 	mov	dptr,#_flashRead_PARM_2
      0001FF 74 0E            [12]  946 	mov	a,#_display_loaded_buffer
      000201 F0               [24]  947 	movx	@dptr,a
      000202 74 E2            [12]  948 	mov	a,#(_display_loaded_buffer >> 8)
      000204 A3               [24]  949 	inc	dptr
      000205 F0               [24]  950 	movx	@dptr,a
      000206 90 E4 13         [24]  951 	mov	dptr,#_flashRead_PARM_3
      000209 74 1E            [12]  952 	mov	a,#0x1e
      00020B F0               [24]  953 	movx	@dptr,a
      00020C E4               [12]  954 	clr	a
      00020D A3               [24]  955 	inc	dptr
      00020E F0               [24]  956 	movx	@dptr,a
      00020F 90 F0 00         [24]  957 	mov	dptr,#0xf000
      000212 E4               [12]  958 	clr	a
      000213 F5 F0            [12]  959 	mov	b,a
      000215 12 10 F9         [24]  960 	lcall	_flashRead
                                    961 ;	main.c:103: screenDraw(&display_loaded_buffer[0], 0, 1);
                                    962 ;	assignBit
      000218 C2 0D            [12]  963 	clr	_screenDraw_PARM_2
                                    964 ;	assignBit
      00021A D2 0E            [12]  965 	setb	_screenDraw_PARM_3
      00021C 90 E2 0E         [24]  966 	mov	dptr,#_display_loaded_buffer
                                    967 ;	main.c:104: break;
      00021F 02 13 BE         [24]  968 	ljmp	_screenDraw
                                    969 ;	main.c:105: case CMD_TYPE_REFRESH_PIXEL:
      000222                        970 00106$:
                                    971 ;	main.c:106: make_pixel_refresh(0, &the_data[0], 0);
      000222 90 E3 E3         [24]  972 	mov	dptr,#_handle_cmd_PARM_3
      000225 E0               [24]  973 	movx	a,@dptr
      000226 FD               [12]  974 	mov	r5,a
      000227 A3               [24]  975 	inc	dptr
      000228 E0               [24]  976 	movx	a,@dptr
      000229 FE               [12]  977 	mov	r6,a
      00022A A3               [24]  978 	inc	dptr
      00022B E0               [24]  979 	movx	a,@dptr
      00022C FF               [12]  980 	mov	r7,a
      00022D 90 E3 DD         [24]  981 	mov	dptr,#_make_pixel_refresh_PARM_2
      000230 ED               [12]  982 	mov	a,r5
      000231 F0               [24]  983 	movx	@dptr,a
      000232 EE               [12]  984 	mov	a,r6
      000233 A3               [24]  985 	inc	dptr
      000234 F0               [24]  986 	movx	@dptr,a
      000235 EF               [12]  987 	mov	a,r7
      000236 A3               [24]  988 	inc	dptr
      000237 F0               [24]  989 	movx	@dptr,a
                                    990 ;	assignBit
      000238 C2 03            [12]  991 	clr	_make_pixel_refresh_PARM_3
      00023A 90 00 00         [24]  992 	mov	dptr,#0x0000
                                    993 ;	main.c:107: break;
                                    994 ;	main.c:108: case CMD_TYPE_REFRESH_PIXEL_CUSTOM_LUT:
      00023D 02 00 86         [24]  995 	ljmp	_make_pixel_refresh
      000240                        996 00107$:
                                    997 ;	main.c:109: make_pixel_refresh(0, &the_data[0], 1);
      000240 90 E3 E3         [24]  998 	mov	dptr,#_handle_cmd_PARM_3
      000243 E0               [24]  999 	movx	a,@dptr
      000244 FD               [12] 1000 	mov	r5,a
      000245 A3               [24] 1001 	inc	dptr
      000246 E0               [24] 1002 	movx	a,@dptr
      000247 FE               [12] 1003 	mov	r6,a
      000248 A3               [24] 1004 	inc	dptr
      000249 E0               [24] 1005 	movx	a,@dptr
      00024A FF               [12] 1006 	mov	r7,a
      00024B 90 E3 DD         [24] 1007 	mov	dptr,#_make_pixel_refresh_PARM_2
      00024E ED               [12] 1008 	mov	a,r5
      00024F F0               [24] 1009 	movx	@dptr,a
      000250 EE               [12] 1010 	mov	a,r6
      000251 A3               [24] 1011 	inc	dptr
      000252 F0               [24] 1012 	movx	@dptr,a
      000253 EF               [12] 1013 	mov	a,r7
      000254 A3               [24] 1014 	inc	dptr
      000255 F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	assignBit
      000256 D2 03            [12] 1017 	setb	_make_pixel_refresh_PARM_3
      000258 90 00 00         [24] 1018 	mov	dptr,#0x0000
                                   1019 ;	main.c:110: break;
                                   1020 ;	main.c:111: case CMD_TYPE_STAY_AWAKE:
      00025B 02 00 86         [24] 1021 	ljmp	_make_pixel_refresh
      00025E                       1022 00108$:
                                   1023 ;	main.c:112: stay_awake_time = (TIMER_TICKS_PER_SECOND / 10) * the_data[0];
      00025E 90 E3 E3         [24] 1024 	mov	dptr,#_handle_cmd_PARM_3
      000261 E0               [24] 1025 	movx	a,@dptr
      000262 FD               [12] 1026 	mov	r5,a
      000263 A3               [24] 1027 	inc	dptr
      000264 E0               [24] 1028 	movx	a,@dptr
      000265 FE               [12] 1029 	mov	r6,a
      000266 A3               [24] 1030 	inc	dptr
      000267 E0               [24] 1031 	movx	a,@dptr
      000268 FF               [12] 1032 	mov	r7,a
      000269 8D 82            [24] 1033 	mov	dpl,r5
      00026B 8E 83            [24] 1034 	mov	dph,r6
      00026D 8F F0            [24] 1035 	mov	b,r7
      00026F 12 18 BF         [24] 1036 	lcall	__gptrget
      000272 90 E4 3C         [24] 1037 	mov	dptr,#__mullong_PARM_2
      000275 F0               [24] 1038 	movx	@dptr,a
      000276 E4               [12] 1039 	clr	a
      000277 A3               [24] 1040 	inc	dptr
      000278 F0               [24] 1041 	movx	@dptr,a
      000279 A3               [24] 1042 	inc	dptr
      00027A F0               [24] 1043 	movx	@dptr,a
      00027B A3               [24] 1044 	inc	dptr
      00027C F0               [24] 1045 	movx	@dptr,a
      00027D 90 08 D5         [24] 1046 	mov	dptr,#0x08d5
      000280 75 F0 02         [24] 1047 	mov	b,#0x02
      000283 E4               [12] 1048 	clr	a
      000284 12 18 53         [24] 1049 	lcall	__mullong
      000287 AC 82            [24] 1050 	mov	r4,dpl
      000289 AD 83            [24] 1051 	mov	r5,dph
      00028B AE F0            [24] 1052 	mov	r6,b
      00028D FF               [12] 1053 	mov	r7,a
      00028E 90 E4 66         [24] 1054 	mov	dptr,#_stay_awake_time
      000291 EC               [12] 1055 	mov	a,r4
      000292 F0               [24] 1056 	movx	@dptr,a
      000293 ED               [12] 1057 	mov	a,r5
      000294 A3               [24] 1058 	inc	dptr
      000295 F0               [24] 1059 	movx	@dptr,a
      000296 EE               [12] 1060 	mov	a,r6
      000297 A3               [24] 1061 	inc	dptr
      000298 F0               [24] 1062 	movx	@dptr,a
      000299 EF               [12] 1063 	mov	a,r7
      00029A A3               [24] 1064 	inc	dptr
      00029B F0               [24] 1065 	movx	@dptr,a
                                   1066 ;	main.c:114: }
                                   1067 ;	main.c:115: }
      00029C 22               [24] 1068 	ret
                                   1069 ;------------------------------------------------------------
                                   1070 ;Allocation info for local variables in function 'uartInit'
                                   1071 ;------------------------------------------------------------
                                   1072 ;	main.c:119: void uartInit(void)
                                   1073 ;	-----------------------------------------
                                   1074 ;	 function uartInit
                                   1075 ;	-----------------------------------------
      00029D                       1076 _uartInit:
                                   1077 ;	main.c:122: CLKEN |= 0x20;
      00029D 43 B7 20         [24] 1078 	orl	_CLKEN,#0x20
                                   1079 ;	main.c:124: UARTBRGH = 0x00; // config for 115200
      0002A0 75 9B 00         [24] 1080 	mov	_UARTBRGH,#0x00
                                   1081 ;	main.c:125: UARTBRGL = 0x8A;
      0002A3 75 9A 8A         [24] 1082 	mov	_UARTBRGL,#0x8a
                                   1083 ;	main.c:126: UARTSTA = 0x12; // also set the "empty" bit else we wait forever for it to go up
      0002A6 75 98 12         [24] 1084 	mov	_UARTSTA,#0x12
                                   1085 ;	main.c:127: IEN_UART0 = 1;
                                   1086 ;	assignBit
      0002A9 D2 A8            [12] 1087 	setb	_IEN_UART0
                                   1088 ;	main.c:128: }
      0002AB 22               [24] 1089 	ret
                                   1090 ;------------------------------------------------------------
                                   1091 ;Allocation info for local variables in function 'send_to_next_node'
                                   1092 ;------------------------------------------------------------
                                   1093 ;sloc0                     Allocated with name '_send_to_next_node_sloc0_1_0'
                                   1094 ;sloc1                     Allocated with name '_send_to_next_node_sloc1_1_0'
                                   1095 ;sloc2                     Allocated with name '_send_to_next_node_sloc2_1_0'
                                   1096 ;endp                      Allocated with name '_send_to_next_node_PARM_2'
                                   1097 ;data_len                  Allocated with name '_send_to_next_node_PARM_3'
                                   1098 ;cmd_len                   Allocated with name '_send_to_next_node_PARM_4'
                                   1099 ;cmd_buffer                Allocated with name '_send_to_next_node_PARM_5'
                                   1100 ;cmd                       Allocated with name '_send_to_next_node_cmd_65536_69'
                                   1101 ;out_crc                   Allocated with name '_send_to_next_node_out_crc_65536_70'
                                   1102 ;i                         Allocated with name '_send_to_next_node_i_131072_71'
                                   1103 ;i                         Allocated with name '_send_to_next_node_i_131072_73'
                                   1104 ;------------------------------------------------------------
                                   1105 ;	main.c:130: void send_to_next_node(uint8_t cmd, uint16_t endp, uint8_t data_len, uint8_t cmd_len, uint8_t *cmd_buffer)
                                   1106 ;	-----------------------------------------
                                   1107 ;	 function send_to_next_node
                                   1108 ;	-----------------------------------------
      0002AC                       1109 _send_to_next_node:
      0002AC E5 82            [12] 1110 	mov	a,dpl
      0002AE 90 E3 EE         [24] 1111 	mov	dptr,#_send_to_next_node_cmd_65536_69
      0002B1 F0               [24] 1112 	movx	@dptr,a
                                   1113 ;	main.c:134: uart_cmd_out_buffer[0] = 0xCA;
      0002B2 90 E2 D6         [24] 1114 	mov	dptr,#_uart_cmd_out_buffer
      0002B5 74 CA            [12] 1115 	mov	a,#0xca
      0002B7 F0               [24] 1116 	movx	@dptr,a
                                   1117 ;	main.c:135: uart_cmd_out_buffer[1] = data_len;
      0002B8 90 E3 E9         [24] 1118 	mov	dptr,#_send_to_next_node_PARM_3
      0002BB E0               [24] 1119 	movx	a,@dptr
      0002BC FF               [12] 1120 	mov	r7,a
      0002BD 90 E2 D7         [24] 1121 	mov	dptr,#(_uart_cmd_out_buffer + 0x0001)
      0002C0 F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	main.c:136: out_crc += data_len;
      0002C1 8F 06            [24] 1124 	mov	ar6,r7
      0002C3 7F 00            [12] 1125 	mov	r7,#0x00
      0002C5 8E 04            [24] 1126 	mov	ar4,r6
      0002C7 8F 05            [24] 1127 	mov	ar5,r7
      0002C9 74 CA            [12] 1128 	mov	a,#0xca
      0002CB 2C               [12] 1129 	add	a,r4
      0002CC FC               [12] 1130 	mov	r4,a
      0002CD E4               [12] 1131 	clr	a
      0002CE 3D               [12] 1132 	addc	a,r5
      0002CF FD               [12] 1133 	mov	r5,a
                                   1134 ;	main.c:137: uart_cmd_out_buffer[2] = cmd_len;
      0002D0 90 E3 EA         [24] 1135 	mov	dptr,#_send_to_next_node_PARM_4
      0002D3 E0               [24] 1136 	movx	a,@dptr
      0002D4 FB               [12] 1137 	mov	r3,a
      0002D5 90 E2 D8         [24] 1138 	mov	dptr,#(_uart_cmd_out_buffer + 0x0002)
      0002D8 F0               [24] 1139 	movx	@dptr,a
                                   1140 ;	main.c:138: out_crc += cmd_len;
      0002D9 8B 01            [24] 1141 	mov	ar1,r3
      0002DB 7A 00            [12] 1142 	mov	r2,#0x00
      0002DD 8C 08            [24] 1143 	mov	_send_to_next_node_sloc0_1_0,r4
      0002DF 8D 09            [24] 1144 	mov	(_send_to_next_node_sloc0_1_0 + 1),r5
      0002E1 89 00            [24] 1145 	mov	ar0,r1
      0002E3 8A 05            [24] 1146 	mov	ar5,r2
      0002E5 E8               [12] 1147 	mov	a,r0
      0002E6 25 08            [12] 1148 	add	a,_send_to_next_node_sloc0_1_0
      0002E8 F8               [12] 1149 	mov	r0,a
      0002E9 ED               [12] 1150 	mov	a,r5
      0002EA 35 09            [12] 1151 	addc	a,(_send_to_next_node_sloc0_1_0 + 1)
      0002EC FD               [12] 1152 	mov	r5,a
      0002ED 88 08            [24] 1153 	mov	_send_to_next_node_sloc0_1_0,r0
      0002EF 8D 09            [24] 1154 	mov	(_send_to_next_node_sloc0_1_0 + 1),r5
                                   1155 ;	main.c:139: uart_cmd_out_buffer[3] = cmd;
      0002F1 90 E3 EE         [24] 1156 	mov	dptr,#_send_to_next_node_cmd_65536_69
      0002F4 E0               [24] 1157 	movx	a,@dptr
      0002F5 FC               [12] 1158 	mov	r4,a
      0002F6 90 E2 D9         [24] 1159 	mov	dptr,#(_uart_cmd_out_buffer + 0x0003)
      0002F9 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	main.c:140: out_crc += cmd;
                                   1162 ;	1-genFromRTrack replaced	mov	(_send_to_next_node_sloc1_1_0 + 1),#0x00
      0002FA 8C 0A            [24] 1163 	mov	_send_to_next_node_sloc1_1_0,r4
      0002FC 8F 0B            [24] 1164 	mov	(_send_to_next_node_sloc1_1_0 + 1),r7
      0002FE AD 0B            [24] 1165 	mov	r5,(_send_to_next_node_sloc1_1_0 + 1)
      000300 EC               [12] 1166 	mov	a,r4
      000301 25 08            [12] 1167 	add	a,_send_to_next_node_sloc0_1_0
      000303 FC               [12] 1168 	mov	r4,a
      000304 ED               [12] 1169 	mov	a,r5
      000305 35 09            [12] 1170 	addc	a,(_send_to_next_node_sloc0_1_0 + 1)
      000307 FD               [12] 1171 	mov	r5,a
      000308 90 E3 EF         [24] 1172 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      00030B EC               [12] 1173 	mov	a,r4
      00030C F0               [24] 1174 	movx	@dptr,a
      00030D ED               [12] 1175 	mov	a,r5
      00030E A3               [24] 1176 	inc	dptr
      00030F F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	main.c:141: for (uint8_t i = 0; i < cmd_len; i++)
      000310 90 E3 EB         [24] 1179 	mov	dptr,#_send_to_next_node_PARM_5
      000313 E0               [24] 1180 	movx	a,@dptr
      000314 F5 0C            [12] 1181 	mov	_send_to_next_node_sloc2_1_0,a
      000316 A3               [24] 1182 	inc	dptr
      000317 E0               [24] 1183 	movx	a,@dptr
      000318 F5 0D            [12] 1184 	mov	(_send_to_next_node_sloc2_1_0 + 1),a
      00031A A3               [24] 1185 	inc	dptr
      00031B E0               [24] 1186 	movx	a,@dptr
      00031C F5 0E            [12] 1187 	mov	(_send_to_next_node_sloc2_1_0 + 2),a
                                   1188 ;	1-genFromRTrack replaced	mov	_send_to_next_node_sloc1_1_0,#0x00
      00031E 8F 0A            [24] 1189 	mov	_send_to_next_node_sloc1_1_0,r7
      000320                       1190 00104$:
      000320 C3               [12] 1191 	clr	c
      000321 E5 0A            [12] 1192 	mov	a,_send_to_next_node_sloc1_1_0
      000323 9B               [12] 1193 	subb	a,r3
      000324 50 5E            [24] 1194 	jnc	00101$
                                   1195 ;	main.c:143: uart_cmd_out_buffer[4 + i] = cmd_buffer[i];
      000326 C0 01            [24] 1196 	push	ar1
      000328 C0 02            [24] 1197 	push	ar2
      00032A A9 0A            [24] 1198 	mov	r1,_send_to_next_node_sloc1_1_0
      00032C 7A 00            [12] 1199 	mov	r2,#0x00
      00032E 74 04            [12] 1200 	mov	a,#0x04
      000330 29               [12] 1201 	add	a,r1
      000331 F9               [12] 1202 	mov	r1,a
      000332 E4               [12] 1203 	clr	a
      000333 3A               [12] 1204 	addc	a,r2
      000334 FA               [12] 1205 	mov	r2,a
      000335 E9               [12] 1206 	mov	a,r1
      000336 24 D6            [12] 1207 	add	a,#_uart_cmd_out_buffer
      000338 F5 08            [12] 1208 	mov	_send_to_next_node_sloc0_1_0,a
      00033A EA               [12] 1209 	mov	a,r2
      00033B 34 E2            [12] 1210 	addc	a,#(_uart_cmd_out_buffer >> 8)
      00033D F5 09            [12] 1211 	mov	(_send_to_next_node_sloc0_1_0 + 1),a
      00033F E5 0A            [12] 1212 	mov	a,_send_to_next_node_sloc1_1_0
      000341 25 0C            [12] 1213 	add	a,_send_to_next_node_sloc2_1_0
      000343 F9               [12] 1214 	mov	r1,a
      000344 E4               [12] 1215 	clr	a
      000345 35 0D            [12] 1216 	addc	a,(_send_to_next_node_sloc2_1_0 + 1)
      000347 FA               [12] 1217 	mov	r2,a
      000348 AD 0E            [24] 1218 	mov	r5,(_send_to_next_node_sloc2_1_0 + 2)
      00034A 89 82            [24] 1219 	mov	dpl,r1
      00034C 8A 83            [24] 1220 	mov	dph,r2
      00034E 8D F0            [24] 1221 	mov	b,r5
      000350 12 18 BF         [24] 1222 	lcall	__gptrget
      000353 85 08 82         [24] 1223 	mov	dpl,_send_to_next_node_sloc0_1_0
      000356 85 09 83         [24] 1224 	mov	dph,(_send_to_next_node_sloc0_1_0 + 1)
      000359 F0               [24] 1225 	movx	@dptr,a
                                   1226 ;	main.c:144: out_crc += cmd_buffer[i];
      00035A 89 82            [24] 1227 	mov	dpl,r1
      00035C 8A 83            [24] 1228 	mov	dph,r2
      00035E 8D F0            [24] 1229 	mov	b,r5
      000360 12 18 BF         [24] 1230 	lcall	__gptrget
      000363 F9               [12] 1231 	mov	r1,a
      000364 7D 00            [12] 1232 	mov	r5,#0x00
      000366 90 E3 EF         [24] 1233 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      000369 E0               [24] 1234 	movx	a,@dptr
      00036A FA               [12] 1235 	mov	r2,a
      00036B A3               [24] 1236 	inc	dptr
      00036C E0               [24] 1237 	movx	a,@dptr
      00036D FC               [12] 1238 	mov	r4,a
      00036E E9               [12] 1239 	mov	a,r1
      00036F 2A               [12] 1240 	add	a,r2
      000370 FA               [12] 1241 	mov	r2,a
      000371 ED               [12] 1242 	mov	a,r5
      000372 3C               [12] 1243 	addc	a,r4
      000373 FC               [12] 1244 	mov	r4,a
      000374 90 E3 EF         [24] 1245 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      000377 EA               [12] 1246 	mov	a,r2
      000378 F0               [24] 1247 	movx	@dptr,a
      000379 EC               [12] 1248 	mov	a,r4
      00037A A3               [24] 1249 	inc	dptr
      00037B F0               [24] 1250 	movx	@dptr,a
                                   1251 ;	main.c:141: for (uint8_t i = 0; i < cmd_len; i++)
      00037C 05 0A            [12] 1252 	inc	_send_to_next_node_sloc1_1_0
      00037E D0 02            [24] 1253 	pop	ar2
      000380 D0 01            [24] 1254 	pop	ar1
      000382 80 9C            [24] 1255 	sjmp	00104$
      000384                       1256 00101$:
                                   1257 ;	main.c:146: for (int i = 0; i < (data_len - cmd_len); i++)
      000384 74 04            [12] 1258 	mov	a,#0x04
      000386 29               [12] 1259 	add	a,r1
      000387 FC               [12] 1260 	mov	r4,a
      000388 E4               [12] 1261 	clr	a
      000389 3A               [12] 1262 	addc	a,r2
      00038A FD               [12] 1263 	mov	r5,a
      00038B EE               [12] 1264 	mov	a,r6
      00038C C3               [12] 1265 	clr	c
      00038D 99               [12] 1266 	subb	a,r1
      00038E FB               [12] 1267 	mov	r3,a
      00038F EF               [12] 1268 	mov	a,r7
      000390 9A               [12] 1269 	subb	a,r2
      000391 FA               [12] 1270 	mov	r2,a
      000392 78 00            [12] 1271 	mov	r0,#0x00
      000394 79 00            [12] 1272 	mov	r1,#0x00
      000396                       1273 00107$:
      000396 C3               [12] 1274 	clr	c
      000397 E8               [12] 1275 	mov	a,r0
      000398 9B               [12] 1276 	subb	a,r3
      000399 E9               [12] 1277 	mov	a,r1
      00039A 64 80            [12] 1278 	xrl	a,#0x80
      00039C 8A F0            [24] 1279 	mov	b,r2
      00039E 63 F0 80         [24] 1280 	xrl	b,#0x80
      0003A1 95 F0            [12] 1281 	subb	a,b
      0003A3 50 21            [24] 1282 	jnc	00102$
                                   1283 ;	main.c:148: uart_cmd_out_buffer[4 + cmd_len + i] = 0x00;
      0003A5 C0 03            [24] 1284 	push	ar3
      0003A7 C0 02            [24] 1285 	push	ar2
      0003A9 E8               [12] 1286 	mov	a,r0
      0003AA 2C               [12] 1287 	add	a,r4
      0003AB FA               [12] 1288 	mov	r2,a
      0003AC E9               [12] 1289 	mov	a,r1
      0003AD 3D               [12] 1290 	addc	a,r5
      0003AE FB               [12] 1291 	mov	r3,a
      0003AF EA               [12] 1292 	mov	a,r2
      0003B0 24 D6            [12] 1293 	add	a,#_uart_cmd_out_buffer
      0003B2 F5 82            [12] 1294 	mov	dpl,a
      0003B4 EB               [12] 1295 	mov	a,r3
      0003B5 34 E2            [12] 1296 	addc	a,#(_uart_cmd_out_buffer >> 8)
      0003B7 F5 83            [12] 1297 	mov	dph,a
      0003B9 E4               [12] 1298 	clr	a
      0003BA F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	main.c:146: for (int i = 0; i < (data_len - cmd_len); i++)
      0003BB 08               [12] 1301 	inc	r0
      0003BC B8 00 01         [24] 1302 	cjne	r0,#0x00,00131$
      0003BF 09               [12] 1303 	inc	r1
      0003C0                       1304 00131$:
      0003C0 D0 02            [24] 1305 	pop	ar2
      0003C2 D0 03            [24] 1306 	pop	ar3
      0003C4 80 D0            [24] 1307 	sjmp	00107$
      0003C6                       1308 00102$:
                                   1309 ;	main.c:151: uart_cmd_out_buffer[4 + data_len] = endp >> 8;
      0003C6 74 04            [12] 1310 	mov	a,#0x04
      0003C8 2E               [12] 1311 	add	a,r6
      0003C9 FC               [12] 1312 	mov	r4,a
      0003CA E4               [12] 1313 	clr	a
      0003CB 3F               [12] 1314 	addc	a,r7
      0003CC FD               [12] 1315 	mov	r5,a
      0003CD EC               [12] 1316 	mov	a,r4
      0003CE 24 D6            [12] 1317 	add	a,#_uart_cmd_out_buffer
      0003D0 FC               [12] 1318 	mov	r4,a
      0003D1 ED               [12] 1319 	mov	a,r5
      0003D2 34 E2            [12] 1320 	addc	a,#(_uart_cmd_out_buffer >> 8)
      0003D4 FD               [12] 1321 	mov	r5,a
      0003D5 90 E3 E7         [24] 1322 	mov	dptr,#_send_to_next_node_PARM_2
      0003D8 E0               [24] 1323 	movx	a,@dptr
      0003D9 FA               [12] 1324 	mov	r2,a
      0003DA A3               [24] 1325 	inc	dptr
      0003DB E0               [24] 1326 	movx	a,@dptr
      0003DC FB               [12] 1327 	mov	r3,a
      0003DD 8C 82            [24] 1328 	mov	dpl,r4
      0003DF 8D 83            [24] 1329 	mov	dph,r5
      0003E1 F0               [24] 1330 	movx	@dptr,a
                                   1331 ;	main.c:152: out_crc += endp >> 8;
      0003E2 8B 04            [24] 1332 	mov	ar4,r3
      0003E4 7D 00            [12] 1333 	mov	r5,#0x00
      0003E6 90 E3 EF         [24] 1334 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      0003E9 E0               [24] 1335 	movx	a,@dptr
      0003EA F8               [12] 1336 	mov	r0,a
      0003EB A3               [24] 1337 	inc	dptr
      0003EC E0               [24] 1338 	movx	a,@dptr
      0003ED F9               [12] 1339 	mov	r1,a
      0003EE 90 E3 EF         [24] 1340 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      0003F1 EC               [12] 1341 	mov	a,r4
      0003F2 28               [12] 1342 	add	a,r0
      0003F3 F0               [24] 1343 	movx	@dptr,a
      0003F4 ED               [12] 1344 	mov	a,r5
      0003F5 39               [12] 1345 	addc	a,r1
      0003F6 A3               [24] 1346 	inc	dptr
      0003F7 F0               [24] 1347 	movx	@dptr,a
                                   1348 ;	main.c:153: uart_cmd_out_buffer[5 + data_len] = endp & 0xff;
      0003F8 74 05            [12] 1349 	mov	a,#0x05
      0003FA 2E               [12] 1350 	add	a,r6
      0003FB FC               [12] 1351 	mov	r4,a
      0003FC E4               [12] 1352 	clr	a
      0003FD 3F               [12] 1353 	addc	a,r7
      0003FE FD               [12] 1354 	mov	r5,a
      0003FF EC               [12] 1355 	mov	a,r4
      000400 24 D6            [12] 1356 	add	a,#_uart_cmd_out_buffer
      000402 F5 82            [12] 1357 	mov	dpl,a
      000404 ED               [12] 1358 	mov	a,r5
      000405 34 E2            [12] 1359 	addc	a,#(_uart_cmd_out_buffer >> 8)
      000407 F5 83            [12] 1360 	mov	dph,a
      000409 8A 05            [24] 1361 	mov	ar5,r2
      00040B ED               [12] 1362 	mov	a,r5
      00040C F0               [24] 1363 	movx	@dptr,a
                                   1364 ;	main.c:154: out_crc += endp & 0xff;
      00040D 7B 00            [12] 1365 	mov	r3,#0x00
      00040F 90 E3 EF         [24] 1366 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      000412 E0               [24] 1367 	movx	a,@dptr
      000413 FC               [12] 1368 	mov	r4,a
      000414 A3               [24] 1369 	inc	dptr
      000415 E0               [24] 1370 	movx	a,@dptr
      000416 FD               [12] 1371 	mov	r5,a
      000417 EA               [12] 1372 	mov	a,r2
      000418 2C               [12] 1373 	add	a,r4
      000419 FA               [12] 1374 	mov	r2,a
      00041A EB               [12] 1375 	mov	a,r3
      00041B 3D               [12] 1376 	addc	a,r5
      00041C FB               [12] 1377 	mov	r3,a
      00041D 90 E3 EF         [24] 1378 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      000420 EA               [12] 1379 	mov	a,r2
      000421 F0               [24] 1380 	movx	@dptr,a
      000422 EB               [12] 1381 	mov	a,r3
      000423 A3               [24] 1382 	inc	dptr
      000424 F0               [24] 1383 	movx	@dptr,a
                                   1384 ;	main.c:156: uart_cmd_out_buffer[6 + data_len] = out_crc >> 8;
      000425 74 06            [12] 1385 	mov	a,#0x06
      000427 2E               [12] 1386 	add	a,r6
      000428 FC               [12] 1387 	mov	r4,a
      000429 E4               [12] 1388 	clr	a
      00042A 3F               [12] 1389 	addc	a,r7
      00042B FD               [12] 1390 	mov	r5,a
      00042C EC               [12] 1391 	mov	a,r4
      00042D 24 D6            [12] 1392 	add	a,#_uart_cmd_out_buffer
      00042F FC               [12] 1393 	mov	r4,a
      000430 ED               [12] 1394 	mov	a,r5
      000431 34 E2            [12] 1395 	addc	a,#(_uart_cmd_out_buffer >> 8)
      000433 FD               [12] 1396 	mov	r5,a
      000434 90 E3 EF         [24] 1397 	mov	dptr,#_send_to_next_node_out_crc_65536_70
      000437 E0               [24] 1398 	movx	a,@dptr
      000438 FA               [12] 1399 	mov	r2,a
      000439 A3               [24] 1400 	inc	dptr
      00043A E0               [24] 1401 	movx	a,@dptr
      00043B 8C 82            [24] 1402 	mov	dpl,r4
      00043D 8D 83            [24] 1403 	mov	dph,r5
      00043F F0               [24] 1404 	movx	@dptr,a
                                   1405 ;	main.c:157: uart_cmd_out_buffer[7 + data_len] = out_crc & 0xff;
      000440 74 07            [12] 1406 	mov	a,#0x07
      000442 2E               [12] 1407 	add	a,r6
      000443 FE               [12] 1408 	mov	r6,a
      000444 E4               [12] 1409 	clr	a
      000445 3F               [12] 1410 	addc	a,r7
      000446 FF               [12] 1411 	mov	r7,a
      000447 EE               [12] 1412 	mov	a,r6
      000448 24 D6            [12] 1413 	add	a,#_uart_cmd_out_buffer
      00044A F5 82            [12] 1414 	mov	dpl,a
      00044C EF               [12] 1415 	mov	a,r7
      00044D 34 E2            [12] 1416 	addc	a,#(_uart_cmd_out_buffer >> 8)
      00044F F5 83            [12] 1417 	mov	dph,a
      000451 EA               [12] 1418 	mov	a,r2
      000452 F0               [24] 1419 	movx	@dptr,a
                                   1420 ;	main.c:159: out_end_len = 7 + data_len;
      000453 90 E4 60         [24] 1421 	mov	dptr,#_out_end_len
      000456 EE               [12] 1422 	mov	a,r6
      000457 F0               [24] 1423 	movx	@dptr,a
      000458 EF               [12] 1424 	mov	a,r7
      000459 A3               [24] 1425 	inc	dptr
      00045A F0               [24] 1426 	movx	@dptr,a
                                   1427 ;	main.c:160: out_posi = 1;
      00045B 90 E4 5E         [24] 1428 	mov	dptr,#_out_posi
      00045E 74 01            [12] 1429 	mov	a,#0x01
      000460 F0               [24] 1430 	movx	@dptr,a
      000461 E4               [12] 1431 	clr	a
      000462 A3               [24] 1432 	inc	dptr
      000463 F0               [24] 1433 	movx	@dptr,a
                                   1434 ;	main.c:161: uartTx(uart_cmd_out_buffer[0]);
      000464 90 E2 D6         [24] 1435 	mov	dptr,#_uart_cmd_out_buffer
      000467 E0               [24] 1436 	movx	a,@dptr
      000468 F5 82            [12] 1437 	mov	dpl,a
      00046A 12 04 70         [24] 1438 	lcall	_uartTx
                                   1439 ;	main.c:162: out_enable = 1;
                                   1440 ;	assignBit
      00046D D2 02            [12] 1441 	setb	_out_enable
                                   1442 ;	main.c:163: }
      00046F 22               [24] 1443 	ret
                                   1444 ;------------------------------------------------------------
                                   1445 ;Allocation info for local variables in function 'uartTx'
                                   1446 ;------------------------------------------------------------
                                   1447 ;val                       Allocated with name '_uartTx_val_65536_75'
                                   1448 ;------------------------------------------------------------
                                   1449 ;	main.c:166: void uartTx(uint8_t val)
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function uartTx
                                   1452 ;	-----------------------------------------
      000470                       1453 _uartTx:
      000470 E5 82            [12] 1454 	mov	a,dpl
      000472 90 E3 F1         [24] 1455 	mov	dptr,#_uartTx_val_65536_75
      000475 F0               [24] 1456 	movx	@dptr,a
                                   1457 ;	main.c:168: while (tx_free)
      000476                       1458 00101$:
      000476 20 04 FD         [24] 1459 	jb	_tx_free,00101$
                                   1460 ;	main.c:170: UARTBUF = val;
      000479 90 E3 F1         [24] 1461 	mov	dptr,#_uartTx_val_65536_75
      00047C E0               [24] 1462 	movx	a,@dptr
      00047D F5 99            [12] 1463 	mov	_UARTBUF,a
                                   1464 ;	main.c:171: tx_free = 1;
                                   1465 ;	assignBit
      00047F D2 04            [12] 1466 	setb	_tx_free
                                   1467 ;	main.c:172: }
      000481 22               [24] 1468 	ret
                                   1469 ;------------------------------------------------------------
                                   1470 ;Allocation info for local variables in function 'uart_cmd'
                                   1471 ;------------------------------------------------------------
                                   1472 ;sloc0                     Allocated with name '_uart_cmd_sloc0_1_0'
                                   1473 ;sloc1                     Allocated with name '_uart_cmd_sloc1_1_0'
                                   1474 ;rx_cur                    Allocated with name '_uart_cmd_rx_cur_65536_77'
                                   1475 ;------------------------------------------------------------
                                   1476 ;	main.c:174: void uart_cmd(uint8_t rx_cur)
                                   1477 ;	-----------------------------------------
                                   1478 ;	 function uart_cmd
                                   1479 ;	-----------------------------------------
      000482                       1480 _uart_cmd:
      000482 E5 82            [12] 1481 	mov	a,dpl
      000484 90 E3 F2         [24] 1482 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      000487 F0               [24] 1483 	movx	@dptr,a
                                   1484 ;	main.c:176: switch (cmd_pos)
      000488 90 E4 48         [24] 1485 	mov	dptr,#_cmd_pos
      00048B E0               [24] 1486 	movx	a,@dptr
      00048C FE               [12] 1487 	mov	r6,a
      00048D A3               [24] 1488 	inc	dptr
      00048E E0               [24] 1489 	movx	a,@dptr
      00048F FF               [12] 1490 	mov	r7,a
      000490 C3               [12] 1491 	clr	c
      000491 74 08            [12] 1492 	mov	a,#0x08
      000493 9E               [12] 1493 	subb	a,r6
      000494 E4               [12] 1494 	clr	a
      000495 9F               [12] 1495 	subb	a,r7
      000496 50 01            [24] 1496 	jnc	00142$
      000498 22               [24] 1497 	ret
      000499                       1498 00142$:
      000499 EE               [12] 1499 	mov	a,r6
      00049A 24 0A            [12] 1500 	add	a,#(00143$-3-.)
      00049C 83               [24] 1501 	movc	a,@a+pc
      00049D F5 82            [12] 1502 	mov	dpl,a
      00049F EE               [12] 1503 	mov	a,r6
      0004A0 24 0D            [12] 1504 	add	a,#(00144$-3-.)
      0004A2 83               [24] 1505 	movc	a,@a+pc
      0004A3 F5 83            [12] 1506 	mov	dph,a
      0004A5 E4               [12] 1507 	clr	a
      0004A6 73               [24] 1508 	jmp	@a+dptr
      0004A7                       1509 00143$:
      0004A7 B9                    1510 	.db	00101$
      0004A8 F0                    1511 	.db	00104$
      0004A9 44                    1512 	.db	00105$
      0004AA C2                    1513 	.db	00109$
      0004AB 16                    1514 	.db	00110$
      0004AC C4                    1515 	.db	00113$
      0004AD 19                    1516 	.db	00114$
      0004AE 78                    1517 	.db	00115$
      0004AF A9                    1518 	.db	00116$
      0004B0                       1519 00144$:
      0004B0 04                    1520 	.db	00101$>>8
      0004B1 04                    1521 	.db	00104$>>8
      0004B2 05                    1522 	.db	00105$>>8
      0004B3 05                    1523 	.db	00109$>>8
      0004B4 06                    1524 	.db	00110$>>8
      0004B5 06                    1525 	.db	00113$>>8
      0004B6 07                    1526 	.db	00114$>>8
      0004B7 07                    1527 	.db	00115$>>8
      0004B8 07                    1528 	.db	00116$>>8
                                   1529 ;	main.c:178: case 0:
      0004B9                       1530 00101$:
                                   1531 ;	main.c:179: if (rx_cur == 0xCA)
      0004B9 90 E3 F2         [24] 1532 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      0004BC E0               [24] 1533 	movx	a,@dptr
      0004BD FF               [12] 1534 	mov	r7,a
      0004BE BF CA 02         [24] 1535 	cjne	r7,#0xca,00145$
      0004C1 80 01            [24] 1536 	sjmp	00146$
      0004C3                       1537 00145$:
      0004C3 22               [24] 1538 	ret
      0004C4                       1539 00146$:
                                   1540 ;	main.c:181: cmd_crc[used_buffer] = 0x00CA;
      0004C4 A2 00            [12] 1541 	mov	c,_used_buffer
      0004C6 E4               [12] 1542 	clr	a
      0004C7 33               [12] 1543 	rlc	a
      0004C8 7F 00            [12] 1544 	mov	r7,#0x00
      0004CA 25 E0            [12] 1545 	add	a,acc
      0004CC FE               [12] 1546 	mov	r6,a
      0004CD EF               [12] 1547 	mov	a,r7
      0004CE 33               [12] 1548 	rlc	a
      0004CF FF               [12] 1549 	mov	r7,a
      0004D0 EE               [12] 1550 	mov	a,r6
      0004D1 24 4A            [12] 1551 	add	a,#_cmd_crc
      0004D3 F5 82            [12] 1552 	mov	dpl,a
      0004D5 EF               [12] 1553 	mov	a,r7
      0004D6 34 E4            [12] 1554 	addc	a,#(_cmd_crc >> 8)
      0004D8 F5 83            [12] 1555 	mov	dph,a
      0004DA 74 CA            [12] 1556 	mov	a,#0xca
      0004DC F0               [24] 1557 	movx	@dptr,a
      0004DD E4               [12] 1558 	clr	a
      0004DE A3               [24] 1559 	inc	dptr
      0004DF F0               [24] 1560 	movx	@dptr,a
                                   1561 ;	main.c:182: P0FUNC |= 0b01000000; // Enable Uart TXD only now to wake up the next node
      0004E0 43 AD 40         [24] 1562 	orl	_P0FUNC,#0x40
                                   1563 ;	main.c:183: cmd_pos++;
      0004E3 90 E4 48         [24] 1564 	mov	dptr,#_cmd_pos
      0004E6 E0               [24] 1565 	movx	a,@dptr
      0004E7 24 01            [12] 1566 	add	a,#0x01
      0004E9 F0               [24] 1567 	movx	@dptr,a
      0004EA A3               [24] 1568 	inc	dptr
      0004EB E0               [24] 1569 	movx	a,@dptr
      0004EC 34 00            [12] 1570 	addc	a,#0x00
      0004EE F0               [24] 1571 	movx	@dptr,a
                                   1572 ;	main.c:185: break;
      0004EF 22               [24] 1573 	ret
                                   1574 ;	main.c:186: case 1:
      0004F0                       1575 00104$:
                                   1576 ;	main.c:187: data_len[used_buffer] = rx_cur;
      0004F0 A2 00            [12] 1577 	mov	c,_used_buffer
      0004F2 E4               [12] 1578 	clr	a
      0004F3 33               [12] 1579 	rlc	a
      0004F4 7F 00            [12] 1580 	mov	r7,#0x00
      0004F6 25 E0            [12] 1581 	add	a,acc
      0004F8 FE               [12] 1582 	mov	r6,a
      0004F9 EF               [12] 1583 	mov	a,r7
      0004FA 33               [12] 1584 	rlc	a
      0004FB FF               [12] 1585 	mov	r7,a
      0004FC EE               [12] 1586 	mov	a,r6
      0004FD 24 40            [12] 1587 	add	a,#_data_len
      0004FF FC               [12] 1588 	mov	r4,a
      000500 EF               [12] 1589 	mov	a,r7
      000501 34 E4            [12] 1590 	addc	a,#(_data_len >> 8)
      000503 FD               [12] 1591 	mov	r5,a
      000504 90 E3 F2         [24] 1592 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      000507 E0               [24] 1593 	movx	a,@dptr
      000508 FB               [12] 1594 	mov	r3,a
      000509 F9               [12] 1595 	mov	r1,a
      00050A 7A 00            [12] 1596 	mov	r2,#0x00
      00050C 8C 82            [24] 1597 	mov	dpl,r4
      00050E 8D 83            [24] 1598 	mov	dph,r5
      000510 E9               [12] 1599 	mov	a,r1
      000511 F0               [24] 1600 	movx	@dptr,a
      000512 EA               [12] 1601 	mov	a,r2
      000513 A3               [24] 1602 	inc	dptr
      000514 F0               [24] 1603 	movx	@dptr,a
                                   1604 ;	main.c:188: cmd_crc[used_buffer] += rx_cur;
      000515 EE               [12] 1605 	mov	a,r6
      000516 24 4A            [12] 1606 	add	a,#_cmd_crc
      000518 FE               [12] 1607 	mov	r6,a
      000519 EF               [12] 1608 	mov	a,r7
      00051A 34 E4            [12] 1609 	addc	a,#(_cmd_crc >> 8)
      00051C FF               [12] 1610 	mov	r7,a
      00051D 8E 82            [24] 1611 	mov	dpl,r6
      00051F 8F 83            [24] 1612 	mov	dph,r7
      000521 E0               [24] 1613 	movx	a,@dptr
      000522 FC               [12] 1614 	mov	r4,a
      000523 A3               [24] 1615 	inc	dptr
      000524 E0               [24] 1616 	movx	a,@dptr
      000525 FD               [12] 1617 	mov	r5,a
      000526 7A 00            [12] 1618 	mov	r2,#0x00
      000528 EB               [12] 1619 	mov	a,r3
      000529 2C               [12] 1620 	add	a,r4
      00052A FC               [12] 1621 	mov	r4,a
      00052B EA               [12] 1622 	mov	a,r2
      00052C 3D               [12] 1623 	addc	a,r5
      00052D FD               [12] 1624 	mov	r5,a
      00052E 8E 82            [24] 1625 	mov	dpl,r6
      000530 8F 83            [24] 1626 	mov	dph,r7
      000532 EC               [12] 1627 	mov	a,r4
      000533 F0               [24] 1628 	movx	@dptr,a
      000534 ED               [12] 1629 	mov	a,r5
      000535 A3               [24] 1630 	inc	dptr
      000536 F0               [24] 1631 	movx	@dptr,a
                                   1632 ;	main.c:189: cmd_pos++;
      000537 90 E4 48         [24] 1633 	mov	dptr,#_cmd_pos
      00053A E0               [24] 1634 	movx	a,@dptr
      00053B 24 01            [12] 1635 	add	a,#0x01
      00053D F0               [24] 1636 	movx	@dptr,a
      00053E A3               [24] 1637 	inc	dptr
      00053F E0               [24] 1638 	movx	a,@dptr
      000540 34 00            [12] 1639 	addc	a,#0x00
      000542 F0               [24] 1640 	movx	@dptr,a
                                   1641 ;	main.c:190: break;
      000543 22               [24] 1642 	ret
                                   1643 ;	main.c:191: case 2:
      000544                       1644 00105$:
                                   1645 ;	main.c:192: if (rx_cur <= data_len[used_buffer])
      000544 A2 00            [12] 1646 	mov	c,_used_buffer
      000546 E4               [12] 1647 	clr	a
      000547 33               [12] 1648 	rlc	a
      000548 7F 00            [12] 1649 	mov	r7,#0x00
      00054A 25 E0            [12] 1650 	add	a,acc
      00054C FE               [12] 1651 	mov	r6,a
      00054D EF               [12] 1652 	mov	a,r7
      00054E 33               [12] 1653 	rlc	a
      00054F FF               [12] 1654 	mov	r7,a
      000550 EE               [12] 1655 	mov	a,r6
      000551 24 40            [12] 1656 	add	a,#_data_len
      000553 F5 82            [12] 1657 	mov	dpl,a
      000555 EF               [12] 1658 	mov	a,r7
      000556 34 E4            [12] 1659 	addc	a,#(_data_len >> 8)
      000558 F5 83            [12] 1660 	mov	dph,a
      00055A E0               [24] 1661 	movx	a,@dptr
      00055B FC               [12] 1662 	mov	r4,a
      00055C A3               [24] 1663 	inc	dptr
      00055D E0               [24] 1664 	movx	a,@dptr
      00055E FD               [12] 1665 	mov	r5,a
      00055F 90 E3 F2         [24] 1666 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      000562 E0               [24] 1667 	movx	a,@dptr
      000563 FB               [12] 1668 	mov	r3,a
      000564 F9               [12] 1669 	mov	r1,a
      000565 7A 00            [12] 1670 	mov	r2,#0x00
      000567 C3               [12] 1671 	clr	c
      000568 EC               [12] 1672 	mov	a,r4
      000569 99               [12] 1673 	subb	a,r1
      00056A ED               [12] 1674 	mov	a,r5
      00056B 9A               [12] 1675 	subb	a,r2
      00056C 40 4C            [24] 1676 	jc	00107$
                                   1677 ;	main.c:194: cmd_len[used_buffer] = rx_cur;
      00056E EE               [12] 1678 	mov	a,r6
      00056F 24 44            [12] 1679 	add	a,#_cmd_len
      000571 F5 82            [12] 1680 	mov	dpl,a
      000573 EF               [12] 1681 	mov	a,r7
      000574 34 E4            [12] 1682 	addc	a,#(_cmd_len >> 8)
      000576 F5 83            [12] 1683 	mov	dph,a
      000578 E9               [12] 1684 	mov	a,r1
      000579 F0               [24] 1685 	movx	@dptr,a
      00057A EA               [12] 1686 	mov	a,r2
      00057B A3               [24] 1687 	inc	dptr
      00057C F0               [24] 1688 	movx	@dptr,a
                                   1689 ;	main.c:195: cmd_data_pos[used_buffer] = 0;
      00057D EE               [12] 1690 	mov	a,r6
      00057E 24 52            [12] 1691 	add	a,#_cmd_data_pos
      000580 F5 82            [12] 1692 	mov	dpl,a
      000582 EF               [12] 1693 	mov	a,r7
      000583 34 E4            [12] 1694 	addc	a,#(_cmd_data_pos >> 8)
      000585 F5 83            [12] 1695 	mov	dph,a
      000587 E4               [12] 1696 	clr	a
      000588 F0               [24] 1697 	movx	@dptr,a
      000589 A3               [24] 1698 	inc	dptr
      00058A F0               [24] 1699 	movx	@dptr,a
                                   1700 ;	main.c:196: cmd_crc[used_buffer] += rx_cur;
      00058B EE               [12] 1701 	mov	a,r6
      00058C 24 4A            [12] 1702 	add	a,#_cmd_crc
      00058E FE               [12] 1703 	mov	r6,a
      00058F EF               [12] 1704 	mov	a,r7
      000590 34 E4            [12] 1705 	addc	a,#(_cmd_crc >> 8)
      000592 FF               [12] 1706 	mov	r7,a
      000593 8E 82            [24] 1707 	mov	dpl,r6
      000595 8F 83            [24] 1708 	mov	dph,r7
      000597 E0               [24] 1709 	movx	a,@dptr
      000598 FC               [12] 1710 	mov	r4,a
      000599 A3               [24] 1711 	inc	dptr
      00059A E0               [24] 1712 	movx	a,@dptr
      00059B FD               [12] 1713 	mov	r5,a
      00059C 7A 00            [12] 1714 	mov	r2,#0x00
      00059E EB               [12] 1715 	mov	a,r3
      00059F 2C               [12] 1716 	add	a,r4
      0005A0 FC               [12] 1717 	mov	r4,a
      0005A1 EA               [12] 1718 	mov	a,r2
      0005A2 3D               [12] 1719 	addc	a,r5
      0005A3 FD               [12] 1720 	mov	r5,a
      0005A4 8E 82            [24] 1721 	mov	dpl,r6
      0005A6 8F 83            [24] 1722 	mov	dph,r7
      0005A8 EC               [12] 1723 	mov	a,r4
      0005A9 F0               [24] 1724 	movx	@dptr,a
      0005AA ED               [12] 1725 	mov	a,r5
      0005AB A3               [24] 1726 	inc	dptr
      0005AC F0               [24] 1727 	movx	@dptr,a
                                   1728 ;	main.c:197: cmd_pos++;
      0005AD 90 E4 48         [24] 1729 	mov	dptr,#_cmd_pos
      0005B0 E0               [24] 1730 	movx	a,@dptr
      0005B1 24 01            [12] 1731 	add	a,#0x01
      0005B3 F0               [24] 1732 	movx	@dptr,a
      0005B4 A3               [24] 1733 	inc	dptr
      0005B5 E0               [24] 1734 	movx	a,@dptr
      0005B6 34 00            [12] 1735 	addc	a,#0x00
      0005B8 F0               [24] 1736 	movx	@dptr,a
      0005B9 22               [24] 1737 	ret
      0005BA                       1738 00107$:
                                   1739 ;	main.c:201: cmd_pos = 0;
      0005BA 90 E4 48         [24] 1740 	mov	dptr,#_cmd_pos
      0005BD E4               [12] 1741 	clr	a
      0005BE F0               [24] 1742 	movx	@dptr,a
      0005BF A3               [24] 1743 	inc	dptr
      0005C0 F0               [24] 1744 	movx	@dptr,a
                                   1745 ;	main.c:203: break;
      0005C1 22               [24] 1746 	ret
                                   1747 ;	main.c:204: case 3:
      0005C2                       1748 00109$:
                                   1749 ;	main.c:205: cmd_data_cmd[used_buffer] = rx_cur;
      0005C2 A2 00            [12] 1750 	mov	c,_used_buffer
      0005C4 E4               [12] 1751 	clr	a
      0005C5 33               [12] 1752 	rlc	a
      0005C6 7F 00            [12] 1753 	mov	r7,#0x00
      0005C8 25 E0            [12] 1754 	add	a,acc
      0005CA FE               [12] 1755 	mov	r6,a
      0005CB EF               [12] 1756 	mov	a,r7
      0005CC 33               [12] 1757 	rlc	a
      0005CD FF               [12] 1758 	mov	r7,a
      0005CE EE               [12] 1759 	mov	a,r6
      0005CF 24 56            [12] 1760 	add	a,#_cmd_data_cmd
      0005D1 FC               [12] 1761 	mov	r4,a
      0005D2 EF               [12] 1762 	mov	a,r7
      0005D3 34 E4            [12] 1763 	addc	a,#(_cmd_data_cmd >> 8)
      0005D5 FD               [12] 1764 	mov	r5,a
      0005D6 90 E3 F2         [24] 1765 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      0005D9 E0               [24] 1766 	movx	a,@dptr
      0005DA FB               [12] 1767 	mov	r3,a
      0005DB F9               [12] 1768 	mov	r1,a
      0005DC 7A 00            [12] 1769 	mov	r2,#0x00
      0005DE 8C 82            [24] 1770 	mov	dpl,r4
      0005E0 8D 83            [24] 1771 	mov	dph,r5
      0005E2 E9               [12] 1772 	mov	a,r1
      0005E3 F0               [24] 1773 	movx	@dptr,a
      0005E4 EA               [12] 1774 	mov	a,r2
      0005E5 A3               [24] 1775 	inc	dptr
      0005E6 F0               [24] 1776 	movx	@dptr,a
                                   1777 ;	main.c:206: cmd_crc[used_buffer] += rx_cur;
      0005E7 EE               [12] 1778 	mov	a,r6
      0005E8 24 4A            [12] 1779 	add	a,#_cmd_crc
      0005EA FE               [12] 1780 	mov	r6,a
      0005EB EF               [12] 1781 	mov	a,r7
      0005EC 34 E4            [12] 1782 	addc	a,#(_cmd_crc >> 8)
      0005EE FF               [12] 1783 	mov	r7,a
      0005EF 8E 82            [24] 1784 	mov	dpl,r6
      0005F1 8F 83            [24] 1785 	mov	dph,r7
      0005F3 E0               [24] 1786 	movx	a,@dptr
      0005F4 FC               [12] 1787 	mov	r4,a
      0005F5 A3               [24] 1788 	inc	dptr
      0005F6 E0               [24] 1789 	movx	a,@dptr
      0005F7 FD               [12] 1790 	mov	r5,a
      0005F8 7A 00            [12] 1791 	mov	r2,#0x00
      0005FA EB               [12] 1792 	mov	a,r3
      0005FB 2C               [12] 1793 	add	a,r4
      0005FC FC               [12] 1794 	mov	r4,a
      0005FD EA               [12] 1795 	mov	a,r2
      0005FE 3D               [12] 1796 	addc	a,r5
      0005FF FD               [12] 1797 	mov	r5,a
      000600 8E 82            [24] 1798 	mov	dpl,r6
      000602 8F 83            [24] 1799 	mov	dph,r7
      000604 EC               [12] 1800 	mov	a,r4
      000605 F0               [24] 1801 	movx	@dptr,a
      000606 ED               [12] 1802 	mov	a,r5
      000607 A3               [24] 1803 	inc	dptr
      000608 F0               [24] 1804 	movx	@dptr,a
                                   1805 ;	main.c:207: cmd_pos++;
      000609 90 E4 48         [24] 1806 	mov	dptr,#_cmd_pos
      00060C E0               [24] 1807 	movx	a,@dptr
      00060D 24 01            [12] 1808 	add	a,#0x01
      00060F F0               [24] 1809 	movx	@dptr,a
      000610 A3               [24] 1810 	inc	dptr
      000611 E0               [24] 1811 	movx	a,@dptr
      000612 34 00            [12] 1812 	addc	a,#0x00
      000614 F0               [24] 1813 	movx	@dptr,a
                                   1814 ;	main.c:208: break;
      000615 22               [24] 1815 	ret
                                   1816 ;	main.c:209: case 4:
      000616                       1817 00110$:
                                   1818 ;	main.c:210: uart_cmd_buffer[used_buffer][cmd_data_pos[used_buffer]++] = rx_cur;
      000616 90 E4 3A         [24] 1819 	mov	dptr,#__mulint_PARM_2
      000619 A2 00            [12] 1820 	mov	c,_used_buffer
      00061B E4               [12] 1821 	clr	a
      00061C 33               [12] 1822 	rlc	a
      00061D F0               [24] 1823 	movx	@dptr,a
      00061E E4               [12] 1824 	clr	a
      00061F A3               [24] 1825 	inc	dptr
      000620 F0               [24] 1826 	movx	@dptr,a
      000621 90 01 07         [24] 1827 	mov	dptr,#0x0107
      000624 12 18 33         [24] 1828 	lcall	__mulint
      000627 AE 82            [24] 1829 	mov	r6,dpl
      000629 AF 83            [24] 1830 	mov	r7,dph
      00062B EE               [12] 1831 	mov	a,r6
      00062C 24 00            [12] 1832 	add	a,#_uart_cmd_buffer
      00062E F5 0F            [12] 1833 	mov	_uart_cmd_sloc0_1_0,a
      000630 EF               [12] 1834 	mov	a,r7
      000631 34 E0            [12] 1835 	addc	a,#(_uart_cmd_buffer >> 8)
      000633 F5 10            [12] 1836 	mov	(_uart_cmd_sloc0_1_0 + 1),a
      000635 A2 00            [12] 1837 	mov	c,_used_buffer
      000637 E4               [12] 1838 	clr	a
      000638 33               [12] 1839 	rlc	a
      000639 7D 00            [12] 1840 	mov	r5,#0x00
      00063B 25 E0            [12] 1841 	add	a,acc
      00063D FC               [12] 1842 	mov	r4,a
      00063E ED               [12] 1843 	mov	a,r5
      00063F 33               [12] 1844 	rlc	a
      000640 FD               [12] 1845 	mov	r5,a
      000641 EC               [12] 1846 	mov	a,r4
      000642 24 52            [12] 1847 	add	a,#_cmd_data_pos
      000644 FA               [12] 1848 	mov	r2,a
      000645 ED               [12] 1849 	mov	a,r5
      000646 34 E4            [12] 1850 	addc	a,#(_cmd_data_pos >> 8)
      000648 FB               [12] 1851 	mov	r3,a
      000649 8A 82            [24] 1852 	mov	dpl,r2
      00064B 8B 83            [24] 1853 	mov	dph,r3
      00064D E0               [24] 1854 	movx	a,@dptr
      00064E F8               [12] 1855 	mov	r0,a
      00064F A3               [24] 1856 	inc	dptr
      000650 E0               [24] 1857 	movx	a,@dptr
      000651 F9               [12] 1858 	mov	r1,a
      000652 74 01            [12] 1859 	mov	a,#0x01
      000654 28               [12] 1860 	add	a,r0
      000655 FE               [12] 1861 	mov	r6,a
      000656 E4               [12] 1862 	clr	a
      000657 39               [12] 1863 	addc	a,r1
      000658 FF               [12] 1864 	mov	r7,a
      000659 8A 82            [24] 1865 	mov	dpl,r2
      00065B 8B 83            [24] 1866 	mov	dph,r3
      00065D EE               [12] 1867 	mov	a,r6
      00065E F0               [24] 1868 	movx	@dptr,a
      00065F EF               [12] 1869 	mov	a,r7
      000660 A3               [24] 1870 	inc	dptr
      000661 F0               [24] 1871 	movx	@dptr,a
      000662 E8               [12] 1872 	mov	a,r0
      000663 25 0F            [12] 1873 	add	a,_uart_cmd_sloc0_1_0
      000665 F8               [12] 1874 	mov	r0,a
      000666 E9               [12] 1875 	mov	a,r1
      000667 35 10            [12] 1876 	addc	a,(_uart_cmd_sloc0_1_0 + 1)
      000669 F9               [12] 1877 	mov	r1,a
      00066A 90 E3 F2         [24] 1878 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      00066D E0               [24] 1879 	movx	a,@dptr
      00066E F5 0F            [12] 1880 	mov	_uart_cmd_sloc0_1_0,a
      000670 88 82            [24] 1881 	mov	dpl,r0
      000672 89 83            [24] 1882 	mov	dph,r1
      000674 F0               [24] 1883 	movx	@dptr,a
                                   1884 ;	main.c:211: cmd_crc[used_buffer] += rx_cur;
      000675 EC               [12] 1885 	mov	a,r4
      000676 24 4A            [12] 1886 	add	a,#_cmd_crc
      000678 F9               [12] 1887 	mov	r1,a
      000679 ED               [12] 1888 	mov	a,r5
      00067A 34 E4            [12] 1889 	addc	a,#(_cmd_crc >> 8)
      00067C FA               [12] 1890 	mov	r2,a
      00067D 89 82            [24] 1891 	mov	dpl,r1
      00067F 8A 83            [24] 1892 	mov	dph,r2
      000681 E0               [24] 1893 	movx	a,@dptr
      000682 F5 11            [12] 1894 	mov	_uart_cmd_sloc1_1_0,a
      000684 A3               [24] 1895 	inc	dptr
      000685 E0               [24] 1896 	movx	a,@dptr
      000686 F5 12            [12] 1897 	mov	(_uart_cmd_sloc1_1_0 + 1),a
      000688 75 10 00         [24] 1898 	mov	(_uart_cmd_sloc0_1_0 + 1),#0x00
      00068B A8 0F            [24] 1899 	mov	r0,_uart_cmd_sloc0_1_0
      00068D AB 10            [24] 1900 	mov	r3,(_uart_cmd_sloc0_1_0 + 1)
      00068F E8               [12] 1901 	mov	a,r0
      000690 25 11            [12] 1902 	add	a,_uart_cmd_sloc1_1_0
      000692 F8               [12] 1903 	mov	r0,a
      000693 EB               [12] 1904 	mov	a,r3
      000694 35 12            [12] 1905 	addc	a,(_uart_cmd_sloc1_1_0 + 1)
      000696 FB               [12] 1906 	mov	r3,a
      000697 89 82            [24] 1907 	mov	dpl,r1
      000699 8A 83            [24] 1908 	mov	dph,r2
      00069B E8               [12] 1909 	mov	a,r0
      00069C F0               [24] 1910 	movx	@dptr,a
      00069D EB               [12] 1911 	mov	a,r3
      00069E A3               [24] 1912 	inc	dptr
      00069F F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	main.c:212: if (cmd_data_pos[used_buffer] >= data_len[used_buffer])
      0006A0 EC               [12] 1915 	mov	a,r4
      0006A1 24 40            [12] 1916 	add	a,#_data_len
      0006A3 F5 82            [12] 1917 	mov	dpl,a
      0006A5 ED               [12] 1918 	mov	a,r5
      0006A6 34 E4            [12] 1919 	addc	a,#(_data_len >> 8)
      0006A8 F5 83            [12] 1920 	mov	dph,a
      0006AA E0               [24] 1921 	movx	a,@dptr
      0006AB FC               [12] 1922 	mov	r4,a
      0006AC A3               [24] 1923 	inc	dptr
      0006AD E0               [24] 1924 	movx	a,@dptr
      0006AE FD               [12] 1925 	mov	r5,a
      0006AF C3               [12] 1926 	clr	c
      0006B0 EE               [12] 1927 	mov	a,r6
      0006B1 9C               [12] 1928 	subb	a,r4
      0006B2 EF               [12] 1929 	mov	a,r7
      0006B3 9D               [12] 1930 	subb	a,r5
      0006B4 50 01            [24] 1931 	jnc	00148$
      0006B6 22               [24] 1932 	ret
      0006B7                       1933 00148$:
                                   1934 ;	main.c:214: cmd_pos++;
      0006B7 90 E4 48         [24] 1935 	mov	dptr,#_cmd_pos
      0006BA E0               [24] 1936 	movx	a,@dptr
      0006BB 24 01            [12] 1937 	add	a,#0x01
      0006BD F0               [24] 1938 	movx	@dptr,a
      0006BE A3               [24] 1939 	inc	dptr
      0006BF E0               [24] 1940 	movx	a,@dptr
      0006C0 34 00            [12] 1941 	addc	a,#0x00
      0006C2 F0               [24] 1942 	movx	@dptr,a
                                   1943 ;	main.c:216: break;
      0006C3 22               [24] 1944 	ret
                                   1945 ;	main.c:217: case 5:
      0006C4                       1946 00113$:
                                   1947 ;	main.c:218: endpoint[used_buffer] = rx_cur << 8;
      0006C4 A2 00            [12] 1948 	mov	c,_used_buffer
      0006C6 E4               [12] 1949 	clr	a
      0006C7 33               [12] 1950 	rlc	a
      0006C8 7F 00            [12] 1951 	mov	r7,#0x00
      0006CA 25 E0            [12] 1952 	add	a,acc
      0006CC FE               [12] 1953 	mov	r6,a
      0006CD EF               [12] 1954 	mov	a,r7
      0006CE 33               [12] 1955 	rlc	a
      0006CF FF               [12] 1956 	mov	r7,a
      0006D0 EE               [12] 1957 	mov	a,r6
      0006D1 24 5A            [12] 1958 	add	a,#_endpoint
      0006D3 FC               [12] 1959 	mov	r4,a
      0006D4 EF               [12] 1960 	mov	a,r7
      0006D5 34 E4            [12] 1961 	addc	a,#(_endpoint >> 8)
      0006D7 FD               [12] 1962 	mov	r5,a
      0006D8 90 E3 F2         [24] 1963 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      0006DB E0               [24] 1964 	movx	a,@dptr
      0006DC FB               [12] 1965 	mov	r3,a
      0006DD 7A 00            [12] 1966 	mov	r2,#0x00
      0006DF 8B 01            [24] 1967 	mov	ar1,r3
      0006E1 78 00            [12] 1968 	mov	r0,#0x00
      0006E3 8C 82            [24] 1969 	mov	dpl,r4
      0006E5 8D 83            [24] 1970 	mov	dph,r5
      0006E7 E8               [12] 1971 	mov	a,r0
      0006E8 F0               [24] 1972 	movx	@dptr,a
      0006E9 E9               [12] 1973 	mov	a,r1
      0006EA A3               [24] 1974 	inc	dptr
      0006EB F0               [24] 1975 	movx	@dptr,a
                                   1976 ;	main.c:219: cmd_crc[used_buffer] += rx_cur;
      0006EC EE               [12] 1977 	mov	a,r6
      0006ED 24 4A            [12] 1978 	add	a,#_cmd_crc
      0006EF FE               [12] 1979 	mov	r6,a
      0006F0 EF               [12] 1980 	mov	a,r7
      0006F1 34 E4            [12] 1981 	addc	a,#(_cmd_crc >> 8)
      0006F3 FF               [12] 1982 	mov	r7,a
      0006F4 8E 82            [24] 1983 	mov	dpl,r6
      0006F6 8F 83            [24] 1984 	mov	dph,r7
      0006F8 E0               [24] 1985 	movx	a,@dptr
      0006F9 FC               [12] 1986 	mov	r4,a
      0006FA A3               [24] 1987 	inc	dptr
      0006FB E0               [24] 1988 	movx	a,@dptr
      0006FC FD               [12] 1989 	mov	r5,a
      0006FD EB               [12] 1990 	mov	a,r3
      0006FE 2C               [12] 1991 	add	a,r4
      0006FF FC               [12] 1992 	mov	r4,a
      000700 EA               [12] 1993 	mov	a,r2
      000701 3D               [12] 1994 	addc	a,r5
      000702 FD               [12] 1995 	mov	r5,a
      000703 8E 82            [24] 1996 	mov	dpl,r6
      000705 8F 83            [24] 1997 	mov	dph,r7
      000707 EC               [12] 1998 	mov	a,r4
      000708 F0               [24] 1999 	movx	@dptr,a
      000709 ED               [12] 2000 	mov	a,r5
      00070A A3               [24] 2001 	inc	dptr
      00070B F0               [24] 2002 	movx	@dptr,a
                                   2003 ;	main.c:220: cmd_pos++;
      00070C 90 E4 48         [24] 2004 	mov	dptr,#_cmd_pos
      00070F E0               [24] 2005 	movx	a,@dptr
      000710 24 01            [12] 2006 	add	a,#0x01
      000712 F0               [24] 2007 	movx	@dptr,a
      000713 A3               [24] 2008 	inc	dptr
      000714 E0               [24] 2009 	movx	a,@dptr
      000715 34 00            [12] 2010 	addc	a,#0x00
      000717 F0               [24] 2011 	movx	@dptr,a
                                   2012 ;	main.c:221: break;
      000718 22               [24] 2013 	ret
                                   2014 ;	main.c:222: case 6:
      000719                       2015 00114$:
                                   2016 ;	main.c:223: endpoint[used_buffer] += rx_cur;
      000719 A2 00            [12] 2017 	mov	c,_used_buffer
      00071B E4               [12] 2018 	clr	a
      00071C 33               [12] 2019 	rlc	a
      00071D 7F 00            [12] 2020 	mov	r7,#0x00
      00071F 25 E0            [12] 2021 	add	a,acc
      000721 FE               [12] 2022 	mov	r6,a
      000722 EF               [12] 2023 	mov	a,r7
      000723 33               [12] 2024 	rlc	a
      000724 FF               [12] 2025 	mov	r7,a
      000725 EE               [12] 2026 	mov	a,r6
      000726 24 5A            [12] 2027 	add	a,#_endpoint
      000728 FC               [12] 2028 	mov	r4,a
      000729 EF               [12] 2029 	mov	a,r7
      00072A 34 E4            [12] 2030 	addc	a,#(_endpoint >> 8)
      00072C FD               [12] 2031 	mov	r5,a
      00072D 8C 82            [24] 2032 	mov	dpl,r4
      00072F 8D 83            [24] 2033 	mov	dph,r5
      000731 E0               [24] 2034 	movx	a,@dptr
      000732 FA               [12] 2035 	mov	r2,a
      000733 A3               [24] 2036 	inc	dptr
      000734 E0               [24] 2037 	movx	a,@dptr
      000735 FB               [12] 2038 	mov	r3,a
      000736 90 E3 F2         [24] 2039 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      000739 E0               [24] 2040 	movx	a,@dptr
      00073A F8               [12] 2041 	mov	r0,a
      00073B 79 00            [12] 2042 	mov	r1,#0x00
      00073D 2A               [12] 2043 	add	a,r2
      00073E FA               [12] 2044 	mov	r2,a
      00073F E9               [12] 2045 	mov	a,r1
      000740 3B               [12] 2046 	addc	a,r3
      000741 FB               [12] 2047 	mov	r3,a
      000742 8C 82            [24] 2048 	mov	dpl,r4
      000744 8D 83            [24] 2049 	mov	dph,r5
      000746 EA               [12] 2050 	mov	a,r2
      000747 F0               [24] 2051 	movx	@dptr,a
      000748 EB               [12] 2052 	mov	a,r3
      000749 A3               [24] 2053 	inc	dptr
      00074A F0               [24] 2054 	movx	@dptr,a
                                   2055 ;	main.c:224: cmd_crc[used_buffer] += rx_cur;
      00074B EE               [12] 2056 	mov	a,r6
      00074C 24 4A            [12] 2057 	add	a,#_cmd_crc
      00074E FE               [12] 2058 	mov	r6,a
      00074F EF               [12] 2059 	mov	a,r7
      000750 34 E4            [12] 2060 	addc	a,#(_cmd_crc >> 8)
      000752 FF               [12] 2061 	mov	r7,a
      000753 8E 82            [24] 2062 	mov	dpl,r6
      000755 8F 83            [24] 2063 	mov	dph,r7
      000757 E0               [24] 2064 	movx	a,@dptr
      000758 FC               [12] 2065 	mov	r4,a
      000759 A3               [24] 2066 	inc	dptr
      00075A E0               [24] 2067 	movx	a,@dptr
      00075B FD               [12] 2068 	mov	r5,a
      00075C E8               [12] 2069 	mov	a,r0
      00075D 2C               [12] 2070 	add	a,r4
      00075E F8               [12] 2071 	mov	r0,a
      00075F E9               [12] 2072 	mov	a,r1
      000760 3D               [12] 2073 	addc	a,r5
      000761 F9               [12] 2074 	mov	r1,a
      000762 8E 82            [24] 2075 	mov	dpl,r6
      000764 8F 83            [24] 2076 	mov	dph,r7
      000766 E8               [12] 2077 	mov	a,r0
      000767 F0               [24] 2078 	movx	@dptr,a
      000768 E9               [12] 2079 	mov	a,r1
      000769 A3               [24] 2080 	inc	dptr
      00076A F0               [24] 2081 	movx	@dptr,a
                                   2082 ;	main.c:225: cmd_pos++;
      00076B 90 E4 48         [24] 2083 	mov	dptr,#_cmd_pos
      00076E E0               [24] 2084 	movx	a,@dptr
      00076F 24 01            [12] 2085 	add	a,#0x01
      000771 F0               [24] 2086 	movx	@dptr,a
      000772 A3               [24] 2087 	inc	dptr
      000773 E0               [24] 2088 	movx	a,@dptr
      000774 34 00            [12] 2089 	addc	a,#0x00
      000776 F0               [24] 2090 	movx	@dptr,a
                                   2091 ;	main.c:226: break;
      000777 22               [24] 2092 	ret
                                   2093 ;	main.c:227: case 7:
      000778                       2094 00115$:
                                   2095 ;	main.c:228: cmd_crc_in[used_buffer] = rx_cur << 8;
      000778 A2 00            [12] 2096 	mov	c,_used_buffer
      00077A E4               [12] 2097 	clr	a
      00077B 33               [12] 2098 	rlc	a
      00077C 7F 00            [12] 2099 	mov	r7,#0x00
      00077E 25 E0            [12] 2100 	add	a,acc
      000780 FE               [12] 2101 	mov	r6,a
      000781 EF               [12] 2102 	mov	a,r7
      000782 33               [12] 2103 	rlc	a
      000783 FF               [12] 2104 	mov	r7,a
      000784 EE               [12] 2105 	mov	a,r6
      000785 24 4E            [12] 2106 	add	a,#_cmd_crc_in
      000787 FE               [12] 2107 	mov	r6,a
      000788 EF               [12] 2108 	mov	a,r7
      000789 34 E4            [12] 2109 	addc	a,#(_cmd_crc_in >> 8)
      00078B FF               [12] 2110 	mov	r7,a
      00078C 90 E3 F2         [24] 2111 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      00078F E0               [24] 2112 	movx	a,@dptr
      000790 FC               [12] 2113 	mov	r4,a
      000791 7D 00            [12] 2114 	mov	r5,#0x00
      000793 8E 82            [24] 2115 	mov	dpl,r6
      000795 8F 83            [24] 2116 	mov	dph,r7
      000797 ED               [12] 2117 	mov	a,r5
      000798 F0               [24] 2118 	movx	@dptr,a
      000799 EC               [12] 2119 	mov	a,r4
      00079A A3               [24] 2120 	inc	dptr
      00079B F0               [24] 2121 	movx	@dptr,a
                                   2122 ;	main.c:229: cmd_pos++;
      00079C 90 E4 48         [24] 2123 	mov	dptr,#_cmd_pos
      00079F E0               [24] 2124 	movx	a,@dptr
      0007A0 24 01            [12] 2125 	add	a,#0x01
      0007A2 F0               [24] 2126 	movx	@dptr,a
      0007A3 A3               [24] 2127 	inc	dptr
      0007A4 E0               [24] 2128 	movx	a,@dptr
      0007A5 34 00            [12] 2129 	addc	a,#0x00
      0007A7 F0               [24] 2130 	movx	@dptr,a
                                   2131 ;	main.c:230: break;
                                   2132 ;	main.c:231: case 8:
      0007A8 22               [24] 2133 	ret
      0007A9                       2134 00116$:
                                   2135 ;	main.c:232: if ((cmd_crc_in[used_buffer] | rx_cur) == cmd_crc[used_buffer])
      0007A9 A2 00            [12] 2136 	mov	c,_used_buffer
      0007AB E4               [12] 2137 	clr	a
      0007AC 33               [12] 2138 	rlc	a
      0007AD 7F 00            [12] 2139 	mov	r7,#0x00
      0007AF 25 E0            [12] 2140 	add	a,acc
      0007B1 FE               [12] 2141 	mov	r6,a
      0007B2 EF               [12] 2142 	mov	a,r7
      0007B3 33               [12] 2143 	rlc	a
      0007B4 FF               [12] 2144 	mov	r7,a
      0007B5 EE               [12] 2145 	mov	a,r6
      0007B6 24 4E            [12] 2146 	add	a,#_cmd_crc_in
      0007B8 F5 82            [12] 2147 	mov	dpl,a
      0007BA EF               [12] 2148 	mov	a,r7
      0007BB 34 E4            [12] 2149 	addc	a,#(_cmd_crc_in >> 8)
      0007BD F5 83            [12] 2150 	mov	dph,a
      0007BF E0               [24] 2151 	movx	a,@dptr
      0007C0 FC               [12] 2152 	mov	r4,a
      0007C1 A3               [24] 2153 	inc	dptr
      0007C2 E0               [24] 2154 	movx	a,@dptr
      0007C3 FD               [12] 2155 	mov	r5,a
      0007C4 90 E3 F2         [24] 2156 	mov	dptr,#_uart_cmd_rx_cur_65536_77
      0007C7 E0               [24] 2157 	movx	a,@dptr
      0007C8 7A 00            [12] 2158 	mov	r2,#0x00
      0007CA 42 04            [12] 2159 	orl	ar4,a
      0007CC EA               [12] 2160 	mov	a,r2
      0007CD 42 05            [12] 2161 	orl	ar5,a
      0007CF EE               [12] 2162 	mov	a,r6
      0007D0 24 4A            [12] 2163 	add	a,#_cmd_crc
      0007D2 F5 82            [12] 2164 	mov	dpl,a
      0007D4 EF               [12] 2165 	mov	a,r7
      0007D5 34 E4            [12] 2166 	addc	a,#(_cmd_crc >> 8)
      0007D7 F5 83            [12] 2167 	mov	dph,a
      0007D9 E0               [24] 2168 	movx	a,@dptr
      0007DA FE               [12] 2169 	mov	r6,a
      0007DB A3               [24] 2170 	inc	dptr
      0007DC E0               [24] 2171 	movx	a,@dptr
      0007DD FF               [12] 2172 	mov	r7,a
      0007DE EC               [12] 2173 	mov	a,r4
      0007DF B5 06 08         [24] 2174 	cjne	a,ar6,00118$
      0007E2 ED               [12] 2175 	mov	a,r5
      0007E3 B5 07 04         [24] 2176 	cjne	a,ar7,00118$
                                   2177 ;	main.c:234: used_buffer = !used_buffer;
      0007E6 B2 00            [12] 2178 	cpl	_used_buffer
                                   2179 ;	main.c:235: new_cmd = 1;
                                   2180 ;	assignBit
      0007E8 D2 01            [12] 2181 	setb	_new_cmd
      0007EA                       2182 00118$:
                                   2183 ;	main.c:237: cmd_pos = 0;
      0007EA 90 E4 48         [24] 2184 	mov	dptr,#_cmd_pos
      0007ED E4               [12] 2185 	clr	a
      0007EE F0               [24] 2186 	movx	@dptr,a
      0007EF A3               [24] 2187 	inc	dptr
      0007F0 F0               [24] 2188 	movx	@dptr,a
                                   2189 ;	main.c:239: }
                                   2190 ;	main.c:240: }
      0007F1 22               [24] 2191 	ret
                                   2192 ;------------------------------------------------------------
                                   2193 ;Allocation info for local variables in function 'UART_IRQ1'
                                   2194 ;------------------------------------------------------------
                                   2195 ;	main.c:242: void UART_IRQ1(void) __interrupt(0)
                                   2196 ;	-----------------------------------------
                                   2197 ;	 function UART_IRQ1
                                   2198 ;	-----------------------------------------
      0007F2                       2199 _UART_IRQ1:
      0007F2 C0 22            [24] 2200 	push	bits
      0007F4 C0 E0            [24] 2201 	push	acc
      0007F6 C0 F0            [24] 2202 	push	b
      0007F8 C0 82            [24] 2203 	push	dpl
      0007FA C0 83            [24] 2204 	push	dph
      0007FC C0 07            [24] 2205 	push	(0+7)
      0007FE C0 06            [24] 2206 	push	(0+6)
      000800 C0 05            [24] 2207 	push	(0+5)
      000802 C0 04            [24] 2208 	push	(0+4)
      000804 C0 03            [24] 2209 	push	(0+3)
      000806 C0 02            [24] 2210 	push	(0+2)
      000808 C0 01            [24] 2211 	push	(0+1)
      00080A C0 00            [24] 2212 	push	(0+0)
      00080C C0 D0            [24] 2213 	push	psw
      00080E 75 D0 00         [24] 2214 	mov	psw,#0x00
                                   2215 ;	main.c:244: P1_0 = 1;
                                   2216 ;	assignBit
      000811 D2 90            [12] 2217 	setb	_P1_0
                                   2218 ;	main.c:245: if (UARTSTA & 1)
      000813 E5 98            [12] 2219 	mov	a,_UARTSTA
      000815 30 E0 09         [24] 2220 	jnb	acc.0,00102$
                                   2221 ;	main.c:247: UARTSTA &= 0xfe;
      000818 53 98 FE         [24] 2222 	anl	_UARTSTA,#0xfe
                                   2223 ;	main.c:248: uart_cmd(UARTBUF);
      00081B 85 99 82         [24] 2224 	mov	dpl,_UARTBUF
      00081E 12 04 82         [24] 2225 	lcall	_uart_cmd
      000821                       2226 00102$:
                                   2227 ;	main.c:250: if (UARTSTA & 2)
      000821 E5 98            [12] 2228 	mov	a,_UARTSTA
      000823 30 E1 3B         [24] 2229 	jnb	acc.1,00109$
                                   2230 ;	main.c:252: UARTSTA &= 0xfd;
      000826 53 98 FD         [24] 2231 	anl	_UARTSTA,#0xfd
                                   2232 ;	main.c:253: if (out_enable)
      000829 30 02 33         [24] 2233 	jnb	_out_enable,00107$
                                   2234 ;	main.c:255: if (out_posi <= out_end_len)
      00082C 90 E4 5E         [24] 2235 	mov	dptr,#_out_posi
      00082F E0               [24] 2236 	movx	a,@dptr
      000830 FE               [12] 2237 	mov	r6,a
      000831 A3               [24] 2238 	inc	dptr
      000832 E0               [24] 2239 	movx	a,@dptr
      000833 FF               [12] 2240 	mov	r7,a
      000834 90 E4 60         [24] 2241 	mov	dptr,#_out_end_len
      000837 E0               [24] 2242 	movx	a,@dptr
      000838 FC               [12] 2243 	mov	r4,a
      000839 A3               [24] 2244 	inc	dptr
      00083A E0               [24] 2245 	movx	a,@dptr
      00083B FD               [12] 2246 	mov	r5,a
      00083C C3               [12] 2247 	clr	c
      00083D EC               [12] 2248 	mov	a,r4
      00083E 9E               [12] 2249 	subb	a,r6
      00083F ED               [12] 2250 	mov	a,r5
      000840 9F               [12] 2251 	subb	a,r7
      000841 40 1A            [24] 2252 	jc	00104$
                                   2253 ;	main.c:257: UARTBUF = uart_cmd_out_buffer[out_posi++];
      000843 90 E4 5E         [24] 2254 	mov	dptr,#_out_posi
      000846 74 01            [12] 2255 	mov	a,#0x01
      000848 2E               [12] 2256 	add	a,r6
      000849 F0               [24] 2257 	movx	@dptr,a
      00084A E4               [12] 2258 	clr	a
      00084B 3F               [12] 2259 	addc	a,r7
      00084C A3               [24] 2260 	inc	dptr
      00084D F0               [24] 2261 	movx	@dptr,a
      00084E EE               [12] 2262 	mov	a,r6
      00084F 24 D6            [12] 2263 	add	a,#_uart_cmd_out_buffer
      000851 F5 82            [12] 2264 	mov	dpl,a
      000853 EF               [12] 2265 	mov	a,r7
      000854 34 E2            [12] 2266 	addc	a,#(_uart_cmd_out_buffer >> 8)
      000856 F5 83            [12] 2267 	mov	dph,a
      000858 E0               [24] 2268 	movx	a,@dptr
      000859 F5 99            [12] 2269 	mov	_UARTBUF,a
      00085B 80 02            [24] 2270 	sjmp	00107$
      00085D                       2271 00104$:
                                   2272 ;	main.c:261: out_enable = 0;
                                   2273 ;	assignBit
      00085D C2 02            [12] 2274 	clr	_out_enable
      00085F                       2275 00107$:
                                   2276 ;	main.c:264: tx_free = 0;
                                   2277 ;	assignBit
      00085F C2 04            [12] 2278 	clr	_tx_free
      000861                       2279 00109$:
                                   2280 ;	main.c:266: P1_0 = 0;
                                   2281 ;	assignBit
      000861 C2 90            [12] 2282 	clr	_P1_0
                                   2283 ;	main.c:267: }
      000863 D0 D0            [24] 2284 	pop	psw
      000865 D0 00            [24] 2285 	pop	(0+0)
      000867 D0 01            [24] 2286 	pop	(0+1)
      000869 D0 02            [24] 2287 	pop	(0+2)
      00086B D0 03            [24] 2288 	pop	(0+3)
      00086D D0 04            [24] 2289 	pop	(0+4)
      00086F D0 05            [24] 2290 	pop	(0+5)
      000871 D0 06            [24] 2291 	pop	(0+6)
      000873 D0 07            [24] 2292 	pop	(0+7)
      000875 D0 83            [24] 2293 	pop	dph
      000877 D0 82            [24] 2294 	pop	dpl
      000879 D0 F0            [24] 2295 	pop	b
      00087B D0 E0            [24] 2296 	pop	acc
      00087D D0 22            [24] 2297 	pop	bits
      00087F 32               [24] 2298 	reti
                                   2299 ;------------------------------------------------------------
                                   2300 ;Allocation info for local variables in function 'main'
                                   2301 ;------------------------------------------------------------
                                   2302 ;sloc1                     Allocated with name '_main_sloc1_1_0'
                                   2303 ;sloc2                     Allocated with name '_main_sloc2_1_0'
                                   2304 ;sloc3                     Allocated with name '_main_sloc3_1_0'
                                   2305 ;sloc4                     Allocated with name '_main_sloc4_1_0'
                                   2306 ;------------------------------------------------------------
                                   2307 ;	main.c:269: void main(void)
                                   2308 ;	-----------------------------------------
                                   2309 ;	 function main
                                   2310 ;	-----------------------------------------
      000880                       2311 _main:
                                   2312 ;	main.c:271: P0CHSTA = 0x00;
      000880 75 AA 00         [24] 2313 	mov	_P0CHSTA,#0x00
                                   2314 ;	main.c:272: clockingAndIntsInit();
      000883 12 12 6A         [24] 2315 	lcall	_clockingAndIntsInit
                                   2316 ;	main.c:273: timerInit();
      000886 12 0E D5         [24] 2317 	lcall	_timerInit
                                   2318 ;	main.c:274: boardInit();
      000889 12 12 A2         [24] 2319 	lcall	_boardInit
                                   2320 ;	main.c:276: IEN_EA = 1;
                                   2321 ;	assignBit
      00088C D2 AF            [12] 2322 	setb	_IEN_EA
                                   2323 ;	main.c:278: flashRead(0xe000, &display_loaded_buffer[0], 1);
      00088E 90 E4 11         [24] 2324 	mov	dptr,#_flashRead_PARM_2
      000891 74 0E            [12] 2325 	mov	a,#_display_loaded_buffer
      000893 F0               [24] 2326 	movx	@dptr,a
      000894 74 E2            [12] 2327 	mov	a,#(_display_loaded_buffer >> 8)
      000896 A3               [24] 2328 	inc	dptr
      000897 F0               [24] 2329 	movx	@dptr,a
      000898 90 E4 13         [24] 2330 	mov	dptr,#_flashRead_PARM_3
      00089B 74 01            [12] 2331 	mov	a,#0x01
      00089D F0               [24] 2332 	movx	@dptr,a
      00089E E4               [12] 2333 	clr	a
      00089F A3               [24] 2334 	inc	dptr
      0008A0 F0               [24] 2335 	movx	@dptr,a
      0008A1 90 E0 00         [24] 2336 	mov	dptr,#0xe000
      0008A4 E4               [12] 2337 	clr	a
      0008A5 F5 F0            [12] 2338 	mov	b,a
      0008A7 12 10 F9         [24] 2339 	lcall	_flashRead
                                   2340 ;	main.c:279: if (display_loaded_buffer[0] != 0xAC)
      0008AA 90 E2 0E         [24] 2341 	mov	dptr,#_display_loaded_buffer
      0008AD E0               [24] 2342 	movx	a,@dptr
      0008AE FF               [12] 2343 	mov	r7,a
      0008AF BF AC 02         [24] 2344 	cjne	r7,#0xac,00165$
      0008B2 80 47            [24] 2345 	sjmp	00129$
      0008B4                       2346 00165$:
                                   2347 ;	main.c:281: display_loaded_buffer[3] = 0b01101000; /*number small last*/
      0008B4 90 E2 11         [24] 2348 	mov	dptr,#(_display_loaded_buffer + 0x0003)
      0008B7 74 68            [12] 2349 	mov	a,#0x68
      0008B9 F0               [24] 2350 	movx	@dptr,a
                                   2351 ;	main.c:282: display_loaded_buffer[4] = 0b11101000; /*number small after point*/
      0008BA 90 E2 12         [24] 2352 	mov	dptr,#(_display_loaded_buffer + 0x0004)
      0008BD 74 E8            [12] 2353 	mov	a,#0xe8
      0008BF F0               [24] 2354 	movx	@dptr,a
                                   2355 ;	main.c:283: display_loaded_buffer[2] = 0b11111100; /*number small before point*/
      0008C0 90 E2 10         [24] 2356 	mov	dptr,#(_display_loaded_buffer + 0x0002)
      0008C3 74 FC            [12] 2357 	mov	a,#0xfc
      0008C5 F0               [24] 2358 	movx	@dptr,a
                                   2359 ;	main.c:284: screenDraw(&display_loaded_buffer[1], 0, 0);
                                   2360 ;	assignBit
      0008C6 C2 0D            [12] 2361 	clr	_screenDraw_PARM_2
                                   2362 ;	assignBit
      0008C8 C2 0E            [12] 2363 	clr	_screenDraw_PARM_3
      0008CA 90 E2 0F         [24] 2364 	mov	dptr,#(_display_loaded_buffer + 0x0001)
      0008CD 12 13 BE         [24] 2365 	lcall	_screenDraw
                                   2366 ;	main.c:285: while (is_drawing())
      0008D0                       2367 00101$:
      0008D0 12 16 F5         [24] 2368 	lcall	_is_drawing
      0008D3 E5 82            [12] 2369 	mov	a,dpl
      0008D5 70 F9            [24] 2370 	jnz	00101$
                                   2371 ;	main.c:288: display_loaded_buffer[0] = 0xAC;
      0008D7 90 E2 0E         [24] 2372 	mov	dptr,#_display_loaded_buffer
      0008DA 74 AC            [12] 2373 	mov	a,#0xac
      0008DC F0               [24] 2374 	movx	@dptr,a
                                   2375 ;	main.c:289: flashWrite(0xe000, &display_loaded_buffer[0], 1, 1);
      0008DD 90 E4 07         [24] 2376 	mov	dptr,#_flashWrite_PARM_2
      0008E0 74 0E            [12] 2377 	mov	a,#_display_loaded_buffer
      0008E2 F0               [24] 2378 	movx	@dptr,a
      0008E3 74 E2            [12] 2379 	mov	a,#(_display_loaded_buffer >> 8)
      0008E5 A3               [24] 2380 	inc	dptr
      0008E6 F0               [24] 2381 	movx	@dptr,a
      0008E7 90 E4 09         [24] 2382 	mov	dptr,#_flashWrite_PARM_3
      0008EA 74 01            [12] 2383 	mov	a,#0x01
      0008EC F0               [24] 2384 	movx	@dptr,a
      0008ED E4               [12] 2385 	clr	a
      0008EE A3               [24] 2386 	inc	dptr
      0008EF F0               [24] 2387 	movx	@dptr,a
                                   2388 ;	assignBit
      0008F0 D2 08            [12] 2389 	setb	_flashWrite_PARM_4
      0008F2 90 E0 00         [24] 2390 	mov	dptr,#0xe000
      0008F5 E4               [12] 2391 	clr	a
      0008F6 F5 F0            [12] 2392 	mov	b,a
      0008F8 12 10 26         [24] 2393 	lcall	_flashWrite
                                   2394 ;	main.c:292: while (is_drawing() || (timerGet() - start_time < stay_awake_time))
      0008FB                       2395 00129$:
      0008FB                       2396 00120$:
      0008FB 12 16 F5         [24] 2397 	lcall	_is_drawing
      0008FE E5 82            [12] 2398 	mov	a,dpl
      000900 70 41            [24] 2399 	jnz	00121$
      000902 12 0E 71         [24] 2400 	lcall	_timerGet
      000905 AC 82            [24] 2401 	mov	r4,dpl
      000907 AD 83            [24] 2402 	mov	r5,dph
      000909 AE F0            [24] 2403 	mov	r6,b
      00090B FF               [12] 2404 	mov	r7,a
      00090C 90 E4 62         [24] 2405 	mov	dptr,#_start_time
      00090F E0               [24] 2406 	movx	a,@dptr
      000910 F8               [12] 2407 	mov	r0,a
      000911 A3               [24] 2408 	inc	dptr
      000912 E0               [24] 2409 	movx	a,@dptr
      000913 F9               [12] 2410 	mov	r1,a
      000914 A3               [24] 2411 	inc	dptr
      000915 E0               [24] 2412 	movx	a,@dptr
      000916 FA               [12] 2413 	mov	r2,a
      000917 A3               [24] 2414 	inc	dptr
      000918 E0               [24] 2415 	movx	a,@dptr
      000919 FB               [12] 2416 	mov	r3,a
      00091A EC               [12] 2417 	mov	a,r4
      00091B C3               [12] 2418 	clr	c
      00091C 98               [12] 2419 	subb	a,r0
      00091D FC               [12] 2420 	mov	r4,a
      00091E ED               [12] 2421 	mov	a,r5
      00091F 99               [12] 2422 	subb	a,r1
      000920 FD               [12] 2423 	mov	r5,a
      000921 EE               [12] 2424 	mov	a,r6
      000922 9A               [12] 2425 	subb	a,r2
      000923 FE               [12] 2426 	mov	r6,a
      000924 EF               [12] 2427 	mov	a,r7
      000925 9B               [12] 2428 	subb	a,r3
      000926 FF               [12] 2429 	mov	r7,a
      000927 90 E4 66         [24] 2430 	mov	dptr,#_stay_awake_time
      00092A E0               [24] 2431 	movx	a,@dptr
      00092B F8               [12] 2432 	mov	r0,a
      00092C A3               [24] 2433 	inc	dptr
      00092D E0               [24] 2434 	movx	a,@dptr
      00092E F9               [12] 2435 	mov	r1,a
      00092F A3               [24] 2436 	inc	dptr
      000930 E0               [24] 2437 	movx	a,@dptr
      000931 FA               [12] 2438 	mov	r2,a
      000932 A3               [24] 2439 	inc	dptr
      000933 E0               [24] 2440 	movx	a,@dptr
      000934 FB               [12] 2441 	mov	r3,a
      000935 C3               [12] 2442 	clr	c
      000936 EC               [12] 2443 	mov	a,r4
      000937 98               [12] 2444 	subb	a,r0
      000938 ED               [12] 2445 	mov	a,r5
      000939 99               [12] 2446 	subb	a,r1
      00093A EE               [12] 2447 	mov	a,r6
      00093B 9A               [12] 2448 	subb	a,r2
      00093C EF               [12] 2449 	mov	a,r7
      00093D 9B               [12] 2450 	subb	a,r3
      00093E 40 03            [24] 2451 	jc	00168$
      000940 02 00 77         [24] 2452 	ljmp	_sleep
      000943                       2453 00168$:
      000943                       2454 00121$:
                                   2455 ;	main.c:294: if (new_cmd)
                                   2456 ;	main.c:296: new_cmd = 0;
                                   2457 ;	assignBit
      000943 10 01 02         [24] 2458 	jbc	_new_cmd,00169$
      000946 80 B3            [24] 2459 	sjmp	00120$
      000948                       2460 00169$:
                                   2461 ;	main.c:297: start_time = timerGet();
      000948 12 0E 71         [24] 2462 	lcall	_timerGet
      00094B AC 82            [24] 2463 	mov	r4,dpl
      00094D AD 83            [24] 2464 	mov	r5,dph
      00094F AE F0            [24] 2465 	mov	r6,b
      000951 FF               [12] 2466 	mov	r7,a
      000952 90 E4 62         [24] 2467 	mov	dptr,#_start_time
      000955 EC               [12] 2468 	mov	a,r4
      000956 F0               [24] 2469 	movx	@dptr,a
      000957 ED               [12] 2470 	mov	a,r5
      000958 A3               [24] 2471 	inc	dptr
      000959 F0               [24] 2472 	movx	@dptr,a
      00095A EE               [12] 2473 	mov	a,r6
      00095B A3               [24] 2474 	inc	dptr
      00095C F0               [24] 2475 	movx	@dptr,a
      00095D EF               [12] 2476 	mov	a,r7
      00095E A3               [24] 2477 	inc	dptr
      00095F F0               [24] 2478 	movx	@dptr,a
                                   2479 ;	main.c:298: if (endpoint[!used_buffer] == BROADCAST_NODE_ID) // The CMD is a broadcast cmd so for every node
      000960 A2 00            [12] 2480 	mov	c,_used_buffer
      000962 B3               [12] 2481 	cpl	c
      000963 92 05            [24] 2482 	mov  _main_sloc0_1_0,c
      000965 E4               [12] 2483 	clr	a
      000966 33               [12] 2484 	rlc	a
      000967 7F 00            [12] 2485 	mov	r7,#0x00
      000969 25 E0            [12] 2486 	add	a,acc
      00096B FE               [12] 2487 	mov	r6,a
      00096C EF               [12] 2488 	mov	a,r7
      00096D 33               [12] 2489 	rlc	a
      00096E FF               [12] 2490 	mov	r7,a
      00096F EE               [12] 2491 	mov	a,r6
      000970 24 5A            [12] 2492 	add	a,#_endpoint
      000972 F5 82            [12] 2493 	mov	dpl,a
      000974 EF               [12] 2494 	mov	a,r7
      000975 34 E4            [12] 2495 	addc	a,#(_endpoint >> 8)
      000977 F5 83            [12] 2496 	mov	dph,a
      000979 E0               [24] 2497 	movx	a,@dptr
      00097A F5 16            [12] 2498 	mov	_main_sloc4_1_0,a
      00097C A3               [24] 2499 	inc	dptr
      00097D E0               [24] 2500 	movx	a,@dptr
      00097E F5 17            [12] 2501 	mov	(_main_sloc4_1_0 + 1),a
      000980 AA 16            [24] 2502 	mov	r2,_main_sloc4_1_0
      000982 AB 17            [24] 2503 	mov	r3,(_main_sloc4_1_0 + 1)
      000984 BA FF 05         [24] 2504 	cjne	r2,#0xff,00170$
      000987 BB FF 02         [24] 2505 	cjne	r3,#0xff,00170$
      00098A 80 03            [24] 2506 	sjmp	00171$
      00098C                       2507 00170$:
      00098C 02 0A 60         [24] 2508 	ljmp	00115$
      00098F                       2509 00171$:
                                   2510 ;	main.c:300: send_to_next_node(cmd_data_cmd[!used_buffer], endpoint[!used_buffer], data_len[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
      00098F EE               [12] 2511 	mov	a,r6
      000990 24 56            [12] 2512 	add	a,#_cmd_data_cmd
      000992 F5 82            [12] 2513 	mov	dpl,a
      000994 EF               [12] 2514 	mov	a,r7
      000995 34 E4            [12] 2515 	addc	a,#(_cmd_data_cmd >> 8)
      000997 F5 83            [12] 2516 	mov	dph,a
      000999 E0               [24] 2517 	movx	a,@dptr
      00099A F5 15            [12] 2518 	mov	_main_sloc3_1_0,a
      00099C EE               [12] 2519 	mov	a,r6
      00099D 24 40            [12] 2520 	add	a,#_data_len
      00099F F5 82            [12] 2521 	mov	dpl,a
      0009A1 EF               [12] 2522 	mov	a,r7
      0009A2 34 E4            [12] 2523 	addc	a,#(_data_len >> 8)
      0009A4 F5 83            [12] 2524 	mov	dph,a
      0009A6 E0               [24] 2525 	movx	a,@dptr
      0009A7 F5 13            [12] 2526 	mov	_main_sloc1_1_0,a
      0009A9 EE               [12] 2527 	mov	a,r6
      0009AA 24 44            [12] 2528 	add	a,#_cmd_len
      0009AC F5 82            [12] 2529 	mov	dpl,a
      0009AE EF               [12] 2530 	mov	a,r7
      0009AF 34 E4            [12] 2531 	addc	a,#(_cmd_len >> 8)
      0009B1 F5 83            [12] 2532 	mov	dph,a
      0009B3 E0               [24] 2533 	movx	a,@dptr
      0009B4 F5 14            [12] 2534 	mov	_main_sloc2_1_0,a
      0009B6 90 E4 3A         [24] 2535 	mov	dptr,#__mulint_PARM_2
      0009B9 A2 05            [12] 2536 	mov	c,_main_sloc0_1_0
      0009BB E4               [12] 2537 	clr	a
      0009BC 33               [12] 2538 	rlc	a
      0009BD F0               [24] 2539 	movx	@dptr,a
      0009BE E4               [12] 2540 	clr	a
      0009BF A3               [24] 2541 	inc	dptr
      0009C0 F0               [24] 2542 	movx	@dptr,a
      0009C1 90 01 07         [24] 2543 	mov	dptr,#0x0107
      0009C4 12 18 33         [24] 2544 	lcall	__mulint
      0009C7 A8 82            [24] 2545 	mov	r0,dpl
      0009C9 A9 83            [24] 2546 	mov	r1,dph
      0009CB E8               [12] 2547 	mov	a,r0
      0009CC 24 00            [12] 2548 	add	a,#_uart_cmd_buffer
      0009CE F8               [12] 2549 	mov	r0,a
      0009CF E9               [12] 2550 	mov	a,r1
      0009D0 34 E0            [12] 2551 	addc	a,#(_uart_cmd_buffer >> 8)
      0009D2 F9               [12] 2552 	mov	r1,a
      0009D3 7D 00            [12] 2553 	mov	r5,#0x00
      0009D5 90 E3 E7         [24] 2554 	mov	dptr,#_send_to_next_node_PARM_2
      0009D8 E5 16            [12] 2555 	mov	a,_main_sloc4_1_0
      0009DA F0               [24] 2556 	movx	@dptr,a
      0009DB E5 17            [12] 2557 	mov	a,(_main_sloc4_1_0 + 1)
      0009DD A3               [24] 2558 	inc	dptr
      0009DE F0               [24] 2559 	movx	@dptr,a
      0009DF 90 E3 E9         [24] 2560 	mov	dptr,#_send_to_next_node_PARM_3
      0009E2 E5 13            [12] 2561 	mov	a,_main_sloc1_1_0
      0009E4 F0               [24] 2562 	movx	@dptr,a
      0009E5 90 E3 EA         [24] 2563 	mov	dptr,#_send_to_next_node_PARM_4
      0009E8 E5 14            [12] 2564 	mov	a,_main_sloc2_1_0
      0009EA F0               [24] 2565 	movx	@dptr,a
      0009EB 90 E3 EB         [24] 2566 	mov	dptr,#_send_to_next_node_PARM_5
      0009EE E8               [12] 2567 	mov	a,r0
      0009EF F0               [24] 2568 	movx	@dptr,a
      0009F0 E9               [12] 2569 	mov	a,r1
      0009F1 A3               [24] 2570 	inc	dptr
      0009F2 F0               [24] 2571 	movx	@dptr,a
      0009F3 ED               [12] 2572 	mov	a,r5
      0009F4 A3               [24] 2573 	inc	dptr
      0009F5 F0               [24] 2574 	movx	@dptr,a
      0009F6 85 15 82         [24] 2575 	mov	dpl,_main_sloc3_1_0
      0009F9 12 02 AC         [24] 2576 	lcall	_send_to_next_node
                                   2577 ;	main.c:301: handle_cmd(cmd_data_cmd[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
      0009FC A2 00            [12] 2578 	mov	c,_used_buffer
      0009FE B3               [12] 2579 	cpl	c
      0009FF 92 06            [24] 2580 	mov  _main_sloc5_1_0,c
      000A01 E4               [12] 2581 	clr	a
      000A02 33               [12] 2582 	rlc	a
      000A03 7D 00            [12] 2583 	mov	r5,#0x00
      000A05 25 E0            [12] 2584 	add	a,acc
      000A07 FC               [12] 2585 	mov	r4,a
      000A08 ED               [12] 2586 	mov	a,r5
      000A09 33               [12] 2587 	rlc	a
      000A0A FD               [12] 2588 	mov	r5,a
      000A0B EC               [12] 2589 	mov	a,r4
      000A0C 24 56            [12] 2590 	add	a,#_cmd_data_cmd
      000A0E F5 82            [12] 2591 	mov	dpl,a
      000A10 ED               [12] 2592 	mov	a,r5
      000A11 34 E4            [12] 2593 	addc	a,#(_cmd_data_cmd >> 8)
      000A13 F5 83            [12] 2594 	mov	dph,a
      000A15 E0               [24] 2595 	movx	a,@dptr
      000A16 F9               [12] 2596 	mov	r1,a
      000A17 EC               [12] 2597 	mov	a,r4
      000A18 24 44            [12] 2598 	add	a,#_cmd_len
      000A1A F5 82            [12] 2599 	mov	dpl,a
      000A1C ED               [12] 2600 	mov	a,r5
      000A1D 34 E4            [12] 2601 	addc	a,#(_cmd_len >> 8)
      000A1F F5 83            [12] 2602 	mov	dph,a
      000A21 E0               [24] 2603 	movx	a,@dptr
      000A22 F5 15            [12] 2604 	mov	_main_sloc3_1_0,a
      000A24 90 E4 3A         [24] 2605 	mov	dptr,#__mulint_PARM_2
      000A27 A2 06            [12] 2606 	mov	c,_main_sloc5_1_0
      000A29 E4               [12] 2607 	clr	a
      000A2A 33               [12] 2608 	rlc	a
      000A2B F0               [24] 2609 	movx	@dptr,a
      000A2C E4               [12] 2610 	clr	a
      000A2D A3               [24] 2611 	inc	dptr
      000A2E F0               [24] 2612 	movx	@dptr,a
      000A2F 90 01 07         [24] 2613 	mov	dptr,#0x0107
      000A32 C0 01            [24] 2614 	push	ar1
      000A34 12 18 33         [24] 2615 	lcall	__mulint
      000A37 A8 82            [24] 2616 	mov	r0,dpl
      000A39 AC 83            [24] 2617 	mov	r4,dph
      000A3B D0 01            [24] 2618 	pop	ar1
      000A3D E8               [12] 2619 	mov	a,r0
      000A3E 24 00            [12] 2620 	add	a,#_uart_cmd_buffer
      000A40 F8               [12] 2621 	mov	r0,a
      000A41 EC               [12] 2622 	mov	a,r4
      000A42 34 E0            [12] 2623 	addc	a,#(_uart_cmd_buffer >> 8)
      000A44 FC               [12] 2624 	mov	r4,a
      000A45 7D 00            [12] 2625 	mov	r5,#0x00
      000A47 90 E3 E2         [24] 2626 	mov	dptr,#_handle_cmd_PARM_2
      000A4A E5 15            [12] 2627 	mov	a,_main_sloc3_1_0
      000A4C F0               [24] 2628 	movx	@dptr,a
      000A4D 90 E3 E3         [24] 2629 	mov	dptr,#_handle_cmd_PARM_3
      000A50 E8               [12] 2630 	mov	a,r0
      000A51 F0               [24] 2631 	movx	@dptr,a
      000A52 EC               [12] 2632 	mov	a,r4
      000A53 A3               [24] 2633 	inc	dptr
      000A54 F0               [24] 2634 	movx	@dptr,a
      000A55 ED               [12] 2635 	mov	a,r5
      000A56 A3               [24] 2636 	inc	dptr
      000A57 F0               [24] 2637 	movx	@dptr,a
      000A58 89 82            [24] 2638 	mov	dpl,r1
      000A5A 12 01 25         [24] 2639 	lcall	_handle_cmd
      000A5D 02 08 FB         [24] 2640 	ljmp	00120$
      000A60                       2641 00115$:
                                   2642 ;	main.c:303: else if (endpoint[!used_buffer] == 0) // The CMD was meant for us
      000A60 E5 16            [12] 2643 	mov	a,_main_sloc4_1_0
      000A62 45 17            [12] 2644 	orl	a,(_main_sloc4_1_0 + 1)
      000A64 60 03            [24] 2645 	jz	00172$
      000A66 02 0B 20         [24] 2646 	ljmp	00112$
      000A69                       2647 00172$:
                                   2648 ;	main.c:305: send_to_next_node(CMD_TYPE_NODE_TX, NODE_TX_ID, data_len[!used_buffer], 0, uart_cmd_buffer[!used_buffer]);
      000A69 EE               [12] 2649 	mov	a,r6
      000A6A 24 40            [12] 2650 	add	a,#_data_len
      000A6C F5 82            [12] 2651 	mov	dpl,a
      000A6E EF               [12] 2652 	mov	a,r7
      000A6F 34 E4            [12] 2653 	addc	a,#(_data_len >> 8)
      000A71 F5 83            [12] 2654 	mov	dph,a
      000A73 E0               [24] 2655 	movx	a,@dptr
      000A74 FD               [12] 2656 	mov	r5,a
      000A75 90 E4 3A         [24] 2657 	mov	dptr,#__mulint_PARM_2
      000A78 A2 05            [12] 2658 	mov	c,_main_sloc0_1_0
      000A7A E4               [12] 2659 	clr	a
      000A7B 33               [12] 2660 	rlc	a
      000A7C F0               [24] 2661 	movx	@dptr,a
      000A7D E4               [12] 2662 	clr	a
      000A7E A3               [24] 2663 	inc	dptr
      000A7F F0               [24] 2664 	movx	@dptr,a
      000A80 90 01 07         [24] 2665 	mov	dptr,#0x0107
      000A83 C0 05            [24] 2666 	push	ar5
      000A85 12 18 33         [24] 2667 	lcall	__mulint
      000A88 A9 82            [24] 2668 	mov	r1,dpl
      000A8A AC 83            [24] 2669 	mov	r4,dph
      000A8C D0 05            [24] 2670 	pop	ar5
      000A8E E9               [12] 2671 	mov	a,r1
      000A8F 24 00            [12] 2672 	add	a,#_uart_cmd_buffer
      000A91 F9               [12] 2673 	mov	r1,a
      000A92 EC               [12] 2674 	mov	a,r4
      000A93 34 E0            [12] 2675 	addc	a,#(_uart_cmd_buffer >> 8)
      000A95 F8               [12] 2676 	mov	r0,a
      000A96 7C 00            [12] 2677 	mov	r4,#0x00
      000A98 90 E3 E7         [24] 2678 	mov	dptr,#_send_to_next_node_PARM_2
      000A9B 74 FE            [12] 2679 	mov	a,#0xfe
      000A9D F0               [24] 2680 	movx	@dptr,a
      000A9E 04               [12] 2681 	inc	a
      000A9F A3               [24] 2682 	inc	dptr
      000AA0 F0               [24] 2683 	movx	@dptr,a
      000AA1 90 E3 E9         [24] 2684 	mov	dptr,#_send_to_next_node_PARM_3
      000AA4 ED               [12] 2685 	mov	a,r5
      000AA5 F0               [24] 2686 	movx	@dptr,a
      000AA6 90 E3 EA         [24] 2687 	mov	dptr,#_send_to_next_node_PARM_4
      000AA9 E4               [12] 2688 	clr	a
      000AAA F0               [24] 2689 	movx	@dptr,a
      000AAB 90 E3 EB         [24] 2690 	mov	dptr,#_send_to_next_node_PARM_5
      000AAE E9               [12] 2691 	mov	a,r1
      000AAF F0               [24] 2692 	movx	@dptr,a
      000AB0 E8               [12] 2693 	mov	a,r0
      000AB1 A3               [24] 2694 	inc	dptr
      000AB2 F0               [24] 2695 	movx	@dptr,a
      000AB3 EC               [12] 2696 	mov	a,r4
      000AB4 A3               [24] 2697 	inc	dptr
      000AB5 F0               [24] 2698 	movx	@dptr,a
      000AB6 75 82 AA         [24] 2699 	mov	dpl,#0xaa
      000AB9 12 02 AC         [24] 2700 	lcall	_send_to_next_node
                                   2701 ;	main.c:306: handle_cmd(cmd_data_cmd[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
      000ABC A2 00            [12] 2702 	mov	c,_used_buffer
      000ABE B3               [12] 2703 	cpl	c
      000ABF 92 06            [24] 2704 	mov  _main_sloc5_1_0,c
      000AC1 E4               [12] 2705 	clr	a
      000AC2 33               [12] 2706 	rlc	a
      000AC3 7D 00            [12] 2707 	mov	r5,#0x00
      000AC5 25 E0            [12] 2708 	add	a,acc
      000AC7 FC               [12] 2709 	mov	r4,a
      000AC8 ED               [12] 2710 	mov	a,r5
      000AC9 33               [12] 2711 	rlc	a
      000ACA FD               [12] 2712 	mov	r5,a
      000ACB EC               [12] 2713 	mov	a,r4
      000ACC 24 56            [12] 2714 	add	a,#_cmd_data_cmd
      000ACE F5 82            [12] 2715 	mov	dpl,a
      000AD0 ED               [12] 2716 	mov	a,r5
      000AD1 34 E4            [12] 2717 	addc	a,#(_cmd_data_cmd >> 8)
      000AD3 F5 83            [12] 2718 	mov	dph,a
      000AD5 E0               [24] 2719 	movx	a,@dptr
      000AD6 F9               [12] 2720 	mov	r1,a
      000AD7 EC               [12] 2721 	mov	a,r4
      000AD8 24 44            [12] 2722 	add	a,#_cmd_len
      000ADA F5 82            [12] 2723 	mov	dpl,a
      000ADC ED               [12] 2724 	mov	a,r5
      000ADD 34 E4            [12] 2725 	addc	a,#(_cmd_len >> 8)
      000ADF F5 83            [12] 2726 	mov	dph,a
      000AE1 E0               [24] 2727 	movx	a,@dptr
      000AE2 F5 16            [12] 2728 	mov	_main_sloc4_1_0,a
      000AE4 90 E4 3A         [24] 2729 	mov	dptr,#__mulint_PARM_2
      000AE7 A2 06            [12] 2730 	mov	c,_main_sloc5_1_0
      000AE9 E4               [12] 2731 	clr	a
      000AEA 33               [12] 2732 	rlc	a
      000AEB F0               [24] 2733 	movx	@dptr,a
      000AEC E4               [12] 2734 	clr	a
      000AED A3               [24] 2735 	inc	dptr
      000AEE F0               [24] 2736 	movx	@dptr,a
      000AEF 90 01 07         [24] 2737 	mov	dptr,#0x0107
      000AF2 C0 01            [24] 2738 	push	ar1
      000AF4 12 18 33         [24] 2739 	lcall	__mulint
      000AF7 A8 82            [24] 2740 	mov	r0,dpl
      000AF9 AC 83            [24] 2741 	mov	r4,dph
      000AFB D0 01            [24] 2742 	pop	ar1
      000AFD E8               [12] 2743 	mov	a,r0
      000AFE 24 00            [12] 2744 	add	a,#_uart_cmd_buffer
      000B00 F8               [12] 2745 	mov	r0,a
      000B01 EC               [12] 2746 	mov	a,r4
      000B02 34 E0            [12] 2747 	addc	a,#(_uart_cmd_buffer >> 8)
      000B04 FC               [12] 2748 	mov	r4,a
      000B05 7D 00            [12] 2749 	mov	r5,#0x00
      000B07 90 E3 E2         [24] 2750 	mov	dptr,#_handle_cmd_PARM_2
      000B0A E5 16            [12] 2751 	mov	a,_main_sloc4_1_0
      000B0C F0               [24] 2752 	movx	@dptr,a
      000B0D 90 E3 E3         [24] 2753 	mov	dptr,#_handle_cmd_PARM_3
      000B10 E8               [12] 2754 	mov	a,r0
      000B11 F0               [24] 2755 	movx	@dptr,a
      000B12 EC               [12] 2756 	mov	a,r4
      000B13 A3               [24] 2757 	inc	dptr
      000B14 F0               [24] 2758 	movx	@dptr,a
      000B15 ED               [12] 2759 	mov	a,r5
      000B16 A3               [24] 2760 	inc	dptr
      000B17 F0               [24] 2761 	movx	@dptr,a
      000B18 89 82            [24] 2762 	mov	dpl,r1
      000B1A 12 01 25         [24] 2763 	lcall	_handle_cmd
      000B1D 02 08 FB         [24] 2764 	ljmp	00120$
      000B20                       2765 00112$:
                                   2766 ;	main.c:310: send_to_next_node(cmd_data_cmd[!used_buffer], endpoint[!used_buffer] - 1, data_len[!used_buffer], cmd_len[!used_buffer], uart_cmd_buffer[!used_buffer]);
      000B20 EE               [12] 2767 	mov	a,r6
      000B21 24 56            [12] 2768 	add	a,#_cmd_data_cmd
      000B23 F5 82            [12] 2769 	mov	dpl,a
      000B25 EF               [12] 2770 	mov	a,r7
      000B26 34 E4            [12] 2771 	addc	a,#(_cmd_data_cmd >> 8)
      000B28 F5 83            [12] 2772 	mov	dph,a
      000B2A E0               [24] 2773 	movx	a,@dptr
      000B2B FD               [12] 2774 	mov	r5,a
      000B2C 1A               [12] 2775 	dec	r2
      000B2D BA FF 01         [24] 2776 	cjne	r2,#0xff,00173$
      000B30 1B               [12] 2777 	dec	r3
      000B31                       2778 00173$:
      000B31 EE               [12] 2779 	mov	a,r6
      000B32 24 40            [12] 2780 	add	a,#_data_len
      000B34 F5 82            [12] 2781 	mov	dpl,a
      000B36 EF               [12] 2782 	mov	a,r7
      000B37 34 E4            [12] 2783 	addc	a,#(_data_len >> 8)
      000B39 F5 83            [12] 2784 	mov	dph,a
      000B3B E0               [24] 2785 	movx	a,@dptr
      000B3C FC               [12] 2786 	mov	r4,a
      000B3D EE               [12] 2787 	mov	a,r6
      000B3E 24 44            [12] 2788 	add	a,#_cmd_len
      000B40 F5 82            [12] 2789 	mov	dpl,a
      000B42 EF               [12] 2790 	mov	a,r7
      000B43 34 E4            [12] 2791 	addc	a,#(_cmd_len >> 8)
      000B45 F5 83            [12] 2792 	mov	dph,a
      000B47 E0               [24] 2793 	movx	a,@dptr
      000B48 FF               [12] 2794 	mov	r7,a
      000B49 90 E4 3A         [24] 2795 	mov	dptr,#__mulint_PARM_2
      000B4C A2 05            [12] 2796 	mov	c,_main_sloc0_1_0
      000B4E E4               [12] 2797 	clr	a
      000B4F 33               [12] 2798 	rlc	a
      000B50 F0               [24] 2799 	movx	@dptr,a
      000B51 E4               [12] 2800 	clr	a
      000B52 A3               [24] 2801 	inc	dptr
      000B53 F0               [24] 2802 	movx	@dptr,a
      000B54 90 01 07         [24] 2803 	mov	dptr,#0x0107
      000B57 C0 07            [24] 2804 	push	ar7
      000B59 C0 05            [24] 2805 	push	ar5
      000B5B C0 04            [24] 2806 	push	ar4
      000B5D C0 03            [24] 2807 	push	ar3
      000B5F C0 02            [24] 2808 	push	ar2
      000B61 12 18 33         [24] 2809 	lcall	__mulint
      000B64 A9 82            [24] 2810 	mov	r1,dpl
      000B66 AE 83            [24] 2811 	mov	r6,dph
      000B68 D0 02            [24] 2812 	pop	ar2
      000B6A D0 03            [24] 2813 	pop	ar3
      000B6C D0 04            [24] 2814 	pop	ar4
      000B6E D0 05            [24] 2815 	pop	ar5
      000B70 D0 07            [24] 2816 	pop	ar7
      000B72 E9               [12] 2817 	mov	a,r1
      000B73 24 00            [12] 2818 	add	a,#_uart_cmd_buffer
      000B75 F9               [12] 2819 	mov	r1,a
      000B76 EE               [12] 2820 	mov	a,r6
      000B77 34 E0            [12] 2821 	addc	a,#(_uart_cmd_buffer >> 8)
      000B79 F8               [12] 2822 	mov	r0,a
      000B7A 7E 00            [12] 2823 	mov	r6,#0x00
      000B7C 90 E3 E7         [24] 2824 	mov	dptr,#_send_to_next_node_PARM_2
      000B7F EA               [12] 2825 	mov	a,r2
      000B80 F0               [24] 2826 	movx	@dptr,a
      000B81 EB               [12] 2827 	mov	a,r3
      000B82 A3               [24] 2828 	inc	dptr
      000B83 F0               [24] 2829 	movx	@dptr,a
      000B84 90 E3 E9         [24] 2830 	mov	dptr,#_send_to_next_node_PARM_3
      000B87 EC               [12] 2831 	mov	a,r4
      000B88 F0               [24] 2832 	movx	@dptr,a
      000B89 90 E3 EA         [24] 2833 	mov	dptr,#_send_to_next_node_PARM_4
      000B8C EF               [12] 2834 	mov	a,r7
      000B8D F0               [24] 2835 	movx	@dptr,a
      000B8E 90 E3 EB         [24] 2836 	mov	dptr,#_send_to_next_node_PARM_5
      000B91 E9               [12] 2837 	mov	a,r1
      000B92 F0               [24] 2838 	movx	@dptr,a
      000B93 E8               [12] 2839 	mov	a,r0
      000B94 A3               [24] 2840 	inc	dptr
      000B95 F0               [24] 2841 	movx	@dptr,a
      000B96 EE               [12] 2842 	mov	a,r6
      000B97 A3               [24] 2843 	inc	dptr
      000B98 F0               [24] 2844 	movx	@dptr,a
      000B99 8D 82            [24] 2845 	mov	dpl,r5
      000B9B 12 02 AC         [24] 2846 	lcall	_send_to_next_node
                                   2847 ;	main.c:311: if (cmd_data_cmd[!used_buffer] == CMD_TYPE_REFRESH_PIXEL) // Special CMD so that we can use one TX for all pixels
      000B9E A2 00            [12] 2848 	mov	c,_used_buffer
      000BA0 B3               [12] 2849 	cpl	c
      000BA1 92 06            [24] 2850 	mov  _main_sloc5_1_0,c
      000BA3 E4               [12] 2851 	clr	a
      000BA4 33               [12] 2852 	rlc	a
      000BA5 7F 00            [12] 2853 	mov	r7,#0x00
      000BA7 25 E0            [12] 2854 	add	a,acc
      000BA9 FE               [12] 2855 	mov	r6,a
      000BAA EF               [12] 2856 	mov	a,r7
      000BAB 33               [12] 2857 	rlc	a
      000BAC FF               [12] 2858 	mov	r7,a
      000BAD EE               [12] 2859 	mov	a,r6
      000BAE 24 56            [12] 2860 	add	a,#_cmd_data_cmd
      000BB0 F5 82            [12] 2861 	mov	dpl,a
      000BB2 EF               [12] 2862 	mov	a,r7
      000BB3 34 E4            [12] 2863 	addc	a,#(_cmd_data_cmd >> 8)
      000BB5 F5 83            [12] 2864 	mov	dph,a
      000BB7 E0               [24] 2865 	movx	a,@dptr
      000BB8 FC               [12] 2866 	mov	r4,a
      000BB9 A3               [24] 2867 	inc	dptr
      000BBA E0               [24] 2868 	movx	a,@dptr
      000BBB FD               [12] 2869 	mov	r5,a
      000BBC BC 47 4E         [24] 2870 	cjne	r4,#0x47,00109$
      000BBF BD 00 4B         [24] 2871 	cjne	r5,#0x00,00109$
                                   2872 ;	main.c:312: make_pixel_refresh(endpoint[!used_buffer], uart_cmd_buffer[!used_buffer], 0);
      000BC2 EE               [12] 2873 	mov	a,r6
      000BC3 24 5A            [12] 2874 	add	a,#_endpoint
      000BC5 F5 82            [12] 2875 	mov	dpl,a
      000BC7 EF               [12] 2876 	mov	a,r7
      000BC8 34 E4            [12] 2877 	addc	a,#(_endpoint >> 8)
      000BCA F5 83            [12] 2878 	mov	dph,a
      000BCC E0               [24] 2879 	movx	a,@dptr
      000BCD FA               [12] 2880 	mov	r2,a
      000BCE A3               [24] 2881 	inc	dptr
      000BCF E0               [24] 2882 	movx	a,@dptr
      000BD0 FB               [12] 2883 	mov	r3,a
      000BD1 90 E4 3A         [24] 2884 	mov	dptr,#__mulint_PARM_2
      000BD4 A2 06            [12] 2885 	mov	c,_main_sloc5_1_0
      000BD6 E4               [12] 2886 	clr	a
      000BD7 33               [12] 2887 	rlc	a
      000BD8 F0               [24] 2888 	movx	@dptr,a
      000BD9 E4               [12] 2889 	clr	a
      000BDA A3               [24] 2890 	inc	dptr
      000BDB F0               [24] 2891 	movx	@dptr,a
      000BDC 90 01 07         [24] 2892 	mov	dptr,#0x0107
      000BDF C0 03            [24] 2893 	push	ar3
      000BE1 C0 02            [24] 2894 	push	ar2
      000BE3 12 18 33         [24] 2895 	lcall	__mulint
      000BE6 A8 82            [24] 2896 	mov	r0,dpl
      000BE8 A9 83            [24] 2897 	mov	r1,dph
      000BEA D0 02            [24] 2898 	pop	ar2
      000BEC D0 03            [24] 2899 	pop	ar3
      000BEE E8               [12] 2900 	mov	a,r0
      000BEF 24 00            [12] 2901 	add	a,#_uart_cmd_buffer
      000BF1 F8               [12] 2902 	mov	r0,a
      000BF2 E9               [12] 2903 	mov	a,r1
      000BF3 34 E0            [12] 2904 	addc	a,#(_uart_cmd_buffer >> 8)
      000BF5 F9               [12] 2905 	mov	r1,a
      000BF6 90 E3 DD         [24] 2906 	mov	dptr,#_make_pixel_refresh_PARM_2
      000BF9 E8               [12] 2907 	mov	a,r0
      000BFA F0               [24] 2908 	movx	@dptr,a
      000BFB E9               [12] 2909 	mov	a,r1
      000BFC A3               [24] 2910 	inc	dptr
      000BFD F0               [24] 2911 	movx	@dptr,a
      000BFE E4               [12] 2912 	clr	a
      000BFF A3               [24] 2913 	inc	dptr
      000C00 F0               [24] 2914 	movx	@dptr,a
                                   2915 ;	assignBit
      000C01 C2 03            [12] 2916 	clr	_make_pixel_refresh_PARM_3
      000C03 8A 82            [24] 2917 	mov	dpl,r2
      000C05 8B 83            [24] 2918 	mov	dph,r3
      000C07 12 00 86         [24] 2919 	lcall	_make_pixel_refresh
      000C0A 02 08 FB         [24] 2920 	ljmp	00120$
      000C0D                       2921 00109$:
                                   2922 ;	main.c:313: else if (cmd_data_cmd[!used_buffer] == CMD_TYPE_REFRESH_PIXEL_CUSTOM_LUT)
      000C0D BC 48 05         [24] 2923 	cjne	r4,#0x48,00176$
      000C10 BD 00 02         [24] 2924 	cjne	r5,#0x00,00176$
      000C13 80 03            [24] 2925 	sjmp	00177$
      000C15                       2926 00176$:
      000C15 02 08 FB         [24] 2927 	ljmp	00120$
      000C18                       2928 00177$:
                                   2929 ;	main.c:314: make_pixel_refresh(endpoint[!used_buffer], uart_cmd_buffer[!used_buffer], 1);
      000C18 EE               [12] 2930 	mov	a,r6
      000C19 24 5A            [12] 2931 	add	a,#_endpoint
      000C1B F5 82            [12] 2932 	mov	dpl,a
      000C1D EF               [12] 2933 	mov	a,r7
      000C1E 34 E4            [12] 2934 	addc	a,#(_endpoint >> 8)
      000C20 F5 83            [12] 2935 	mov	dph,a
      000C22 E0               [24] 2936 	movx	a,@dptr
      000C23 FE               [12] 2937 	mov	r6,a
      000C24 A3               [24] 2938 	inc	dptr
      000C25 E0               [24] 2939 	movx	a,@dptr
      000C26 FF               [12] 2940 	mov	r7,a
      000C27 90 E4 3A         [24] 2941 	mov	dptr,#__mulint_PARM_2
      000C2A A2 06            [12] 2942 	mov	c,_main_sloc5_1_0
      000C2C E4               [12] 2943 	clr	a
      000C2D 33               [12] 2944 	rlc	a
      000C2E F0               [24] 2945 	movx	@dptr,a
      000C2F E4               [12] 2946 	clr	a
      000C30 A3               [24] 2947 	inc	dptr
      000C31 F0               [24] 2948 	movx	@dptr,a
      000C32 90 01 07         [24] 2949 	mov	dptr,#0x0107
      000C35 C0 07            [24] 2950 	push	ar7
      000C37 C0 06            [24] 2951 	push	ar6
      000C39 12 18 33         [24] 2952 	lcall	__mulint
      000C3C AC 82            [24] 2953 	mov	r4,dpl
      000C3E AD 83            [24] 2954 	mov	r5,dph
      000C40 D0 06            [24] 2955 	pop	ar6
      000C42 D0 07            [24] 2956 	pop	ar7
      000C44 EC               [12] 2957 	mov	a,r4
      000C45 24 00            [12] 2958 	add	a,#_uart_cmd_buffer
      000C47 FC               [12] 2959 	mov	r4,a
      000C48 ED               [12] 2960 	mov	a,r5
      000C49 34 E0            [12] 2961 	addc	a,#(_uart_cmd_buffer >> 8)
      000C4B FD               [12] 2962 	mov	r5,a
      000C4C 90 E3 DD         [24] 2963 	mov	dptr,#_make_pixel_refresh_PARM_2
      000C4F EC               [12] 2964 	mov	a,r4
      000C50 F0               [24] 2965 	movx	@dptr,a
      000C51 ED               [12] 2966 	mov	a,r5
      000C52 A3               [24] 2967 	inc	dptr
      000C53 F0               [24] 2968 	movx	@dptr,a
      000C54 E4               [12] 2969 	clr	a
      000C55 A3               [24] 2970 	inc	dptr
      000C56 F0               [24] 2971 	movx	@dptr,a
                                   2972 ;	assignBit
      000C57 D2 03            [12] 2973 	setb	_make_pixel_refresh_PARM_3
      000C59 8E 82            [24] 2974 	mov	dpl,r6
      000C5B 8F 83            [24] 2975 	mov	dph,r7
      000C5D 12 00 86         [24] 2976 	lcall	_make_pixel_refresh
                                   2977 ;	main.c:318: sleep();
                                   2978 ;	main.c:319: }
      000C60 02 08 FB         [24] 2979 	ljmp	00120$
                                   2980 	.area CSEG    (CODE)
                                   2981 	.area CONST   (CODE)
                                   2982 	.area XINIT   (CODE)
      0018DF                       2983 __xinit__data_len:
      0018DF 00 00                 2984 	.byte #0x00, #0x00	; 0
      0018E1 00 00                 2985 	.byte #0x00, #0x00	; 0
      0018E3                       2986 __xinit__cmd_len:
      0018E3 00 00                 2987 	.byte #0x00, #0x00	; 0
      0018E5 00 00                 2988 	.byte #0x00, #0x00	; 0
      0018E7                       2989 __xinit__cmd_pos:
      0018E7 00 00                 2990 	.byte #0x00, #0x00	; 0
      0018E9                       2991 __xinit__cmd_crc:
      0018E9 00 00                 2992 	.byte #0x00, #0x00	; 0
      0018EB 00 00                 2993 	.byte #0x00, #0x00	; 0
      0018ED                       2994 __xinit__cmd_crc_in:
      0018ED 00 00                 2995 	.byte #0x00, #0x00	; 0
      0018EF 00 00                 2996 	.byte #0x00, #0x00	; 0
      0018F1                       2997 __xinit__cmd_data_pos:
      0018F1 00 00                 2998 	.byte #0x00, #0x00	; 0
      0018F3 00 00                 2999 	.byte #0x00, #0x00	; 0
      0018F5                       3000 __xinit__cmd_data_cmd:
      0018F5 00 00                 3001 	.byte #0x00, #0x00	; 0
      0018F7 00 00                 3002 	.byte #0x00, #0x00	; 0
      0018F9                       3003 __xinit__endpoint:
      0018F9 00 00                 3004 	.byte #0x00, #0x00	; 0
      0018FB 00 00                 3005 	.byte #0x00, #0x00	; 0
      0018FD                       3006 __xinit__out_posi:
      0018FD 00 00                 3007 	.byte #0x00, #0x00	; 0
      0018FF                       3008 __xinit__out_end_len:
      0018FF 00 00                 3009 	.byte #0x00, #0x00	; 0
      001901                       3010 __xinit__start_time:
      001901 00 00 00 00           3011 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      001905                       3012 __xinit__stay_awake_time:
      001905 D5 08 02 00           3013 	.byte #0xd5, #0x08, #0x02, #0x00	; 133333
                                   3014 	.area CABS    (ABS,CODE)
