                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.1 #12107 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module screenSegmented
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _spiByte
                                     12 	.globl _timerDelay
                                     13 	.globl _timerGet
                                     14 	.globl _UART_TXE
                                     15 	.globl _UART_RXF
                                     16 	.globl _IEN_EA
                                     17 	.globl _IEN_RF2
                                     18 	.globl _IEN_RF1
                                     19 	.globl _IEN_TMR1
                                     20 	.globl _IEN_TMR0
                                     21 	.globl _IEN_UART0
                                     22 	.globl _P2_7
                                     23 	.globl _P2_6
                                     24 	.globl _P2_5
                                     25 	.globl _P2_4
                                     26 	.globl _P2_3
                                     27 	.globl _P2_2
                                     28 	.globl _P2_1
                                     29 	.globl _P2_0
                                     30 	.globl _P1_7
                                     31 	.globl _P1_6
                                     32 	.globl _P1_5
                                     33 	.globl _P1_4
                                     34 	.globl _P1_3
                                     35 	.globl _P1_2
                                     36 	.globl _P1_1
                                     37 	.globl _P1_0
                                     38 	.globl _P0_7
                                     39 	.globl _P0_6
                                     40 	.globl _P0_5
                                     41 	.globl _P0_4
                                     42 	.globl _P0_3
                                     43 	.globl _P0_2
                                     44 	.globl _P0_1
                                     45 	.globl _P0_0
                                     46 	.globl _CFGPAGE
                                     47 	.globl _TCON2
                                     48 	.globl _SETTINGS
                                     49 	.globl _TRIGGER
                                     50 	.globl _UNK_C1
                                     51 	.globl _RADIO_GOTLEN
                                     52 	.globl _RADIO_INITSEQ3
                                     53 	.globl _RADIO_RXLEN
                                     54 	.globl _RADIO_RXPTRH
                                     55 	.globl _RADIO_RXPTRL
                                     56 	.globl _RADIO_INITSEQ5
                                     57 	.globl _RADIO_INITSEQ4
                                     58 	.globl _RADIO_INITSEQ0
                                     59 	.globl _RADIO_TXLEN
                                     60 	.globl _RADIO_INITSEQ2
                                     61 	.globl _RADIO_INITSEQ1
                                     62 	.globl _RADIO_TXPTRH
                                     63 	.globl _RADIO_TXPTRL
                                     64 	.globl _TEMPCAL6
                                     65 	.globl _TEMPCAL5
                                     66 	.globl _TEMPCAL4
                                     67 	.globl _TEMPCAL3
                                     68 	.globl _TEMPRETL
                                     69 	.globl _TEMPRETH
                                     70 	.globl _TEMPCFG
                                     71 	.globl _TEMPCAL2
                                     72 	.globl _TEMPCAL1
                                     73 	.globl _FWRTHREE
                                     74 	.globl _FWRLENH
                                     75 	.globl _FWRLENL
                                     76 	.globl _FWRDSTH
                                     77 	.globl _FWRDSTL
                                     78 	.globl _FWRSRCH
                                     79 	.globl _FWRSRCL
                                     80 	.globl _FPGNO
                                     81 	.globl _T1
                                     82 	.globl _T0
                                     83 	.globl _TH1
                                     84 	.globl _TH0
                                     85 	.globl _TL1
                                     86 	.globl _TL0
                                     87 	.globl _TMOD
                                     88 	.globl _TCON
                                     89 	.globl _UARTBRGH
                                     90 	.globl _UARTBRGL
                                     91 	.globl _UARTBUF
                                     92 	.globl _UARTSTA
                                     93 	.globl _I2CUNKNOWN
                                     94 	.globl _I2CSPEED
                                     95 	.globl _I2CCTL
                                     96 	.globl _I2CBUF
                                     97 	.globl _I2CSTATE
                                     98 	.globl _SPIRX
                                     99 	.globl _SPITX
                                    100 	.globl _SPIENA
                                    101 	.globl _SPICFG
                                    102 	.globl _SPIUNKNOWN
                                    103 	.globl _WDTCONF
                                    104 	.globl _WDTRSTVALH
                                    105 	.globl _WDTRSTVALM
                                    106 	.globl _WDTRSTVALL
                                    107 	.globl _WDTPET
                                    108 	.globl _WDTENA
                                    109 	.globl _RESET
                                    110 	.globl _CLKEN
                                    111 	.globl _CLKSPEED
                                    112 	.globl _IEN1
                                    113 	.globl _IEN0
                                    114 	.globl _XPAGE
                                    115 	.globl _P2PULL
                                    116 	.globl _P1PULL
                                    117 	.globl _P0PULL
                                    118 	.globl _P2DIR
                                    119 	.globl _P1DIR
                                    120 	.globl _P0DIR
                                    121 	.globl _P2FUNC
                                    122 	.globl _P1FUNC
                                    123 	.globl _P0FUNC
                                    124 	.globl _P2CHSTA
                                    125 	.globl _P1CHSTA
                                    126 	.globl _P0CHSTA
                                    127 	.globl _P2INTEN
                                    128 	.globl _P1INTEN
                                    129 	.globl _P0INTEN
                                    130 	.globl _P2LVLSEL
                                    131 	.globl _P1LVLSEL
                                    132 	.globl _P0LVLSEL
                                    133 	.globl _P2
                                    134 	.globl _P1
                                    135 	.globl _P0
                                    136 	.globl _PERFMON4
                                    137 	.globl _PCL
                                    138 	.globl _PCH
                                    139 	.globl _PERFMON1
                                    140 	.globl _PERFMON0
                                    141 	.globl _PCON
                                    142 	.globl _DPS
                                    143 	.globl _DPH1
                                    144 	.globl _DPL1
                                    145 	.globl _DPH
                                    146 	.globl _DPL
                                    147 	.globl _ACC
                                    148 	.globl _B
                                    149 	.globl _screen_start_time
                                    150 	.globl _screenDraw_PARM_3
                                    151 	.globl _screenDraw_PARM_2
                                    152 	.globl _display_is_drawing
                                    153 	.globl _screenDraw
                                    154 	.globl _display_end
                                    155 	.globl _is_drawing
                                    156 ;--------------------------------------------------------
                                    157 ; special function registers
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           0000F0   161 _B	=	0x00f0
                           0000E0   162 _ACC	=	0x00e0
                           000082   163 _DPL	=	0x0082
                           000083   164 _DPH	=	0x0083
                           000084   165 _DPL1	=	0x0084
                           000085   166 _DPH1	=	0x0085
                           000092   167 _DPS	=	0x0092
                           000087   168 _PCON	=	0x0087
                           0000B2   169 _PERFMON0	=	0x00b2
                           0000B3   170 _PERFMON1	=	0x00b3
                           0000B4   171 _PCH	=	0x00b4
                           0000B5   172 _PCL	=	0x00b5
                           0000B6   173 _PERFMON4	=	0x00b6
                           000080   174 _P0	=	0x0080
                           000090   175 _P1	=	0x0090
                           0000A0   176 _P2	=	0x00a0
                           0000A3   177 _P0LVLSEL	=	0x00a3
                           0000A4   178 _P1LVLSEL	=	0x00a4
                           0000A5   179 _P2LVLSEL	=	0x00a5
                           0000A6   180 _P0INTEN	=	0x00a6
                           0000A7   181 _P1INTEN	=	0x00a7
                           0000A9   182 _P2INTEN	=	0x00a9
                           0000AA   183 _P0CHSTA	=	0x00aa
                           0000AB   184 _P1CHSTA	=	0x00ab
                           0000AC   185 _P2CHSTA	=	0x00ac
                           0000AD   186 _P0FUNC	=	0x00ad
                           0000AE   187 _P1FUNC	=	0x00ae
                           0000AF   188 _P2FUNC	=	0x00af
                           0000B9   189 _P0DIR	=	0x00b9
                           0000BA   190 _P1DIR	=	0x00ba
                           0000BB   191 _P2DIR	=	0x00bb
                           0000BC   192 _P0PULL	=	0x00bc
                           0000BD   193 _P1PULL	=	0x00bd
                           0000BE   194 _P2PULL	=	0x00be
                           0000A0   195 _XPAGE	=	0x00a0
                           0000A8   196 _IEN0	=	0x00a8
                           0000A1   197 _IEN1	=	0x00a1
                           00008E   198 _CLKSPEED	=	0x008e
                           0000B7   199 _CLKEN	=	0x00b7
                           00008F   200 _RESET	=	0x008f
                           0000BA   201 _WDTENA	=	0x00ba
                           0000BB   202 _WDTPET	=	0x00bb
                           0000BC   203 _WDTRSTVALL	=	0x00bc
                           0000BD   204 _WDTRSTVALM	=	0x00bd
                           0000BE   205 _WDTRSTVALH	=	0x00be
                           0000BF   206 _WDTCONF	=	0x00bf
                           0000EB   207 _SPIUNKNOWN	=	0x00eb
                           0000EC   208 _SPICFG	=	0x00ec
                           0000ED   209 _SPIENA	=	0x00ed
                           0000EE   210 _SPITX	=	0x00ee
                           0000EF   211 _SPIRX	=	0x00ef
                           000091   212 _I2CSTATE	=	0x0091
                           000094   213 _I2CBUF	=	0x0094
                           000095   214 _I2CCTL	=	0x0095
                           000096   215 _I2CSPEED	=	0x0096
                           0000A2   216 _I2CUNKNOWN	=	0x00a2
                           000098   217 _UARTSTA	=	0x0098
                           000099   218 _UARTBUF	=	0x0099
                           00009A   219 _UARTBRGL	=	0x009a
                           00009B   220 _UARTBRGH	=	0x009b
                           000088   221 _TCON	=	0x0088
                           000089   222 _TMOD	=	0x0089
                           00008A   223 _TL0	=	0x008a
                           00008B   224 _TL1	=	0x008b
                           00008C   225 _TH0	=	0x008c
                           00008D   226 _TH1	=	0x008d
                           008C8A   227 _T0	=	0x8c8a
                           008D8B   228 _T1	=	0x8d8b
                           0000D8   229 _FPGNO	=	0x00d8
                           0000D9   230 _FWRSRCL	=	0x00d9
                           0000DA   231 _FWRSRCH	=	0x00da
                           0000DB   232 _FWRDSTL	=	0x00db
                           0000DC   233 _FWRDSTH	=	0x00dc
                           0000DD   234 _FWRLENL	=	0x00dd
                           0000DE   235 _FWRLENH	=	0x00de
                           0000DF   236 _FWRTHREE	=	0x00df
                           0000E6   237 _TEMPCAL1	=	0x00e6
                           0000E7   238 _TEMPCAL2	=	0x00e7
                           0000F7   239 _TEMPCFG	=	0x00f7
                           0000F8   240 _TEMPRETH	=	0x00f8
                           0000F9   241 _TEMPRETL	=	0x00f9
                           0000FB   242 _TEMPCAL3	=	0x00fb
                           0000FC   243 _TEMPCAL4	=	0x00fc
                           0000FD   244 _TEMPCAL5	=	0x00fd
                           0000FE   245 _TEMPCAL6	=	0x00fe
                           0000C9   246 _RADIO_TXPTRL	=	0x00c9
                           0000CA   247 _RADIO_TXPTRH	=	0x00ca
                           0000CB   248 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   249 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   250 _RADIO_TXLEN	=	0x00cd
                           0000CE   251 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   252 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   253 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   254 _RADIO_RXPTRL	=	0x00d3
                           0000D4   255 _RADIO_RXPTRH	=	0x00d4
                           0000D5   256 _RADIO_RXLEN	=	0x00d5
                           0000D6   257 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   258 _RADIO_GOTLEN	=	0x00fa
                           0000C1   259 _UNK_C1	=	0x00c1
                           0000D7   260 _TRIGGER	=	0x00d7
                           0000C7   261 _SETTINGS	=	0x00c7
                           0000CF   262 _TCON2	=	0x00cf
                           0000FF   263 _CFGPAGE	=	0x00ff
                                    264 ;--------------------------------------------------------
                                    265 ; special function bits
                                    266 ;--------------------------------------------------------
                                    267 	.area RSEG    (ABS,DATA)
      000000                        268 	.org 0x0000
                           000080   269 _P0_0	=	0x0080
                           000081   270 _P0_1	=	0x0081
                           000082   271 _P0_2	=	0x0082
                           000083   272 _P0_3	=	0x0083
                           000084   273 _P0_4	=	0x0084
                           000085   274 _P0_5	=	0x0085
                           000086   275 _P0_6	=	0x0086
                           000087   276 _P0_7	=	0x0087
                           000090   277 _P1_0	=	0x0090
                           000091   278 _P1_1	=	0x0091
                           000092   279 _P1_2	=	0x0092
                           000093   280 _P1_3	=	0x0093
                           000094   281 _P1_4	=	0x0094
                           000095   282 _P1_5	=	0x0095
                           000096   283 _P1_6	=	0x0096
                           000097   284 _P1_7	=	0x0097
                           0000A0   285 _P2_0	=	0x00a0
                           0000A1   286 _P2_1	=	0x00a1
                           0000A2   287 _P2_2	=	0x00a2
                           0000A3   288 _P2_3	=	0x00a3
                           0000A4   289 _P2_4	=	0x00a4
                           0000A5   290 _P2_5	=	0x00a5
                           0000A6   291 _P2_6	=	0x00a6
                           0000A7   292 _P2_7	=	0x00a7
                           0000A8   293 _IEN_UART0	=	0x00a8
                           0000A9   294 _IEN_TMR0	=	0x00a9
                           0000AB   295 _IEN_TMR1	=	0x00ab
                           0000AC   296 _IEN_RF1	=	0x00ac
                           0000AD   297 _IEN_RF2	=	0x00ad
                           0000AF   298 _IEN_EA	=	0x00af
                           000098   299 _UART_RXF	=	0x0098
                           000099   300 _UART_TXE	=	0x0099
                                    301 ;--------------------------------------------------------
                                    302 ; overlayable register banks
                                    303 ;--------------------------------------------------------
                                    304 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        305 	.ds 8
                                    306 ;--------------------------------------------------------
                                    307 ; internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area DSEG    (DATA)
      00001C                        310 _screenPrvTimedWait_sloc0_1_0:
      00001C                        311 	.ds 4
                                    312 ;--------------------------------------------------------
                                    313 ; overlayable items in internal ram 
                                    314 ;--------------------------------------------------------
                                    315 ;--------------------------------------------------------
                                    316 ; indirectly addressable internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area ISEG    (DATA)
                           000000   319 _R0	=	0x0000
                           000001   320 _R1	=	0x0001
                           000002   321 _R2	=	0x0002
                           000003   322 _R3	=	0x0003
                           000004   323 _R4	=	0x0004
                           000005   324 _R5	=	0x0005
                           000006   325 _R6	=	0x0006
                           000007   326 _R7	=	0x0007
                                    327 ;--------------------------------------------------------
                                    328 ; absolute internal ram data
                                    329 ;--------------------------------------------------------
                                    330 	.area IABS    (ABS,DATA)
                                    331 	.area IABS    (ABS,DATA)
                                    332 ;--------------------------------------------------------
                                    333 ; bit data
                                    334 ;--------------------------------------------------------
                                    335 	.area BSEG    (BIT)
      00000C                        336 _display_is_drawing::
      00000C                        337 	.ds 1
      00000D                        338 _screenDraw_PARM_2:
      00000D                        339 	.ds 1
      00000E                        340 _screenDraw_PARM_3:
      00000E                        341 	.ds 1
                                    342 ;--------------------------------------------------------
                                    343 ; paged external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area PSEG    (PAG,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XSEG    (XDATA)
                           00DF48   350 _RADIO_command	=	0xdf48
                           00DF70   351 _RADIO_calibration_70	=	0xdf70
                           00DF71   352 _RADIO_calibration_71	=	0xdf71
                           00DF80   353 _RADIO_FLAGS	=	0xdf80
                           00DF81   354 _RADIO_calibration_81	=	0xdf81
                           00DF83   355 _RADIO_unk_83	=	0xdf83
                           00DF84   356 _RADIO_currentRSSI	=	0xdf84
                           00DF86   357 _RADIO_calibration_86	=	0xdf86
                           00DF88   358 _RADIO_ownMac_7	=	0xdf88
                           00DF89   359 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   360 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   361 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   362 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   363 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   364 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   365 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   366 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   367 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   368 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   369 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   370 _RADIO_calibration_94	=	0xdf94
                           00DF95   371 _RADIO_calibration_95	=	0xdf95
                           00DF96   372 _RADIO_calibration_96	=	0xdf96
                           00DF98   373 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   374 _RADIO_curRfState	=	0xdf9b
                           00DF9D   375 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   376 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   377 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   378 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   379 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   380 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   381 _RADIO_channel	=	0xdfc0
                           00DFC1   382 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   383 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   384 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   385 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   386 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   387 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   388 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   389 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   390 _RADIO_txPower	=	0xdfc9
                           00DFCA   391 _RADIO_unk_CA	=	0xdfca
                           00DFCB   392 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   393 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   394 _RADIO_unk_CE	=	0xdfce
                           00DFCF   395 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   396 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   397 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   398 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   399 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   400 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   401 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   402 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   403 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   404 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   405 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   406 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   407 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   408 _RADIO_unk_F0	=	0xdff0
                           00DFF3   409 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   410 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFD   411 _RADIO_perChannelSetting1	=	0xdffd
      00E422                        412 _screenPrvTimedWait_maxTicks_65536_9:
      00E422                        413 	.ds 4
      00E426                        414 _screenPrvRegWriteGuts_PARM_2:
      00E426                        415 	.ds 1
      00E427                        416 _screenPrvRegWriteGuts_val_65536_12:
      00E427                        417 	.ds 4
      00E42B                        418 _screenDraw_data_65536_14:
      00E42B                        419 	.ds 2
                                    420 ;--------------------------------------------------------
                                    421 ; absolute external ram data
                                    422 ;--------------------------------------------------------
                                    423 	.area XABS    (ABS,XDATA)
                                    424 ;--------------------------------------------------------
                                    425 ; external initialized ram data
                                    426 ;--------------------------------------------------------
                                    427 	.area XISEG   (XDATA)
      00E46A                        428 _screen_start_time::
      00E46A                        429 	.ds 4
                                    430 	.area HOME    (CODE)
                                    431 	.area GSINIT0 (CODE)
                                    432 	.area GSINIT1 (CODE)
                                    433 	.area GSINIT2 (CODE)
                                    434 	.area GSINIT3 (CODE)
                                    435 	.area GSINIT4 (CODE)
                                    436 	.area GSINIT5 (CODE)
                                    437 	.area GSINIT  (CODE)
                                    438 	.area GSFINAL (CODE)
                                    439 	.area CSEG    (CODE)
                                    440 ;--------------------------------------------------------
                                    441 ; global & static initialisations
                                    442 ;--------------------------------------------------------
                                    443 	.area HOME    (CODE)
                                    444 	.area GSINIT  (CODE)
                                    445 	.area GSFINAL (CODE)
                                    446 	.area GSINIT  (CODE)
                                    447 ;	screenSegmented.c:7: __bit display_is_drawing = 0;
                                    448 ;	assignBit
      000072 C2 0C            [12]  449 	clr	_display_is_drawing
                                    450 ;--------------------------------------------------------
                                    451 ; Home
                                    452 ;--------------------------------------------------------
                                    453 	.area HOME    (CODE)
                                    454 	.area HOME    (CODE)
                                    455 ;--------------------------------------------------------
                                    456 ; code
                                    457 ;--------------------------------------------------------
                                    458 	.area CSEG    (CODE)
                                    459 ;------------------------------------------------------------
                                    460 ;Allocation info for local variables in function 'screenPrvTimedWait'
                                    461 ;------------------------------------------------------------
                                    462 ;sloc0                     Allocated with name '_screenPrvTimedWait_sloc0_1_0'
                                    463 ;maxTicks                  Allocated with name '_screenPrvTimedWait_maxTicks_65536_9'
                                    464 ;startTicks                Allocated with name '_screenPrvTimedWait_startTicks_65536_10'
                                    465 ;------------------------------------------------------------
                                    466 ;	screenSegmented.c:11: static __bit screenPrvTimedWait(uint32_t maxTicks)
                                    467 ;	-----------------------------------------
                                    468 ;	 function screenPrvTimedWait
                                    469 ;	-----------------------------------------
      0012D5                        470 _screenPrvTimedWait:
                           000007   471 	ar7 = 0x07
                           000006   472 	ar6 = 0x06
                           000005   473 	ar5 = 0x05
                           000004   474 	ar4 = 0x04
                           000003   475 	ar3 = 0x03
                           000002   476 	ar2 = 0x02
                           000001   477 	ar1 = 0x01
                           000000   478 	ar0 = 0x00
      0012D5 C0 07            [24]  479 	push	ar7
      0012D7 C0 06            [24]  480 	push	ar6
      0012D9 C0 05            [24]  481 	push	ar5
      0012DB C0 04            [24]  482 	push	ar4
      0012DD C0 03            [24]  483 	push	ar3
      0012DF C0 02            [24]  484 	push	ar2
      0012E1 C0 01            [24]  485 	push	ar1
      0012E3 C0 00            [24]  486 	push	ar0
      0012E5 AF 82            [24]  487 	mov	r7,dpl
      0012E7 AE 83            [24]  488 	mov	r6,dph
      0012E9 AD F0            [24]  489 	mov	r5,b
      0012EB FC               [12]  490 	mov	r4,a
      0012EC 90 E4 22         [24]  491 	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_9
      0012EF EF               [12]  492 	mov	a,r7
      0012F0 F0               [24]  493 	movx	@dptr,a
      0012F1 EE               [12]  494 	mov	a,r6
      0012F2 A3               [24]  495 	inc	dptr
      0012F3 F0               [24]  496 	movx	@dptr,a
      0012F4 ED               [12]  497 	mov	a,r5
      0012F5 A3               [24]  498 	inc	dptr
      0012F6 F0               [24]  499 	movx	@dptr,a
      0012F7 EC               [12]  500 	mov	a,r4
      0012F8 A3               [24]  501 	inc	dptr
      0012F9 F0               [24]  502 	movx	@dptr,a
                                    503 ;	screenSegmented.c:13: uint32_t startTicks = timerGet();
      0012FA 12 0E 71         [24]  504 	lcall	_timerGet
      0012FD AC 82            [24]  505 	mov	r4,dpl
      0012FF AD 83            [24]  506 	mov	r5,dph
      001301 AE F0            [24]  507 	mov	r6,b
      001303 FF               [12]  508 	mov	r7,a
                                    509 ;	screenSegmented.c:15: while (timerGet() - startTicks < maxTicks)
      001304 90 E4 22         [24]  510 	mov	dptr,#_screenPrvTimedWait_maxTicks_65536_9
      001307 E0               [24]  511 	movx	a,@dptr
      001308 F5 1C            [12]  512 	mov	_screenPrvTimedWait_sloc0_1_0,a
      00130A A3               [24]  513 	inc	dptr
      00130B E0               [24]  514 	movx	a,@dptr
      00130C F5 1D            [12]  515 	mov	(_screenPrvTimedWait_sloc0_1_0 + 1),a
      00130E A3               [24]  516 	inc	dptr
      00130F E0               [24]  517 	movx	a,@dptr
      001310 F5 1E            [12]  518 	mov	(_screenPrvTimedWait_sloc0_1_0 + 2),a
      001312 A3               [24]  519 	inc	dptr
      001313 E0               [24]  520 	movx	a,@dptr
      001314 F5 1F            [12]  521 	mov	(_screenPrvTimedWait_sloc0_1_0 + 3),a
      001316                        522 00103$:
      001316 12 0E 71         [24]  523 	lcall	_timerGet
      001319 A8 82            [24]  524 	mov	r0,dpl
      00131B A9 83            [24]  525 	mov	r1,dph
      00131D AA F0            [24]  526 	mov	r2,b
      00131F FB               [12]  527 	mov	r3,a
      001320 E8               [12]  528 	mov	a,r0
      001321 C3               [12]  529 	clr	c
      001322 9C               [12]  530 	subb	a,r4
      001323 F8               [12]  531 	mov	r0,a
      001324 E9               [12]  532 	mov	a,r1
      001325 9D               [12]  533 	subb	a,r5
      001326 F9               [12]  534 	mov	r1,a
      001327 EA               [12]  535 	mov	a,r2
      001328 9E               [12]  536 	subb	a,r6
      001329 FA               [12]  537 	mov	r2,a
      00132A EB               [12]  538 	mov	a,r3
      00132B 9F               [12]  539 	subb	a,r7
      00132C FB               [12]  540 	mov	r3,a
      00132D C3               [12]  541 	clr	c
      00132E E8               [12]  542 	mov	a,r0
      00132F 95 1C            [12]  543 	subb	a,_screenPrvTimedWait_sloc0_1_0
      001331 E9               [12]  544 	mov	a,r1
      001332 95 1D            [12]  545 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 1)
      001334 EA               [12]  546 	mov	a,r2
      001335 95 1E            [12]  547 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 2)
      001337 EB               [12]  548 	mov	a,r3
      001338 95 1F            [12]  549 	subb	a,(_screenPrvTimedWait_sloc0_1_0 + 3)
      00133A 50 06            [24]  550 	jnc	00105$
                                    551 ;	screenSegmented.c:17: if (!P2_0)
      00133C 20 A0 D7         [24]  552 	jb	_P2_0,00103$
                                    553 ;	screenSegmented.c:18: return true;
      00133F D3               [12]  554 	setb	c
      001340 80 01            [24]  555 	sjmp	00106$
      001342                        556 00105$:
                                    557 ;	screenSegmented.c:21: return false;
      001342 C3               [12]  558 	clr	c
      001343                        559 00106$:
                                    560 ;	screenSegmented.c:22: }
      001343 D0 00            [24]  561 	pop	ar0
      001345 D0 01            [24]  562 	pop	ar1
      001347 D0 02            [24]  563 	pop	ar2
      001349 D0 03            [24]  564 	pop	ar3
      00134B D0 04            [24]  565 	pop	ar4
      00134D D0 05            [24]  566 	pop	ar5
      00134F D0 06            [24]  567 	pop	ar6
      001351 D0 07            [24]  568 	pop	ar7
      001353 22               [24]  569 	ret
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'screenPrvRegWriteGuts'
                                    572 ;------------------------------------------------------------
                                    573 ;reg                       Allocated with name '_screenPrvRegWriteGuts_PARM_2'
                                    574 ;val                       Allocated with name '_screenPrvRegWriteGuts_val_65536_12'
                                    575 ;------------------------------------------------------------
                                    576 ;	screenSegmented.c:25: static __bit screenPrvRegWriteGuts(uint32_t val, uint8_t reg) // order because sdcc sucks
                                    577 ;	-----------------------------------------
                                    578 ;	 function screenPrvRegWriteGuts
                                    579 ;	-----------------------------------------
      001354                        580 _screenPrvRegWriteGuts:
      001354 C0 07            [24]  581 	push	ar7
      001356 C0 06            [24]  582 	push	ar6
      001358 C0 05            [24]  583 	push	ar5
      00135A C0 04            [24]  584 	push	ar4
      00135C C0 03            [24]  585 	push	ar3
      00135E AF 82            [24]  586 	mov	r7,dpl
      001360 AE 83            [24]  587 	mov	r6,dph
      001362 AD F0            [24]  588 	mov	r5,b
      001364 FC               [12]  589 	mov	r4,a
      001365 90 E4 27         [24]  590 	mov	dptr,#_screenPrvRegWriteGuts_val_65536_12
      001368 EF               [12]  591 	mov	a,r7
      001369 F0               [24]  592 	movx	@dptr,a
      00136A EE               [12]  593 	mov	a,r6
      00136B A3               [24]  594 	inc	dptr
      00136C F0               [24]  595 	movx	@dptr,a
      00136D ED               [12]  596 	mov	a,r5
      00136E A3               [24]  597 	inc	dptr
      00136F F0               [24]  598 	movx	@dptr,a
      001370 EC               [12]  599 	mov	a,r4
      001371 A3               [24]  600 	inc	dptr
      001372 F0               [24]  601 	movx	@dptr,a
                                    602 ;	screenSegmented.c:27: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND / 1000))
      001373 90 05 35         [24]  603 	mov	dptr,#0x0535
      001376 E4               [12]  604 	clr	a
      001377 F5 F0            [12]  605 	mov	b,a
      001379 12 12 D5         [24]  606 	lcall	_screenPrvTimedWait
                                    607 ;	screenSegmented.c:28: return false;
      00137C 40 02            [24]  608 	jc	00102$
      00137E 80 33            [24]  609 	sjmp	00103$
      001380                        610 00102$:
                                    611 ;	screenSegmented.c:30: P2_1 = 0;
                                    612 ;	assignBit
      001380 C2 A1            [12]  613 	clr	_P2_1
                                    614 ;	screenSegmented.c:31: spiByte((uint8_t)0x80 + (uint8_t)(reg << 1));
      001382 90 E4 26         [24]  615 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001385 E0               [24]  616 	movx	a,@dptr
      001386 25 E0            [12]  617 	add	a,acc
      001388 24 80            [12]  618 	add	a,#0x80
      00138A F5 82            [12]  619 	mov	dpl,a
      00138C 12 0E 0B         [24]  620 	lcall	_spiByte
                                    621 ;	screenSegmented.c:32: spiByte(val >> 16);
      00138F 90 E4 27         [24]  622 	mov	dptr,#_screenPrvRegWriteGuts_val_65536_12
      001392 E0               [24]  623 	movx	a,@dptr
      001393 FC               [12]  624 	mov	r4,a
      001394 A3               [24]  625 	inc	dptr
      001395 E0               [24]  626 	movx	a,@dptr
      001396 FD               [12]  627 	mov	r5,a
      001397 A3               [24]  628 	inc	dptr
      001398 E0               [24]  629 	movx	a,@dptr
      001399 FE               [12]  630 	mov	r6,a
      00139A A3               [24]  631 	inc	dptr
      00139B E0               [24]  632 	movx	a,@dptr
      00139C FF               [12]  633 	mov	r7,a
      00139D 8E 03            [24]  634 	mov	ar3,r6
      00139F 8B 82            [24]  635 	mov	dpl,r3
      0013A1 12 0E 0B         [24]  636 	lcall	_spiByte
                                    637 ;	screenSegmented.c:33: spiByte(val >> 8);
      0013A4 8D 03            [24]  638 	mov	ar3,r5
      0013A6 8B 82            [24]  639 	mov	dpl,r3
      0013A8 12 0E 0B         [24]  640 	lcall	_spiByte
                                    641 ;	screenSegmented.c:34: spiByte(val);
      0013AB 8C 82            [24]  642 	mov	dpl,r4
      0013AD 12 0E 0B         [24]  643 	lcall	_spiByte
                                    644 ;	screenSegmented.c:35: P2_1 = 1;
                                    645 ;	assignBit
      0013B0 D2 A1            [12]  646 	setb	_P2_1
                                    647 ;	screenSegmented.c:37: return true;
      0013B2 D3               [12]  648 	setb	c
      0013B3                        649 00103$:
                                    650 ;	screenSegmented.c:38: }
      0013B3 D0 03            [24]  651 	pop	ar3
      0013B5 D0 04            [24]  652 	pop	ar4
      0013B7 D0 05            [24]  653 	pop	ar5
      0013B9 D0 06            [24]  654 	pop	ar6
      0013BB D0 07            [24]  655 	pop	ar7
      0013BD 22               [24]  656 	ret
                                    657 ;------------------------------------------------------------
                                    658 ;Allocation info for local variables in function 'screenDraw'
                                    659 ;------------------------------------------------------------
                                    660 ;data                      Allocated with name '_screenDraw_data_65536_14'
                                    661 ;------------------------------------------------------------
                                    662 ;	screenSegmented.c:42: __bit screenDraw(const uint8_t __xdata *data, __bit inverted, __bit custom_lut)
                                    663 ;	-----------------------------------------
                                    664 ;	 function screenDraw
                                    665 ;	-----------------------------------------
      0013BE                        666 _screenDraw:
      0013BE AF 83            [24]  667 	mov	r7,dph
      0013C0 E5 82            [12]  668 	mov	a,dpl
      0013C2 90 E4 2B         [24]  669 	mov	dptr,#_screenDraw_data_65536_14
      0013C5 F0               [24]  670 	movx	@dptr,a
      0013C6 EF               [12]  671 	mov	a,r7
      0013C7 A3               [24]  672 	inc	dptr
      0013C8 F0               [24]  673 	movx	@dptr,a
                                    674 ;	screenSegmented.c:44: display_is_drawing = 0;
                                    675 ;	assignBit
      0013C9 C2 0C            [12]  676 	clr	_display_is_drawing
                                    677 ;	screenSegmented.c:45: P2_1 = 1;
                                    678 ;	assignBit
      0013CB D2 A1            [12]  679 	setb	_P2_1
                                    680 ;	screenSegmented.c:46: P2_2 = 1; // power it up
                                    681 ;	assignBit
      0013CD D2 A2            [12]  682 	setb	_P2_2
                                    683 ;	screenSegmented.c:47: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      0013CF 90 05 35         [24]  684 	mov	dptr,#0x0535
      0013D2 E4               [12]  685 	clr	a
      0013D3 F5 F0            [12]  686 	mov	b,a
      0013D5 12 0E EF         [24]  687 	lcall	_timerDelay
                                    688 ;	screenSegmented.c:48: P1_7 = 0; // assert reset
                                    689 ;	assignBit
      0013D8 C2 97            [12]  690 	clr	_P1_7
                                    691 ;	screenSegmented.c:49: timerDelay(TIMER_TICKS_PER_SECOND / 100);
      0013DA 90 34 15         [24]  692 	mov	dptr,#0x3415
      0013DD E4               [12]  693 	clr	a
      0013DE F5 F0            [12]  694 	mov	b,a
      0013E0 12 0E EF         [24]  695 	lcall	_timerDelay
                                    696 ;	screenSegmented.c:50: P1_7 = 1; // release reset
                                    697 ;	assignBit
      0013E3 D2 97            [12]  698 	setb	_P1_7
                                    699 ;	screenSegmented.c:51: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      0013E5 90 05 35         [24]  700 	mov	dptr,#0x0535
      0013E8 E4               [12]  701 	clr	a
      0013E9 F5 F0            [12]  702 	mov	b,a
      0013EB 12 0E EF         [24]  703 	lcall	_timerDelay
                                    704 ;	screenSegmented.c:53: P1FUNC |= 0x40;
      0013EE 43 AE 40         [24]  705 	orl	_P1FUNC,#0x40
                                    706 ;	screenSegmented.c:55: if (!screenPrvTimedWait(TIMER_TICKS_PER_SECOND))
      0013F1 90 58 55         [24]  707 	mov	dptr,#0x5855
      0013F4 75 F0 14         [24]  708 	mov	b,#0x14
      0013F7 E4               [12]  709 	clr	a
      0013F8 12 12 D5         [24]  710 	lcall	_screenPrvTimedWait
                                    711 ;	screenSegmented.c:57: return false;
      0013FB 40 01            [24]  712 	jc	00102$
      0013FD 22               [24]  713 	ret
      0013FE                        714 00102$:
                                    715 ;	screenSegmented.c:61: if (!screenPrvRegWrite(0x03, 0x3a0000))
      0013FE 90 E4 26         [24]  716 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001401 74 03            [12]  717 	mov	a,#0x03
      001403 F0               [24]  718 	movx	@dptr,a
      001404 90 00 00         [24]  719 	mov	dptr,#0x0000
      001407 75 F0 3A         [24]  720 	mov	b,#0x3a
      00140A E4               [12]  721 	clr	a
      00140B 12 13 54         [24]  722 	lcall	_screenPrvRegWriteGuts
                                    723 ;	screenSegmented.c:62: return false;
      00140E 40 01            [24]  724 	jc	00104$
      001410 22               [24]  725 	ret
      001411                        726 00104$:
                                    727 ;	screenSegmented.c:64: if (!screenPrvRegWrite(0x01, 0x070000))
      001411 90 E4 26         [24]  728 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001414 74 01            [12]  729 	mov	a,#0x01
      001416 F0               [24]  730 	movx	@dptr,a
      001417 90 00 00         [24]  731 	mov	dptr,#0x0000
      00141A 75 F0 07         [24]  732 	mov	b,#0x07
      00141D E4               [12]  733 	clr	a
      00141E 12 13 54         [24]  734 	lcall	_screenPrvRegWriteGuts
                                    735 ;	screenSegmented.c:65: return false;
      001421 40 01            [24]  736 	jc	00106$
      001423 22               [24]  737 	ret
      001424                        738 00106$:
                                    739 ;	screenSegmented.c:66: if (!screenPrvRegWrite(0x03, 0x400000))
      001424 90 E4 26         [24]  740 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001427 74 03            [12]  741 	mov	a,#0x03
      001429 F0               [24]  742 	movx	@dptr,a
      00142A 90 00 00         [24]  743 	mov	dptr,#0x0000
      00142D 75 F0 40         [24]  744 	mov	b,#0x40
      001430 E4               [12]  745 	clr	a
      001431 12 13 54         [24]  746 	lcall	_screenPrvRegWriteGuts
                                    747 ;	screenSegmented.c:67: return false;
      001434 40 01            [24]  748 	jc	00108$
      001436 22               [24]  749 	ret
      001437                        750 00108$:
                                    751 ;	screenSegmented.c:68: if (!screenPrvRegWrite(0x04, 0xfc0000))
      001437 90 E4 26         [24]  752 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      00143A 74 04            [12]  753 	mov	a,#0x04
      00143C F0               [24]  754 	movx	@dptr,a
      00143D 90 00 00         [24]  755 	mov	dptr,#0x0000
      001440 75 F0 FC         [24]  756 	mov	b,#0xfc
      001443 E4               [12]  757 	clr	a
      001444 12 13 54         [24]  758 	lcall	_screenPrvRegWriteGuts
                                    759 ;	screenSegmented.c:69: return false;
      001447 40 01            [24]  760 	jc	00110$
      001449 22               [24]  761 	ret
      00144A                        762 00110$:
                                    763 ;	screenSegmented.c:72: if (!screenPrvRegWrite(0x0d, *(uint32_t __xdata *)(data + 0)))
      00144A 90 E4 2B         [24]  764 	mov	dptr,#_screenDraw_data_65536_14
      00144D E0               [24]  765 	movx	a,@dptr
      00144E FE               [12]  766 	mov	r6,a
      00144F A3               [24]  767 	inc	dptr
      001450 E0               [24]  768 	movx	a,@dptr
      001451 FF               [12]  769 	mov	r7,a
      001452 8E 82            [24]  770 	mov	dpl,r6
      001454 8F 83            [24]  771 	mov	dph,r7
      001456 E0               [24]  772 	movx	a,@dptr
      001457 FA               [12]  773 	mov	r2,a
      001458 A3               [24]  774 	inc	dptr
      001459 E0               [24]  775 	movx	a,@dptr
      00145A FB               [12]  776 	mov	r3,a
      00145B A3               [24]  777 	inc	dptr
      00145C E0               [24]  778 	movx	a,@dptr
      00145D FC               [12]  779 	mov	r4,a
      00145E A3               [24]  780 	inc	dptr
      00145F E0               [24]  781 	movx	a,@dptr
      001460 FD               [12]  782 	mov	r5,a
      001461 90 E4 26         [24]  783 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001464 74 0D            [12]  784 	mov	a,#0x0d
      001466 F0               [24]  785 	movx	@dptr,a
      001467 8A 82            [24]  786 	mov	dpl,r2
      001469 8B 83            [24]  787 	mov	dph,r3
      00146B 8C F0            [24]  788 	mov	b,r4
      00146D ED               [12]  789 	mov	a,r5
      00146E 12 13 54         [24]  790 	lcall	_screenPrvRegWriteGuts
                                    791 ;	screenSegmented.c:73: return false;
      001471 40 01            [24]  792 	jc	00112$
      001473 22               [24]  793 	ret
      001474                        794 00112$:
                                    795 ;	screenSegmented.c:74: if (!screenPrvRegWrite(0x0e, *(uint32_t __xdata *)(data + 3)))
      001474 74 03            [12]  796 	mov	a,#0x03
      001476 2E               [12]  797 	add	a,r6
      001477 FC               [12]  798 	mov	r4,a
      001478 E4               [12]  799 	clr	a
      001479 3F               [12]  800 	addc	a,r7
      00147A FD               [12]  801 	mov	r5,a
      00147B 8C 82            [24]  802 	mov	dpl,r4
      00147D 8D 83            [24]  803 	mov	dph,r5
      00147F E0               [24]  804 	movx	a,@dptr
      001480 FA               [12]  805 	mov	r2,a
      001481 A3               [24]  806 	inc	dptr
      001482 E0               [24]  807 	movx	a,@dptr
      001483 FB               [12]  808 	mov	r3,a
      001484 A3               [24]  809 	inc	dptr
      001485 E0               [24]  810 	movx	a,@dptr
      001486 FC               [12]  811 	mov	r4,a
      001487 A3               [24]  812 	inc	dptr
      001488 E0               [24]  813 	movx	a,@dptr
      001489 FD               [12]  814 	mov	r5,a
      00148A 90 E4 26         [24]  815 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      00148D 74 0E            [12]  816 	mov	a,#0x0e
      00148F F0               [24]  817 	movx	@dptr,a
      001490 8A 82            [24]  818 	mov	dpl,r2
      001492 8B 83            [24]  819 	mov	dph,r3
      001494 8C F0            [24]  820 	mov	b,r4
      001496 ED               [12]  821 	mov	a,r5
      001497 12 13 54         [24]  822 	lcall	_screenPrvRegWriteGuts
                                    823 ;	screenSegmented.c:75: return false;
      00149A 40 01            [24]  824 	jc	00114$
      00149C 22               [24]  825 	ret
      00149D                        826 00114$:
                                    827 ;	screenSegmented.c:76: if (!screenPrvRegWrite(0x0f, *(uint32_t __xdata *)(data + 6)))
      00149D 74 06            [12]  828 	mov	a,#0x06
      00149F 2E               [12]  829 	add	a,r6
      0014A0 FC               [12]  830 	mov	r4,a
      0014A1 E4               [12]  831 	clr	a
      0014A2 3F               [12]  832 	addc	a,r7
      0014A3 FD               [12]  833 	mov	r5,a
      0014A4 8C 82            [24]  834 	mov	dpl,r4
      0014A6 8D 83            [24]  835 	mov	dph,r5
      0014A8 E0               [24]  836 	movx	a,@dptr
      0014A9 FA               [12]  837 	mov	r2,a
      0014AA A3               [24]  838 	inc	dptr
      0014AB E0               [24]  839 	movx	a,@dptr
      0014AC FB               [12]  840 	mov	r3,a
      0014AD A3               [24]  841 	inc	dptr
      0014AE E0               [24]  842 	movx	a,@dptr
      0014AF FC               [12]  843 	mov	r4,a
      0014B0 A3               [24]  844 	inc	dptr
      0014B1 E0               [24]  845 	movx	a,@dptr
      0014B2 FD               [12]  846 	mov	r5,a
      0014B3 90 E4 26         [24]  847 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0014B6 74 0F            [12]  848 	mov	a,#0x0f
      0014B8 F0               [24]  849 	movx	@dptr,a
      0014B9 8A 82            [24]  850 	mov	dpl,r2
      0014BB 8B 83            [24]  851 	mov	dph,r3
      0014BD 8C F0            [24]  852 	mov	b,r4
      0014BF ED               [12]  853 	mov	a,r5
      0014C0 12 13 54         [24]  854 	lcall	_screenPrvRegWriteGuts
                                    855 ;	screenSegmented.c:77: return false;
      0014C3 40 01            [24]  856 	jc	00116$
      0014C5 22               [24]  857 	ret
      0014C6                        858 00116$:
                                    859 ;	screenSegmented.c:78: if (!screenPrvRegWrite(0x10, *(uint32_t __xdata *)(data + 9)))
      0014C6 74 09            [12]  860 	mov	a,#0x09
      0014C8 2E               [12]  861 	add	a,r6
      0014C9 FC               [12]  862 	mov	r4,a
      0014CA E4               [12]  863 	clr	a
      0014CB 3F               [12]  864 	addc	a,r7
      0014CC FD               [12]  865 	mov	r5,a
      0014CD 8C 82            [24]  866 	mov	dpl,r4
      0014CF 8D 83            [24]  867 	mov	dph,r5
      0014D1 E0               [24]  868 	movx	a,@dptr
      0014D2 FA               [12]  869 	mov	r2,a
      0014D3 A3               [24]  870 	inc	dptr
      0014D4 E0               [24]  871 	movx	a,@dptr
      0014D5 FB               [12]  872 	mov	r3,a
      0014D6 A3               [24]  873 	inc	dptr
      0014D7 E0               [24]  874 	movx	a,@dptr
      0014D8 FC               [12]  875 	mov	r4,a
      0014D9 A3               [24]  876 	inc	dptr
      0014DA E0               [24]  877 	movx	a,@dptr
      0014DB FD               [12]  878 	mov	r5,a
      0014DC 90 E4 26         [24]  879 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0014DF 74 10            [12]  880 	mov	a,#0x10
      0014E1 F0               [24]  881 	movx	@dptr,a
      0014E2 8A 82            [24]  882 	mov	dpl,r2
      0014E4 8B 83            [24]  883 	mov	dph,r3
      0014E6 8C F0            [24]  884 	mov	b,r4
      0014E8 ED               [12]  885 	mov	a,r5
      0014E9 12 13 54         [24]  886 	lcall	_screenPrvRegWriteGuts
                                    887 ;	screenSegmented.c:79: return false;
      0014EC 40 01            [24]  888 	jc	00118$
      0014EE 22               [24]  889 	ret
      0014EF                        890 00118$:
                                    891 ;	screenSegmented.c:80: if (custom_lut)
      0014EF 20 0E 03         [24]  892 	jb	_screenDraw_PARM_3,00269$
      0014F2 02 16 0F         [24]  893 	ljmp	00144$
      0014F5                        894 00269$:
                                    895 ;	screenSegmented.c:83: if (!screenPrvRegWrite(0x14, *(uint32_t __xdata *)(data + 12)))
      0014F5 74 0C            [12]  896 	mov	a,#0x0c
      0014F7 2E               [12]  897 	add	a,r6
      0014F8 FC               [12]  898 	mov	r4,a
      0014F9 E4               [12]  899 	clr	a
      0014FA 3F               [12]  900 	addc	a,r7
      0014FB FD               [12]  901 	mov	r5,a
      0014FC 8C 82            [24]  902 	mov	dpl,r4
      0014FE 8D 83            [24]  903 	mov	dph,r5
      001500 E0               [24]  904 	movx	a,@dptr
      001501 FA               [12]  905 	mov	r2,a
      001502 A3               [24]  906 	inc	dptr
      001503 E0               [24]  907 	movx	a,@dptr
      001504 FB               [12]  908 	mov	r3,a
      001505 A3               [24]  909 	inc	dptr
      001506 E0               [24]  910 	movx	a,@dptr
      001507 FC               [12]  911 	mov	r4,a
      001508 A3               [24]  912 	inc	dptr
      001509 E0               [24]  913 	movx	a,@dptr
      00150A FD               [12]  914 	mov	r5,a
      00150B 90 E4 26         [24]  915 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      00150E 74 14            [12]  916 	mov	a,#0x14
      001510 F0               [24]  917 	movx	@dptr,a
      001511 8A 82            [24]  918 	mov	dpl,r2
      001513 8B 83            [24]  919 	mov	dph,r3
      001515 8C F0            [24]  920 	mov	b,r4
      001517 ED               [12]  921 	mov	a,r5
      001518 12 13 54         [24]  922 	lcall	_screenPrvRegWriteGuts
                                    923 ;	screenSegmented.c:84: return false;
      00151B 40 01            [24]  924 	jc	00120$
      00151D 22               [24]  925 	ret
      00151E                        926 00120$:
                                    927 ;	screenSegmented.c:85: if (!screenPrvRegWrite(0x15, *(uint32_t __xdata *)(data + 15)))
      00151E 74 0F            [12]  928 	mov	a,#0x0f
      001520 2E               [12]  929 	add	a,r6
      001521 FC               [12]  930 	mov	r4,a
      001522 E4               [12]  931 	clr	a
      001523 3F               [12]  932 	addc	a,r7
      001524 FD               [12]  933 	mov	r5,a
      001525 8C 82            [24]  934 	mov	dpl,r4
      001527 8D 83            [24]  935 	mov	dph,r5
      001529 E0               [24]  936 	movx	a,@dptr
      00152A FA               [12]  937 	mov	r2,a
      00152B A3               [24]  938 	inc	dptr
      00152C E0               [24]  939 	movx	a,@dptr
      00152D FB               [12]  940 	mov	r3,a
      00152E A3               [24]  941 	inc	dptr
      00152F E0               [24]  942 	movx	a,@dptr
      001530 FC               [12]  943 	mov	r4,a
      001531 A3               [24]  944 	inc	dptr
      001532 E0               [24]  945 	movx	a,@dptr
      001533 FD               [12]  946 	mov	r5,a
      001534 90 E4 26         [24]  947 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001537 74 15            [12]  948 	mov	a,#0x15
      001539 F0               [24]  949 	movx	@dptr,a
      00153A 8A 82            [24]  950 	mov	dpl,r2
      00153C 8B 83            [24]  951 	mov	dph,r3
      00153E 8C F0            [24]  952 	mov	b,r4
      001540 ED               [12]  953 	mov	a,r5
      001541 12 13 54         [24]  954 	lcall	_screenPrvRegWriteGuts
                                    955 ;	screenSegmented.c:86: return false;
      001544 40 01            [24]  956 	jc	00122$
      001546 22               [24]  957 	ret
      001547                        958 00122$:
                                    959 ;	screenSegmented.c:87: if (!screenPrvRegWrite(0x16, *(uint32_t __xdata *)(data + 18)))
      001547 74 12            [12]  960 	mov	a,#0x12
      001549 2E               [12]  961 	add	a,r6
      00154A FC               [12]  962 	mov	r4,a
      00154B E4               [12]  963 	clr	a
      00154C 3F               [12]  964 	addc	a,r7
      00154D FD               [12]  965 	mov	r5,a
      00154E 8C 82            [24]  966 	mov	dpl,r4
      001550 8D 83            [24]  967 	mov	dph,r5
      001552 E0               [24]  968 	movx	a,@dptr
      001553 FA               [12]  969 	mov	r2,a
      001554 A3               [24]  970 	inc	dptr
      001555 E0               [24]  971 	movx	a,@dptr
      001556 FB               [12]  972 	mov	r3,a
      001557 A3               [24]  973 	inc	dptr
      001558 E0               [24]  974 	movx	a,@dptr
      001559 FC               [12]  975 	mov	r4,a
      00155A A3               [24]  976 	inc	dptr
      00155B E0               [24]  977 	movx	a,@dptr
      00155C FD               [12]  978 	mov	r5,a
      00155D 90 E4 26         [24]  979 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001560 74 16            [12]  980 	mov	a,#0x16
      001562 F0               [24]  981 	movx	@dptr,a
      001563 8A 82            [24]  982 	mov	dpl,r2
      001565 8B 83            [24]  983 	mov	dph,r3
      001567 8C F0            [24]  984 	mov	b,r4
      001569 ED               [12]  985 	mov	a,r5
      00156A 12 13 54         [24]  986 	lcall	_screenPrvRegWriteGuts
                                    987 ;	screenSegmented.c:88: return false;
      00156D 40 01            [24]  988 	jc	00124$
      00156F 22               [24]  989 	ret
      001570                        990 00124$:
                                    991 ;	screenSegmented.c:90: if (!screenPrvRegWrite(0x19, *(uint32_t __xdata *)(data + 21)))
      001570 74 15            [12]  992 	mov	a,#0x15
      001572 2E               [12]  993 	add	a,r6
      001573 FC               [12]  994 	mov	r4,a
      001574 E4               [12]  995 	clr	a
      001575 3F               [12]  996 	addc	a,r7
      001576 FD               [12]  997 	mov	r5,a
      001577 8C 82            [24]  998 	mov	dpl,r4
      001579 8D 83            [24]  999 	mov	dph,r5
      00157B E0               [24] 1000 	movx	a,@dptr
      00157C FA               [12] 1001 	mov	r2,a
      00157D A3               [24] 1002 	inc	dptr
      00157E E0               [24] 1003 	movx	a,@dptr
      00157F FB               [12] 1004 	mov	r3,a
      001580 A3               [24] 1005 	inc	dptr
      001581 E0               [24] 1006 	movx	a,@dptr
      001582 FC               [12] 1007 	mov	r4,a
      001583 A3               [24] 1008 	inc	dptr
      001584 E0               [24] 1009 	movx	a,@dptr
      001585 FD               [12] 1010 	mov	r5,a
      001586 90 E4 26         [24] 1011 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001589 74 19            [12] 1012 	mov	a,#0x19
      00158B F0               [24] 1013 	movx	@dptr,a
      00158C 8A 82            [24] 1014 	mov	dpl,r2
      00158E 8B 83            [24] 1015 	mov	dph,r3
      001590 8C F0            [24] 1016 	mov	b,r4
      001592 ED               [12] 1017 	mov	a,r5
      001593 12 13 54         [24] 1018 	lcall	_screenPrvRegWriteGuts
                                   1019 ;	screenSegmented.c:91: return false;
      001596 40 01            [24] 1020 	jc	00126$
      001598 22               [24] 1021 	ret
      001599                       1022 00126$:
                                   1023 ;	screenSegmented.c:92: if (!screenPrvRegWrite(0x1a, *(uint32_t __xdata *)(data + 24)))
      001599 74 18            [12] 1024 	mov	a,#0x18
      00159B 2E               [12] 1025 	add	a,r6
      00159C FC               [12] 1026 	mov	r4,a
      00159D E4               [12] 1027 	clr	a
      00159E 3F               [12] 1028 	addc	a,r7
      00159F FD               [12] 1029 	mov	r5,a
      0015A0 8C 82            [24] 1030 	mov	dpl,r4
      0015A2 8D 83            [24] 1031 	mov	dph,r5
      0015A4 E0               [24] 1032 	movx	a,@dptr
      0015A5 FA               [12] 1033 	mov	r2,a
      0015A6 A3               [24] 1034 	inc	dptr
      0015A7 E0               [24] 1035 	movx	a,@dptr
      0015A8 FB               [12] 1036 	mov	r3,a
      0015A9 A3               [24] 1037 	inc	dptr
      0015AA E0               [24] 1038 	movx	a,@dptr
      0015AB FC               [12] 1039 	mov	r4,a
      0015AC A3               [24] 1040 	inc	dptr
      0015AD E0               [24] 1041 	movx	a,@dptr
      0015AE FD               [12] 1042 	mov	r5,a
      0015AF 90 E4 26         [24] 1043 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0015B2 74 1A            [12] 1044 	mov	a,#0x1a
      0015B4 F0               [24] 1045 	movx	@dptr,a
      0015B5 8A 82            [24] 1046 	mov	dpl,r2
      0015B7 8B 83            [24] 1047 	mov	dph,r3
      0015B9 8C F0            [24] 1048 	mov	b,r4
      0015BB ED               [12] 1049 	mov	a,r5
      0015BC 12 13 54         [24] 1050 	lcall	_screenPrvRegWriteGuts
                                   1051 ;	screenSegmented.c:93: return false;
      0015BF 40 01            [24] 1052 	jc	00128$
      0015C1 22               [24] 1053 	ret
      0015C2                       1054 00128$:
                                   1055 ;	screenSegmented.c:96: if (!screenPrvRegWrite(0x00, *(uint32_t __xdata *)(data + 27) | (inverted ? 0x200000 : 0x000000)))
      0015C2 74 1B            [12] 1056 	mov	a,#0x1b
      0015C4 2E               [12] 1057 	add	a,r6
      0015C5 FE               [12] 1058 	mov	r6,a
      0015C6 E4               [12] 1059 	clr	a
      0015C7 3F               [12] 1060 	addc	a,r7
      0015C8 FF               [12] 1061 	mov	r7,a
      0015C9 8E 82            [24] 1062 	mov	dpl,r6
      0015CB 8F 83            [24] 1063 	mov	dph,r7
      0015CD E0               [24] 1064 	movx	a,@dptr
      0015CE FC               [12] 1065 	mov	r4,a
      0015CF A3               [24] 1066 	inc	dptr
      0015D0 E0               [24] 1067 	movx	a,@dptr
      0015D1 FD               [12] 1068 	mov	r5,a
      0015D2 A3               [24] 1069 	inc	dptr
      0015D3 E0               [24] 1070 	movx	a,@dptr
      0015D4 FE               [12] 1071 	mov	r6,a
      0015D5 A3               [24] 1072 	inc	dptr
      0015D6 E0               [24] 1073 	movx	a,@dptr
      0015D7 FF               [12] 1074 	mov	r7,a
      0015D8 30 0D 0A         [24] 1075 	jnb	_screenDraw_PARM_2,00148$
      0015DB 78 00            [12] 1076 	mov	r0,#0x00
      0015DD 79 00            [12] 1077 	mov	r1,#0x00
      0015DF 7A 20            [12] 1078 	mov	r2,#0x20
      0015E1 7B 00            [12] 1079 	mov	r3,#0x00
      0015E3 80 08            [24] 1080 	sjmp	00149$
      0015E5                       1081 00148$:
      0015E5 78 00            [12] 1082 	mov	r0,#0x00
      0015E7 79 00            [12] 1083 	mov	r1,#0x00
      0015E9 7A 00            [12] 1084 	mov	r2,#0x00
      0015EB 7B 00            [12] 1085 	mov	r3,#0x00
      0015ED                       1086 00149$:
      0015ED E8               [12] 1087 	mov	a,r0
      0015EE 42 04            [12] 1088 	orl	ar4,a
      0015F0 E9               [12] 1089 	mov	a,r1
      0015F1 42 05            [12] 1090 	orl	ar5,a
      0015F3 EA               [12] 1091 	mov	a,r2
      0015F4 42 06            [12] 1092 	orl	ar6,a
      0015F6 EB               [12] 1093 	mov	a,r3
      0015F7 42 07            [12] 1094 	orl	ar7,a
      0015F9 90 E4 26         [24] 1095 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0015FC E4               [12] 1096 	clr	a
      0015FD F0               [24] 1097 	movx	@dptr,a
      0015FE 8C 82            [24] 1098 	mov	dpl,r4
      001600 8D 83            [24] 1099 	mov	dph,r5
      001602 8E F0            [24] 1100 	mov	b,r6
      001604 EF               [12] 1101 	mov	a,r7
      001605 12 13 54         [24] 1102 	lcall	_screenPrvRegWriteGuts
      001608 50 03            [24] 1103 	jnc	00276$
      00160A 02 16 BF         [24] 1104 	ljmp	00145$
      00160D                       1105 00276$:
                                   1106 ;	screenSegmented.c:97: return false;
      00160D C3               [12] 1107 	clr	c
      00160E 22               [24] 1108 	ret
      00160F                       1109 00144$:
                                   1110 ;	screenSegmented.c:102: if (!screenPrvRegWrite(0x14, 0x440000))
      00160F 90 E4 26         [24] 1111 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001612 74 14            [12] 1112 	mov	a,#0x14
      001614 F0               [24] 1113 	movx	@dptr,a
      001615 90 00 00         [24] 1114 	mov	dptr,#0x0000
      001618 75 F0 44         [24] 1115 	mov	b,#0x44
      00161B E4               [12] 1116 	clr	a
      00161C 12 13 54         [24] 1117 	lcall	_screenPrvRegWriteGuts
                                   1118 ;	screenSegmented.c:103: return false;
      00161F 40 01            [24] 1119 	jc	00132$
      001621 22               [24] 1120 	ret
      001622                       1121 00132$:
                                   1122 ;	screenSegmented.c:104: if (!screenPrvRegWrite(0x15, inverted ? 0x680001 : 0x860000))
      001622 30 0D 0A         [24] 1123 	jnb	_screenDraw_PARM_2,00150$
      001625 7C 01            [12] 1124 	mov	r4,#0x01
      001627 7D 00            [12] 1125 	mov	r5,#0x00
      001629 7E 68            [12] 1126 	mov	r6,#0x68
      00162B 7F 00            [12] 1127 	mov	r7,#0x00
      00162D 80 08            [24] 1128 	sjmp	00151$
      00162F                       1129 00150$:
      00162F 7C 00            [12] 1130 	mov	r4,#0x00
      001631 7D 00            [12] 1131 	mov	r5,#0x00
      001633 7E 86            [12] 1132 	mov	r6,#0x86
      001635 7F 00            [12] 1133 	mov	r7,#0x00
      001637                       1134 00151$:
      001637 90 E4 26         [24] 1135 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      00163A 74 15            [12] 1136 	mov	a,#0x15
      00163C F0               [24] 1137 	movx	@dptr,a
      00163D 8C 82            [24] 1138 	mov	dpl,r4
      00163F 8D 83            [24] 1139 	mov	dph,r5
      001641 8E F0            [24] 1140 	mov	b,r6
      001643 EF               [12] 1141 	mov	a,r7
      001644 12 13 54         [24] 1142 	lcall	_screenPrvRegWriteGuts
                                   1143 ;	screenSegmented.c:105: return false;
      001647 40 01            [24] 1144 	jc	00134$
      001649 22               [24] 1145 	ret
      00164A                       1146 00134$:
                                   1147 ;	screenSegmented.c:106: if (!screenPrvRegWrite(0x16, inverted ? 0x240000 : 0x040000))
      00164A 30 0D 0A         [24] 1148 	jnb	_screenDraw_PARM_2,00152$
      00164D 7C 00            [12] 1149 	mov	r4,#0x00
      00164F 7D 00            [12] 1150 	mov	r5,#0x00
      001651 7E 24            [12] 1151 	mov	r6,#0x24
      001653 7F 00            [12] 1152 	mov	r7,#0x00
      001655 80 08            [24] 1153 	sjmp	00153$
      001657                       1154 00152$:
      001657 7C 00            [12] 1155 	mov	r4,#0x00
      001659 7D 00            [12] 1156 	mov	r5,#0x00
      00165B 7E 04            [12] 1157 	mov	r6,#0x04
      00165D 7F 00            [12] 1158 	mov	r7,#0x00
      00165F                       1159 00153$:
      00165F 90 E4 26         [24] 1160 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001662 74 16            [12] 1161 	mov	a,#0x16
      001664 F0               [24] 1162 	movx	@dptr,a
      001665 8C 82            [24] 1163 	mov	dpl,r4
      001667 8D 83            [24] 1164 	mov	dph,r5
      001669 8E F0            [24] 1165 	mov	b,r6
      00166B EF               [12] 1166 	mov	a,r7
      00166C 12 13 54         [24] 1167 	lcall	_screenPrvRegWriteGuts
                                   1168 ;	screenSegmented.c:107: return false;
      00166F 40 01            [24] 1169 	jc	00136$
      001671 22               [24] 1170 	ret
      001672                       1171 00136$:
                                   1172 ;	screenSegmented.c:109: if (!screenPrvRegWrite(0x19, 0x082514))
      001672 90 E4 26         [24] 1173 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001675 74 19            [12] 1174 	mov	a,#0x19
      001677 F0               [24] 1175 	movx	@dptr,a
      001678 90 25 14         [24] 1176 	mov	dptr,#0x2514
      00167B 75 F0 08         [24] 1177 	mov	b,#0x08
      00167E E4               [12] 1178 	clr	a
      00167F 12 13 54         [24] 1179 	lcall	_screenPrvRegWriteGuts
                                   1180 ;	screenSegmented.c:110: return false;
      001682 40 01            [24] 1181 	jc	00138$
      001684 22               [24] 1182 	ret
      001685                       1183 00138$:
                                   1184 ;	screenSegmented.c:111: if (!screenPrvRegWrite(0x1a, 0xa02000))
      001685 90 E4 26         [24] 1185 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      001688 74 1A            [12] 1186 	mov	a,#0x1a
      00168A F0               [24] 1187 	movx	@dptr,a
      00168B 90 20 00         [24] 1188 	mov	dptr,#0x2000
      00168E 75 F0 A0         [24] 1189 	mov	b,#0xa0
      001691 E4               [12] 1190 	clr	a
      001692 12 13 54         [24] 1191 	lcall	_screenPrvRegWriteGuts
                                   1192 ;	screenSegmented.c:112: return false;
      001695 40 01            [24] 1193 	jc	00140$
      001697 22               [24] 1194 	ret
      001698                       1195 00140$:
                                   1196 ;	screenSegmented.c:115: if (!screenPrvRegWrite(0x00, inverted ? 0xa0001c : 0x80001c))
      001698 30 0D 0A         [24] 1197 	jnb	_screenDraw_PARM_2,00154$
      00169B 7C 1C            [12] 1198 	mov	r4,#0x1c
      00169D 7D 00            [12] 1199 	mov	r5,#0x00
      00169F 7E A0            [12] 1200 	mov	r6,#0xa0
      0016A1 7F 00            [12] 1201 	mov	r7,#0x00
      0016A3 80 08            [24] 1202 	sjmp	00155$
      0016A5                       1203 00154$:
      0016A5 7C 1C            [12] 1204 	mov	r4,#0x1c
      0016A7 7D 00            [12] 1205 	mov	r5,#0x00
      0016A9 7E 80            [12] 1206 	mov	r6,#0x80
      0016AB 7F 00            [12] 1207 	mov	r7,#0x00
      0016AD                       1208 00155$:
      0016AD 90 E4 26         [24] 1209 	mov	dptr,#_screenPrvRegWriteGuts_PARM_2
      0016B0 E4               [12] 1210 	clr	a
      0016B1 F0               [24] 1211 	movx	@dptr,a
      0016B2 8C 82            [24] 1212 	mov	dpl,r4
      0016B4 8D 83            [24] 1213 	mov	dph,r5
      0016B6 8E F0            [24] 1214 	mov	b,r6
      0016B8 EF               [12] 1215 	mov	a,r7
      0016B9 12 13 54         [24] 1216 	lcall	_screenPrvRegWriteGuts
                                   1217 ;	screenSegmented.c:116: return false;
      0016BC 40 01            [24] 1218 	jc	00145$
      0016BE 22               [24] 1219 	ret
      0016BF                       1220 00145$:
                                   1221 ;	screenSegmented.c:118: timerDelay(TIMER_TICKS_PER_SECOND / 1000);
      0016BF 90 05 35         [24] 1222 	mov	dptr,#0x0535
      0016C2 E4               [12] 1223 	clr	a
      0016C3 F5 F0            [12] 1224 	mov	b,a
      0016C5 12 0E EF         [24] 1225 	lcall	_timerDelay
                                   1226 ;	screenSegmented.c:120: screen_start_time = timerGet();
      0016C8 12 0E 71         [24] 1227 	lcall	_timerGet
      0016CB AC 82            [24] 1228 	mov	r4,dpl
      0016CD AD 83            [24] 1229 	mov	r5,dph
      0016CF AE F0            [24] 1230 	mov	r6,b
      0016D1 FF               [12] 1231 	mov	r7,a
      0016D2 90 E4 6A         [24] 1232 	mov	dptr,#_screen_start_time
      0016D5 EC               [12] 1233 	mov	a,r4
      0016D6 F0               [24] 1234 	movx	@dptr,a
      0016D7 ED               [12] 1235 	mov	a,r5
      0016D8 A3               [24] 1236 	inc	dptr
      0016D9 F0               [24] 1237 	movx	@dptr,a
      0016DA EE               [12] 1238 	mov	a,r6
      0016DB A3               [24] 1239 	inc	dptr
      0016DC F0               [24] 1240 	movx	@dptr,a
      0016DD EF               [12] 1241 	mov	a,r7
      0016DE A3               [24] 1242 	inc	dptr
      0016DF F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	screenSegmented.c:121: display_is_drawing = 1;
                                   1245 ;	assignBit
      0016E0 D2 0C            [12] 1246 	setb	_display_is_drawing
                                   1247 ;	screenSegmented.c:122: return true;
      0016E2 D3               [12] 1248 	setb	c
                                   1249 ;	screenSegmented.c:123: }
      0016E3 22               [24] 1250 	ret
                                   1251 ;------------------------------------------------------------
                                   1252 ;Allocation info for local variables in function 'display_end'
                                   1253 ;------------------------------------------------------------
                                   1254 ;	screenSegmented.c:125: void display_end()
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function display_end
                                   1257 ;	-----------------------------------------
      0016E4                       1258 _display_end:
                                   1259 ;	screenSegmented.c:127: P1_7 = 0; // assert reset
                                   1260 ;	assignBit
      0016E4 C2 97            [12] 1261 	clr	_P1_7
                                   1262 ;	screenSegmented.c:128: timerDelay(TIMER_TICKS_PER_SECOND / 100);
      0016E6 90 34 15         [24] 1263 	mov	dptr,#0x3415
      0016E9 E4               [12] 1264 	clr	a
      0016EA F5 F0            [12] 1265 	mov	b,a
      0016EC 12 0E EF         [24] 1266 	lcall	_timerDelay
                                   1267 ;	screenSegmented.c:129: P2_2 = 0; // power it dowm
                                   1268 ;	assignBit
      0016EF C2 A2            [12] 1269 	clr	_P2_2
                                   1270 ;	screenSegmented.c:131: P1FUNC &= ~0x40;
      0016F1 53 AE BF         [24] 1271 	anl	_P1FUNC,#0xbf
                                   1272 ;	screenSegmented.c:132: }
      0016F4 22               [24] 1273 	ret
                                   1274 ;------------------------------------------------------------
                                   1275 ;Allocation info for local variables in function 'is_drawing'
                                   1276 ;------------------------------------------------------------
                                   1277 ;	screenSegmented.c:134: uint8_t is_drawing()
                                   1278 ;	-----------------------------------------
                                   1279 ;	 function is_drawing
                                   1280 ;	-----------------------------------------
      0016F5                       1281 _is_drawing:
                                   1282 ;	screenSegmented.c:136: if (display_is_drawing)
      0016F5 30 0C 43         [24] 1283 	jnb	_display_is_drawing,00105$
                                   1284 ;	screenSegmented.c:138: if (!P2_0 || (timerGet() - screen_start_time > (TIMER_TICKS_PER_SECOND*3)))
      0016F8 30 A0 33         [24] 1285 	jnb	_P2_0,00101$
      0016FB 12 0E 71         [24] 1286 	lcall	_timerGet
      0016FE AC 82            [24] 1287 	mov	r4,dpl
      001700 AD 83            [24] 1288 	mov	r5,dph
      001702 AE F0            [24] 1289 	mov	r6,b
      001704 FF               [12] 1290 	mov	r7,a
      001705 90 E4 6A         [24] 1291 	mov	dptr,#_screen_start_time
      001708 E0               [24] 1292 	movx	a,@dptr
      001709 F8               [12] 1293 	mov	r0,a
      00170A A3               [24] 1294 	inc	dptr
      00170B E0               [24] 1295 	movx	a,@dptr
      00170C F9               [12] 1296 	mov	r1,a
      00170D A3               [24] 1297 	inc	dptr
      00170E E0               [24] 1298 	movx	a,@dptr
      00170F FA               [12] 1299 	mov	r2,a
      001710 A3               [24] 1300 	inc	dptr
      001711 E0               [24] 1301 	movx	a,@dptr
      001712 FB               [12] 1302 	mov	r3,a
      001713 EC               [12] 1303 	mov	a,r4
      001714 C3               [12] 1304 	clr	c
      001715 98               [12] 1305 	subb	a,r0
      001716 FC               [12] 1306 	mov	r4,a
      001717 ED               [12] 1307 	mov	a,r5
      001718 99               [12] 1308 	subb	a,r1
      001719 FD               [12] 1309 	mov	r5,a
      00171A EE               [12] 1310 	mov	a,r6
      00171B 9A               [12] 1311 	subb	a,r2
      00171C FE               [12] 1312 	mov	r6,a
      00171D EF               [12] 1313 	mov	a,r7
      00171E 9B               [12] 1314 	subb	a,r3
      00171F FF               [12] 1315 	mov	r7,a
      001720 C3               [12] 1316 	clr	c
      001721 74 FF            [12] 1317 	mov	a,#0xff
      001723 9C               [12] 1318 	subb	a,r4
      001724 74 08            [12] 1319 	mov	a,#0x08
      001726 9D               [12] 1320 	subb	a,r5
      001727 74 3D            [12] 1321 	mov	a,#0x3d
      001729 9E               [12] 1322 	subb	a,r6
      00172A E4               [12] 1323 	clr	a
      00172B 9F               [12] 1324 	subb	a,r7
      00172C 50 09            [24] 1325 	jnc	00102$
      00172E                       1326 00101$:
                                   1327 ;	screenSegmented.c:140: display_end();
      00172E 12 16 E4         [24] 1328 	lcall	_display_end
                                   1329 ;	screenSegmented.c:141: display_is_drawing = 0;
                                   1330 ;	assignBit
      001731 C2 0C            [12] 1331 	clr	_display_is_drawing
                                   1332 ;	screenSegmented.c:142: return 0;
      001733 75 82 00         [24] 1333 	mov	dpl,#0x00
      001736 22               [24] 1334 	ret
      001737                       1335 00102$:
                                   1336 ;	screenSegmented.c:144: return 1;
      001737 75 82 01         [24] 1337 	mov	dpl,#0x01
      00173A 22               [24] 1338 	ret
      00173B                       1339 00105$:
                                   1340 ;	screenSegmented.c:146: return 0;
      00173B 75 82 00         [24] 1341 	mov	dpl,#0x00
                                   1342 ;	screenSegmented.c:147: }
      00173E 22               [24] 1343 	ret
                                   1344 	.area CSEG    (CODE)
                                   1345 	.area CONST   (CODE)
                                   1346 	.area XINIT   (CODE)
      001909                       1347 __xinit__screen_start_time:
      001909 00 00 00 00           1348 	.byte #0x00, #0x00, #0x00, #0x00	; 0
                                   1349 	.area CABS    (ABS,CODE)
