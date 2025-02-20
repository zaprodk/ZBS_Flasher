                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.1 #12107 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UART_TXE
                                     12 	.globl _UART_RXF
                                     13 	.globl _IEN_EA
                                     14 	.globl _IEN_RF2
                                     15 	.globl _IEN_RF1
                                     16 	.globl _IEN_TMR1
                                     17 	.globl _IEN_TMR0
                                     18 	.globl _IEN_UART0
                                     19 	.globl _P2_7
                                     20 	.globl _P2_6
                                     21 	.globl _P2_5
                                     22 	.globl _P2_4
                                     23 	.globl _P2_3
                                     24 	.globl _P2_2
                                     25 	.globl _P2_1
                                     26 	.globl _P2_0
                                     27 	.globl _P1_7
                                     28 	.globl _P1_6
                                     29 	.globl _P1_5
                                     30 	.globl _P1_4
                                     31 	.globl _P1_3
                                     32 	.globl _P1_2
                                     33 	.globl _P1_1
                                     34 	.globl _P1_0
                                     35 	.globl _P0_7
                                     36 	.globl _P0_6
                                     37 	.globl _P0_5
                                     38 	.globl _P0_4
                                     39 	.globl _P0_3
                                     40 	.globl _P0_2
                                     41 	.globl _P0_1
                                     42 	.globl _P0_0
                                     43 	.globl _CFGPAGE
                                     44 	.globl _TCON2
                                     45 	.globl _SETTINGS
                                     46 	.globl _TRIGGER
                                     47 	.globl _UNK_C1
                                     48 	.globl _RADIO_GOTLEN
                                     49 	.globl _RADIO_INITSEQ3
                                     50 	.globl _RADIO_RXLEN
                                     51 	.globl _RADIO_RXPTRH
                                     52 	.globl _RADIO_RXPTRL
                                     53 	.globl _RADIO_INITSEQ5
                                     54 	.globl _RADIO_INITSEQ4
                                     55 	.globl _RADIO_INITSEQ0
                                     56 	.globl _RADIO_TXLEN
                                     57 	.globl _RADIO_INITSEQ2
                                     58 	.globl _RADIO_INITSEQ1
                                     59 	.globl _RADIO_TXPTRH
                                     60 	.globl _RADIO_TXPTRL
                                     61 	.globl _TEMPCAL6
                                     62 	.globl _TEMPCAL5
                                     63 	.globl _TEMPCAL4
                                     64 	.globl _TEMPCAL3
                                     65 	.globl _TEMPRETL
                                     66 	.globl _TEMPRETH
                                     67 	.globl _TEMPCFG
                                     68 	.globl _TEMPCAL2
                                     69 	.globl _TEMPCAL1
                                     70 	.globl _FWRTHREE
                                     71 	.globl _FWRLENH
                                     72 	.globl _FWRLENL
                                     73 	.globl _FWRDSTH
                                     74 	.globl _FWRDSTL
                                     75 	.globl _FWRSRCH
                                     76 	.globl _FWRSRCL
                                     77 	.globl _FPGNO
                                     78 	.globl _T1
                                     79 	.globl _T0
                                     80 	.globl _TH1
                                     81 	.globl _TH0
                                     82 	.globl _TL1
                                     83 	.globl _TL0
                                     84 	.globl _TMOD
                                     85 	.globl _TCON
                                     86 	.globl _UARTBRGH
                                     87 	.globl _UARTBRGL
                                     88 	.globl _UARTBUF
                                     89 	.globl _UARTSTA
                                     90 	.globl _I2CUNKNOWN
                                     91 	.globl _I2CSPEED
                                     92 	.globl _I2CCTL
                                     93 	.globl _I2CBUF
                                     94 	.globl _I2CSTATE
                                     95 	.globl _SPIRX
                                     96 	.globl _SPITX
                                     97 	.globl _SPIENA
                                     98 	.globl _SPICFG
                                     99 	.globl _SPIUNKNOWN
                                    100 	.globl _WDTCONF
                                    101 	.globl _WDTRSTVALH
                                    102 	.globl _WDTRSTVALM
                                    103 	.globl _WDTRSTVALL
                                    104 	.globl _WDTPET
                                    105 	.globl _WDTENA
                                    106 	.globl _RESET
                                    107 	.globl _CLKEN
                                    108 	.globl _CLKSPEED
                                    109 	.globl _IEN1
                                    110 	.globl _IEN0
                                    111 	.globl _XPAGE
                                    112 	.globl _P2PULL
                                    113 	.globl _P1PULL
                                    114 	.globl _P0PULL
                                    115 	.globl _P2DIR
                                    116 	.globl _P1DIR
                                    117 	.globl _P0DIR
                                    118 	.globl _P2FUNC
                                    119 	.globl _P1FUNC
                                    120 	.globl _P0FUNC
                                    121 	.globl _P2CHSTA
                                    122 	.globl _P1CHSTA
                                    123 	.globl _P0CHSTA
                                    124 	.globl _P2INTEN
                                    125 	.globl _P1INTEN
                                    126 	.globl _P0INTEN
                                    127 	.globl _P2LVLSEL
                                    128 	.globl _P1LVLSEL
                                    129 	.globl _P0LVLSEL
                                    130 	.globl _P2
                                    131 	.globl _P1
                                    132 	.globl _P0
                                    133 	.globl _PERFMON4
                                    134 	.globl _PCL
                                    135 	.globl _PCH
                                    136 	.globl _PERFMON1
                                    137 	.globl _PERFMON0
                                    138 	.globl _PCON
                                    139 	.globl _DPS
                                    140 	.globl _DPH1
                                    141 	.globl _DPL1
                                    142 	.globl _DPH
                                    143 	.globl _DPL
                                    144 	.globl _ACC
                                    145 	.globl _B
                                    146 	.globl _T0_ISR
                                    147 	.globl _timerGet
                                    148 	.globl _timerGetLowBits
                                    149 	.globl _timerInit
                                    150 	.globl _timerDelay
                                    151 ;--------------------------------------------------------
                                    152 ; special function registers
                                    153 ;--------------------------------------------------------
                                    154 	.area RSEG    (ABS,DATA)
      000000                        155 	.org 0x0000
                           0000F0   156 _B	=	0x00f0
                           0000E0   157 _ACC	=	0x00e0
                           000082   158 _DPL	=	0x0082
                           000083   159 _DPH	=	0x0083
                           000084   160 _DPL1	=	0x0084
                           000085   161 _DPH1	=	0x0085
                           000092   162 _DPS	=	0x0092
                           000087   163 _PCON	=	0x0087
                           0000B2   164 _PERFMON0	=	0x00b2
                           0000B3   165 _PERFMON1	=	0x00b3
                           0000B4   166 _PCH	=	0x00b4
                           0000B5   167 _PCL	=	0x00b5
                           0000B6   168 _PERFMON4	=	0x00b6
                           000080   169 _P0	=	0x0080
                           000090   170 _P1	=	0x0090
                           0000A0   171 _P2	=	0x00a0
                           0000A3   172 _P0LVLSEL	=	0x00a3
                           0000A4   173 _P1LVLSEL	=	0x00a4
                           0000A5   174 _P2LVLSEL	=	0x00a5
                           0000A6   175 _P0INTEN	=	0x00a6
                           0000A7   176 _P1INTEN	=	0x00a7
                           0000A9   177 _P2INTEN	=	0x00a9
                           0000AA   178 _P0CHSTA	=	0x00aa
                           0000AB   179 _P1CHSTA	=	0x00ab
                           0000AC   180 _P2CHSTA	=	0x00ac
                           0000AD   181 _P0FUNC	=	0x00ad
                           0000AE   182 _P1FUNC	=	0x00ae
                           0000AF   183 _P2FUNC	=	0x00af
                           0000B9   184 _P0DIR	=	0x00b9
                           0000BA   185 _P1DIR	=	0x00ba
                           0000BB   186 _P2DIR	=	0x00bb
                           0000BC   187 _P0PULL	=	0x00bc
                           0000BD   188 _P1PULL	=	0x00bd
                           0000BE   189 _P2PULL	=	0x00be
                           0000A0   190 _XPAGE	=	0x00a0
                           0000A8   191 _IEN0	=	0x00a8
                           0000A1   192 _IEN1	=	0x00a1
                           00008E   193 _CLKSPEED	=	0x008e
                           0000B7   194 _CLKEN	=	0x00b7
                           00008F   195 _RESET	=	0x008f
                           0000BA   196 _WDTENA	=	0x00ba
                           0000BB   197 _WDTPET	=	0x00bb
                           0000BC   198 _WDTRSTVALL	=	0x00bc
                           0000BD   199 _WDTRSTVALM	=	0x00bd
                           0000BE   200 _WDTRSTVALH	=	0x00be
                           0000BF   201 _WDTCONF	=	0x00bf
                           0000EB   202 _SPIUNKNOWN	=	0x00eb
                           0000EC   203 _SPICFG	=	0x00ec
                           0000ED   204 _SPIENA	=	0x00ed
                           0000EE   205 _SPITX	=	0x00ee
                           0000EF   206 _SPIRX	=	0x00ef
                           000091   207 _I2CSTATE	=	0x0091
                           000094   208 _I2CBUF	=	0x0094
                           000095   209 _I2CCTL	=	0x0095
                           000096   210 _I2CSPEED	=	0x0096
                           0000A2   211 _I2CUNKNOWN	=	0x00a2
                           000098   212 _UARTSTA	=	0x0098
                           000099   213 _UARTBUF	=	0x0099
                           00009A   214 _UARTBRGL	=	0x009a
                           00009B   215 _UARTBRGH	=	0x009b
                           000088   216 _TCON	=	0x0088
                           000089   217 _TMOD	=	0x0089
                           00008A   218 _TL0	=	0x008a
                           00008B   219 _TL1	=	0x008b
                           00008C   220 _TH0	=	0x008c
                           00008D   221 _TH1	=	0x008d
                           008C8A   222 _T0	=	0x8c8a
                           008D8B   223 _T1	=	0x8d8b
                           0000D8   224 _FPGNO	=	0x00d8
                           0000D9   225 _FWRSRCL	=	0x00d9
                           0000DA   226 _FWRSRCH	=	0x00da
                           0000DB   227 _FWRDSTL	=	0x00db
                           0000DC   228 _FWRDSTH	=	0x00dc
                           0000DD   229 _FWRLENL	=	0x00dd
                           0000DE   230 _FWRLENH	=	0x00de
                           0000DF   231 _FWRTHREE	=	0x00df
                           0000E6   232 _TEMPCAL1	=	0x00e6
                           0000E7   233 _TEMPCAL2	=	0x00e7
                           0000F7   234 _TEMPCFG	=	0x00f7
                           0000F8   235 _TEMPRETH	=	0x00f8
                           0000F9   236 _TEMPRETL	=	0x00f9
                           0000FB   237 _TEMPCAL3	=	0x00fb
                           0000FC   238 _TEMPCAL4	=	0x00fc
                           0000FD   239 _TEMPCAL5	=	0x00fd
                           0000FE   240 _TEMPCAL6	=	0x00fe
                           0000C9   241 _RADIO_TXPTRL	=	0x00c9
                           0000CA   242 _RADIO_TXPTRH	=	0x00ca
                           0000CB   243 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   244 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   245 _RADIO_TXLEN	=	0x00cd
                           0000CE   246 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   247 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   248 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   249 _RADIO_RXPTRL	=	0x00d3
                           0000D4   250 _RADIO_RXPTRH	=	0x00d4
                           0000D5   251 _RADIO_RXLEN	=	0x00d5
                           0000D6   252 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   253 _RADIO_GOTLEN	=	0x00fa
                           0000C1   254 _UNK_C1	=	0x00c1
                           0000D7   255 _TRIGGER	=	0x00d7
                           0000C7   256 _SETTINGS	=	0x00c7
                           0000CF   257 _TCON2	=	0x00cf
                           0000FF   258 _CFGPAGE	=	0x00ff
                                    259 ;--------------------------------------------------------
                                    260 ; special function bits
                                    261 ;--------------------------------------------------------
                                    262 	.area RSEG    (ABS,DATA)
      000000                        263 	.org 0x0000
                           000080   264 _P0_0	=	0x0080
                           000081   265 _P0_1	=	0x0081
                           000082   266 _P0_2	=	0x0082
                           000083   267 _P0_3	=	0x0083
                           000084   268 _P0_4	=	0x0084
                           000085   269 _P0_5	=	0x0085
                           000086   270 _P0_6	=	0x0086
                           000087   271 _P0_7	=	0x0087
                           000090   272 _P1_0	=	0x0090
                           000091   273 _P1_1	=	0x0091
                           000092   274 _P1_2	=	0x0092
                           000093   275 _P1_3	=	0x0093
                           000094   276 _P1_4	=	0x0094
                           000095   277 _P1_5	=	0x0095
                           000096   278 _P1_6	=	0x0096
                           000097   279 _P1_7	=	0x0097
                           0000A0   280 _P2_0	=	0x00a0
                           0000A1   281 _P2_1	=	0x00a1
                           0000A2   282 _P2_2	=	0x00a2
                           0000A3   283 _P2_3	=	0x00a3
                           0000A4   284 _P2_4	=	0x00a4
                           0000A5   285 _P2_5	=	0x00a5
                           0000A6   286 _P2_6	=	0x00a6
                           0000A7   287 _P2_7	=	0x00a7
                           0000A8   288 _IEN_UART0	=	0x00a8
                           0000A9   289 _IEN_TMR0	=	0x00a9
                           0000AB   290 _IEN_TMR1	=	0x00ab
                           0000AC   291 _IEN_RF1	=	0x00ac
                           0000AD   292 _IEN_RF2	=	0x00ad
                           0000AF   293 _IEN_EA	=	0x00af
                           000098   294 _UART_RXF	=	0x0098
                           000099   295 _UART_TXE	=	0x0099
                                    296 ;--------------------------------------------------------
                                    297 ; overlayable register banks
                                    298 ;--------------------------------------------------------
                                    299 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        300 	.ds 8
                                    301 ;--------------------------------------------------------
                                    302 ; internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area DSEG    (DATA)
      000018                        305 _timerDelay_sloc0_1_0:
      000018                        306 	.ds 4
                                    307 ;--------------------------------------------------------
                                    308 ; overlayable items in internal ram 
                                    309 ;--------------------------------------------------------
                                    310 ;--------------------------------------------------------
                                    311 ; indirectly addressable internal ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area ISEG    (DATA)
                           000000   314 _R0	=	0x0000
                           000001   315 _R1	=	0x0001
                           000002   316 _R2	=	0x0002
                           000003   317 _R3	=	0x0003
                           000004   318 _R4	=	0x0004
                           000005   319 _R5	=	0x0005
                           000006   320 _R6	=	0x0006
                           000007   321 _R7	=	0x0007
                                    322 ;--------------------------------------------------------
                                    323 ; absolute internal ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area IABS    (ABS,DATA)
                                    326 	.area IABS    (ABS,DATA)
                                    327 ;--------------------------------------------------------
                                    328 ; bit data
                                    329 ;--------------------------------------------------------
                                    330 	.area BSEG    (BIT)
                                    331 ;--------------------------------------------------------
                                    332 ; paged external ram data
                                    333 ;--------------------------------------------------------
                                    334 	.area PSEG    (PAG,XDATA)
                                    335 ;--------------------------------------------------------
                                    336 ; external ram data
                                    337 ;--------------------------------------------------------
                                    338 	.area XSEG    (XDATA)
                           00DF48   339 _RADIO_command	=	0xdf48
                           00DF70   340 _RADIO_calibration_70	=	0xdf70
                           00DF71   341 _RADIO_calibration_71	=	0xdf71
                           00DF80   342 _RADIO_FLAGS	=	0xdf80
                           00DF81   343 _RADIO_calibration_81	=	0xdf81
                           00DF83   344 _RADIO_unk_83	=	0xdf83
                           00DF84   345 _RADIO_currentRSSI	=	0xdf84
                           00DF86   346 _RADIO_calibration_86	=	0xdf86
                           00DF88   347 _RADIO_ownMac_7	=	0xdf88
                           00DF89   348 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   349 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   350 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   351 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   352 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   353 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   354 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   355 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   356 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   357 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   358 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   359 _RADIO_calibration_94	=	0xdf94
                           00DF95   360 _RADIO_calibration_95	=	0xdf95
                           00DF96   361 _RADIO_calibration_96	=	0xdf96
                           00DF98   362 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   363 _RADIO_curRfState	=	0xdf9b
                           00DF9D   364 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   365 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   366 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   367 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   368 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   369 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   370 _RADIO_channel	=	0xdfc0
                           00DFC1   371 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   372 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   373 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   374 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   375 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   376 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   377 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   378 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   379 _RADIO_txPower	=	0xdfc9
                           00DFCA   380 _RADIO_unk_CA	=	0xdfca
                           00DFCB   381 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   382 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   383 _RADIO_unk_CE	=	0xdfce
                           00DFCF   384 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   385 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   386 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   387 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   388 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   389 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   390 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   391 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   392 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   393 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   394 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   395 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   396 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   397 _RADIO_unk_F0	=	0xdff0
                           00DFF3   398 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   399 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFD   400 _RADIO_perChannelSetting1	=	0xdffd
      00E3FC                        401 _mTmrHi:
      00E3FC                        402 	.ds 2
      00E3FE                        403 _timerGet_val_65536_9:
      00E3FE                        404 	.ds 4
      00E402                        405 _timerDelay_ticks_65536_15:
      00E402                        406 	.ds 4
                                    407 ;--------------------------------------------------------
                                    408 ; absolute external ram data
                                    409 ;--------------------------------------------------------
                                    410 	.area XABS    (ABS,XDATA)
                                    411 ;--------------------------------------------------------
                                    412 ; external initialized ram data
                                    413 ;--------------------------------------------------------
                                    414 	.area XISEG   (XDATA)
                                    415 	.area HOME    (CODE)
                                    416 	.area GSINIT0 (CODE)
                                    417 	.area GSINIT1 (CODE)
                                    418 	.area GSINIT2 (CODE)
                                    419 	.area GSINIT3 (CODE)
                                    420 	.area GSINIT4 (CODE)
                                    421 	.area GSINIT5 (CODE)
                                    422 	.area GSINIT  (CODE)
                                    423 	.area GSFINAL (CODE)
                                    424 	.area CSEG    (CODE)
                                    425 ;--------------------------------------------------------
                                    426 ; global & static initialisations
                                    427 ;--------------------------------------------------------
                                    428 	.area HOME    (CODE)
                                    429 	.area GSINIT  (CODE)
                                    430 	.area GSFINAL (CODE)
                                    431 	.area GSINIT  (CODE)
                                    432 ;--------------------------------------------------------
                                    433 ; Home
                                    434 ;--------------------------------------------------------
                                    435 	.area HOME    (CODE)
                                    436 	.area HOME    (CODE)
                                    437 ;--------------------------------------------------------
                                    438 ; code
                                    439 ;--------------------------------------------------------
                                    440 	.area CSEG    (CODE)
                                    441 ;------------------------------------------------------------
                                    442 ;Allocation info for local variables in function 'T0_ISR'
                                    443 ;------------------------------------------------------------
                                    444 ;	timer.c:7: void T0_ISR(void) __interrupt (1)
                                    445 ;	-----------------------------------------
                                    446 ;	 function T0_ISR
                                    447 ;	-----------------------------------------
      000E3F                        448 _T0_ISR:
                           000007   449 	ar7 = 0x07
                           000006   450 	ar6 = 0x06
                           000005   451 	ar5 = 0x05
                           000004   452 	ar4 = 0x04
                           000003   453 	ar3 = 0x03
                           000002   454 	ar2 = 0x02
                           000001   455 	ar1 = 0x01
                           000000   456 	ar0 = 0x00
      000E3F C0 E0            [24]  457 	push	acc
      000E41 C0 82            [24]  458 	push	dpl
      000E43 C0 83            [24]  459 	push	dph
      000E45 C0 07            [24]  460 	push	ar7
      000E47 C0 06            [24]  461 	push	ar6
      000E49 C0 D0            [24]  462 	push	psw
      000E4B 75 D0 00         [24]  463 	mov	psw,#0x00
                                    464 ;	timer.c:9: TCON &=~ 0x20;	//clear flag
      000E4E 53 88 DF         [24]  465 	anl	_TCON,#0xdf
                                    466 ;	timer.c:10: mTmrHi++;
      000E51 90 E3 FC         [24]  467 	mov	dptr,#_mTmrHi
      000E54 E0               [24]  468 	movx	a,@dptr
      000E55 FE               [12]  469 	mov	r6,a
      000E56 A3               [24]  470 	inc	dptr
      000E57 E0               [24]  471 	movx	a,@dptr
      000E58 FF               [12]  472 	mov	r7,a
      000E59 90 E3 FC         [24]  473 	mov	dptr,#_mTmrHi
      000E5C 74 01            [12]  474 	mov	a,#0x01
      000E5E 2E               [12]  475 	add	a,r6
      000E5F F0               [24]  476 	movx	@dptr,a
      000E60 E4               [12]  477 	clr	a
      000E61 3F               [12]  478 	addc	a,r7
      000E62 A3               [24]  479 	inc	dptr
      000E63 F0               [24]  480 	movx	@dptr,a
                                    481 ;	timer.c:11: }
      000E64 D0 D0            [24]  482 	pop	psw
      000E66 D0 06            [24]  483 	pop	ar6
      000E68 D0 07            [24]  484 	pop	ar7
      000E6A D0 83            [24]  485 	pop	dph
      000E6C D0 82            [24]  486 	pop	dpl
      000E6E D0 E0            [24]  487 	pop	acc
      000E70 32               [24]  488 	reti
                                    489 ;	eliminated unneeded push/pop b
                                    490 ;------------------------------------------------------------
                                    491 ;Allocation info for local variables in function 'timerGet'
                                    492 ;------------------------------------------------------------
                                    493 ;val                       Allocated with name '_timerGet_val_65536_9'
                                    494 ;------------------------------------------------------------
                                    495 ;	timer.c:13: uint32_t timerGet(void)
                                    496 ;	-----------------------------------------
                                    497 ;	 function timerGet
                                    498 ;	-----------------------------------------
      000E71                        499 _timerGet:
      000E71 C0 07            [24]  500 	push	ar7
      000E73 C0 06            [24]  501 	push	ar6
      000E75 C0 05            [24]  502 	push	ar5
      000E77 C0 04            [24]  503 	push	ar4
                                    504 ;	timer.c:24: do {
      000E79                        505 00102$:
                                    506 ;	timer.c:25: val.hi = mTmrHi;
      000E79 90 E3 FC         [24]  507 	mov	dptr,#_mTmrHi
      000E7C E0               [24]  508 	movx	a,@dptr
      000E7D FE               [12]  509 	mov	r6,a
      000E7E A3               [24]  510 	inc	dptr
      000E7F E0               [24]  511 	movx	a,@dptr
      000E80 FF               [12]  512 	mov	r7,a
      000E81 90 E4 00         [24]  513 	mov	dptr,#(_timerGet_val_65536_9 + 0x0002)
      000E84 EE               [12]  514 	mov	a,r6
      000E85 F0               [24]  515 	movx	@dptr,a
      000E86 EF               [12]  516 	mov	a,r7
      000E87 A3               [24]  517 	inc	dptr
      000E88 F0               [24]  518 	movx	@dptr,a
                                    519 ;	timer.c:26: val.tH = TH0;
      000E89 90 E3 FF         [24]  520 	mov	dptr,#(_timerGet_val_65536_9 + 0x0001)
      000E8C E5 8C            [12]  521 	mov	a,_TH0
      000E8E F0               [24]  522 	movx	@dptr,a
                                    523 ;	timer.c:27: val.tL = TL0;	//read order is important due ot hardware buffering
      000E8F 90 E3 FE         [24]  524 	mov	dptr,#_timerGet_val_65536_9
      000E92 E5 8A            [12]  525 	mov	a,_TL0
      000E94 F0               [24]  526 	movx	@dptr,a
                                    527 ;	timer.c:28: } while (val.hi != mTmrHi || val.tH != TH0);
      000E95 90 E4 00         [24]  528 	mov	dptr,#(_timerGet_val_65536_9 + 0x0002)
      000E98 E0               [24]  529 	movx	a,@dptr
      000E99 FE               [12]  530 	mov	r6,a
      000E9A A3               [24]  531 	inc	dptr
      000E9B E0               [24]  532 	movx	a,@dptr
      000E9C FF               [12]  533 	mov	r7,a
      000E9D 90 E3 FC         [24]  534 	mov	dptr,#_mTmrHi
      000EA0 E0               [24]  535 	movx	a,@dptr
      000EA1 FC               [12]  536 	mov	r4,a
      000EA2 A3               [24]  537 	inc	dptr
      000EA3 E0               [24]  538 	movx	a,@dptr
      000EA4 FD               [12]  539 	mov	r5,a
      000EA5 EE               [12]  540 	mov	a,r6
      000EA6 B5 04 D0         [24]  541 	cjne	a,ar4,00102$
      000EA9 EF               [12]  542 	mov	a,r7
      000EAA B5 05 CC         [24]  543 	cjne	a,ar5,00102$
      000EAD 90 E3 FF         [24]  544 	mov	dptr,#(_timerGet_val_65536_9 + 0x0001)
      000EB0 E0               [24]  545 	movx	a,@dptr
      000EB1 FF               [12]  546 	mov	r7,a
      000EB2 B5 8C C4         [24]  547 	cjne	a,_TH0,00102$
                                    548 ;	timer.c:30: return val.ret;
      000EB5 90 E3 FE         [24]  549 	mov	dptr,#_timerGet_val_65536_9
      000EB8 E0               [24]  550 	movx	a,@dptr
      000EB9 FC               [12]  551 	mov	r4,a
      000EBA A3               [24]  552 	inc	dptr
      000EBB E0               [24]  553 	movx	a,@dptr
      000EBC FD               [12]  554 	mov	r5,a
      000EBD A3               [24]  555 	inc	dptr
      000EBE E0               [24]  556 	movx	a,@dptr
      000EBF FE               [12]  557 	mov	r6,a
      000EC0 A3               [24]  558 	inc	dptr
      000EC1 E0               [24]  559 	movx	a,@dptr
      000EC2 8C 82            [24]  560 	mov	dpl,r4
      000EC4 8D 83            [24]  561 	mov	dph,r5
      000EC6 8E F0            [24]  562 	mov	b,r6
                                    563 ;	timer.c:31: }
      000EC8 D0 04            [24]  564 	pop	ar4
      000ECA D0 05            [24]  565 	pop	ar5
      000ECC D0 06            [24]  566 	pop	ar6
      000ECE D0 07            [24]  567 	pop	ar7
      000ED0 22               [24]  568 	ret
                                    569 ;------------------------------------------------------------
                                    570 ;Allocation info for local variables in function 'timerGetLowBits'
                                    571 ;------------------------------------------------------------
                                    572 ;	timer.c:33: uint8_t timerGetLowBits(void)
                                    573 ;	-----------------------------------------
                                    574 ;	 function timerGetLowBits
                                    575 ;	-----------------------------------------
      000ED1                        576 _timerGetLowBits:
                                    577 ;	timer.c:35: return TL0;
      000ED1 85 8A 82         [24]  578 	mov	dpl,_TL0
                                    579 ;	timer.c:36: }
      000ED4 22               [24]  580 	ret
                                    581 ;------------------------------------------------------------
                                    582 ;Allocation info for local variables in function 'timerInit'
                                    583 ;------------------------------------------------------------
                                    584 ;	timer.c:38: void timerInit(void)
                                    585 ;	-----------------------------------------
                                    586 ;	 function timerInit
                                    587 ;	-----------------------------------------
      000ED5                        588 _timerInit:
                                    589 ;	timer.c:41: CLKEN |= 0x01;
      000ED5 43 B7 01         [24]  590 	orl	_CLKEN,#0x01
                                    591 ;	timer.c:45: TCON &=~ 0xf0;
      000ED8 53 88 0F         [24]  592 	anl	_TCON,#0x0f
                                    593 ;	timer.c:48: mTmrHi = 0;
      000EDB 90 E3 FC         [24]  594 	mov	dptr,#_mTmrHi
      000EDE E4               [12]  595 	clr	a
      000EDF F0               [24]  596 	movx	@dptr,a
      000EE0 A3               [24]  597 	inc	dptr
      000EE1 F0               [24]  598 	movx	@dptr,a
                                    599 ;	timer.c:49: T0 = 0;
      000EE2 F5 8A            [12]  600 	mov	((_T0 >> 0) & 0xFF),a
      000EE4 F5 8C            [12]  601 	mov	((_T0 >> 8) & 0xFF),a
                                    602 ;	timer.c:52: TMOD = 0x31;
      000EE6 75 89 31         [24]  603 	mov	_TMOD,#0x31
                                    604 ;	timer.c:55: TCON |= 0x10;
      000EE9 43 88 10         [24]  605 	orl	_TCON,#0x10
                                    606 ;	timer.c:58: IEN_TMR0 = 1;
                                    607 ;	assignBit
      000EEC D2 A9            [12]  608 	setb	_IEN_TMR0
                                    609 ;	timer.c:59: }
      000EEE 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'timerDelay'
                                    613 ;------------------------------------------------------------
                                    614 ;sloc0                     Allocated with name '_timerDelay_sloc0_1_0'
                                    615 ;ticks                     Allocated with name '_timerDelay_ticks_65536_15'
                                    616 ;start                     Allocated with name '_timerDelay_start_65536_16'
                                    617 ;------------------------------------------------------------
                                    618 ;	timer.c:61: void timerDelay(uint32_t ticks)
                                    619 ;	-----------------------------------------
                                    620 ;	 function timerDelay
                                    621 ;	-----------------------------------------
      000EEF                        622 _timerDelay:
      000EEF AF 82            [24]  623 	mov	r7,dpl
      000EF1 AE 83            [24]  624 	mov	r6,dph
      000EF3 AD F0            [24]  625 	mov	r5,b
      000EF5 FC               [12]  626 	mov	r4,a
      000EF6 90 E4 02         [24]  627 	mov	dptr,#_timerDelay_ticks_65536_15
      000EF9 EF               [12]  628 	mov	a,r7
      000EFA F0               [24]  629 	movx	@dptr,a
      000EFB EE               [12]  630 	mov	a,r6
      000EFC A3               [24]  631 	inc	dptr
      000EFD F0               [24]  632 	movx	@dptr,a
      000EFE ED               [12]  633 	mov	a,r5
      000EFF A3               [24]  634 	inc	dptr
      000F00 F0               [24]  635 	movx	@dptr,a
      000F01 EC               [12]  636 	mov	a,r4
      000F02 A3               [24]  637 	inc	dptr
      000F03 F0               [24]  638 	movx	@dptr,a
                                    639 ;	timer.c:63: uint32_t start = timerGet();
      000F04 12 0E 71         [24]  640 	lcall	_timerGet
      000F07 AC 82            [24]  641 	mov	r4,dpl
      000F09 AD 83            [24]  642 	mov	r5,dph
      000F0B AE F0            [24]  643 	mov	r6,b
      000F0D FF               [12]  644 	mov	r7,a
                                    645 ;	timer.c:64: while (timerGet() - start <= ticks);
      000F0E 90 E4 02         [24]  646 	mov	dptr,#_timerDelay_ticks_65536_15
      000F11 E0               [24]  647 	movx	a,@dptr
      000F12 F5 18            [12]  648 	mov	_timerDelay_sloc0_1_0,a
      000F14 A3               [24]  649 	inc	dptr
      000F15 E0               [24]  650 	movx	a,@dptr
      000F16 F5 19            [12]  651 	mov	(_timerDelay_sloc0_1_0 + 1),a
      000F18 A3               [24]  652 	inc	dptr
      000F19 E0               [24]  653 	movx	a,@dptr
      000F1A F5 1A            [12]  654 	mov	(_timerDelay_sloc0_1_0 + 2),a
      000F1C A3               [24]  655 	inc	dptr
      000F1D E0               [24]  656 	movx	a,@dptr
      000F1E F5 1B            [12]  657 	mov	(_timerDelay_sloc0_1_0 + 3),a
      000F20                        658 00101$:
      000F20 12 0E 71         [24]  659 	lcall	_timerGet
      000F23 A8 82            [24]  660 	mov	r0,dpl
      000F25 A9 83            [24]  661 	mov	r1,dph
      000F27 AA F0            [24]  662 	mov	r2,b
      000F29 FB               [12]  663 	mov	r3,a
      000F2A E8               [12]  664 	mov	a,r0
      000F2B C3               [12]  665 	clr	c
      000F2C 9C               [12]  666 	subb	a,r4
      000F2D F8               [12]  667 	mov	r0,a
      000F2E E9               [12]  668 	mov	a,r1
      000F2F 9D               [12]  669 	subb	a,r5
      000F30 F9               [12]  670 	mov	r1,a
      000F31 EA               [12]  671 	mov	a,r2
      000F32 9E               [12]  672 	subb	a,r6
      000F33 FA               [12]  673 	mov	r2,a
      000F34 EB               [12]  674 	mov	a,r3
      000F35 9F               [12]  675 	subb	a,r7
      000F36 FB               [12]  676 	mov	r3,a
      000F37 C3               [12]  677 	clr	c
      000F38 E5 18            [12]  678 	mov	a,_timerDelay_sloc0_1_0
      000F3A 98               [12]  679 	subb	a,r0
      000F3B E5 19            [12]  680 	mov	a,(_timerDelay_sloc0_1_0 + 1)
      000F3D 99               [12]  681 	subb	a,r1
      000F3E E5 1A            [12]  682 	mov	a,(_timerDelay_sloc0_1_0 + 2)
      000F40 9A               [12]  683 	subb	a,r2
      000F41 E5 1B            [12]  684 	mov	a,(_timerDelay_sloc0_1_0 + 3)
      000F43 9B               [12]  685 	subb	a,r3
      000F44 50 DA            [24]  686 	jnc	00101$
                                    687 ;	timer.c:65: }
      000F46 22               [24]  688 	ret
                                    689 	.area CSEG    (CODE)
                                    690 	.area CONST   (CODE)
                                    691 	.area XINIT   (CODE)
                                    692 	.area CABS    (ABS,CODE)
