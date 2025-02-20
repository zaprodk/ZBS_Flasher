                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.1 #12107 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module flash
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
                                    146 	.globl _flashRead_PARM_3
                                    147 	.globl _flashRead_PARM_2
                                    148 	.globl _flashWrite_PARM_3
                                    149 	.globl _flashWrite_PARM_2
                                    150 	.globl _flashWrite_PARM_4
                                    151 	.globl _flashWrite
                                    152 	.globl _flashRead
                                    153 	.globl _flashErase
                                    154 ;--------------------------------------------------------
                                    155 ; special function registers
                                    156 ;--------------------------------------------------------
                                    157 	.area RSEG    (ABS,DATA)
      000000                        158 	.org 0x0000
                           0000F0   159 _B	=	0x00f0
                           0000E0   160 _ACC	=	0x00e0
                           000082   161 _DPL	=	0x0082
                           000083   162 _DPH	=	0x0083
                           000084   163 _DPL1	=	0x0084
                           000085   164 _DPH1	=	0x0085
                           000092   165 _DPS	=	0x0092
                           000087   166 _PCON	=	0x0087
                           0000B2   167 _PERFMON0	=	0x00b2
                           0000B3   168 _PERFMON1	=	0x00b3
                           0000B4   169 _PCH	=	0x00b4
                           0000B5   170 _PCL	=	0x00b5
                           0000B6   171 _PERFMON4	=	0x00b6
                           000080   172 _P0	=	0x0080
                           000090   173 _P1	=	0x0090
                           0000A0   174 _P2	=	0x00a0
                           0000A3   175 _P0LVLSEL	=	0x00a3
                           0000A4   176 _P1LVLSEL	=	0x00a4
                           0000A5   177 _P2LVLSEL	=	0x00a5
                           0000A6   178 _P0INTEN	=	0x00a6
                           0000A7   179 _P1INTEN	=	0x00a7
                           0000A9   180 _P2INTEN	=	0x00a9
                           0000AA   181 _P0CHSTA	=	0x00aa
                           0000AB   182 _P1CHSTA	=	0x00ab
                           0000AC   183 _P2CHSTA	=	0x00ac
                           0000AD   184 _P0FUNC	=	0x00ad
                           0000AE   185 _P1FUNC	=	0x00ae
                           0000AF   186 _P2FUNC	=	0x00af
                           0000B9   187 _P0DIR	=	0x00b9
                           0000BA   188 _P1DIR	=	0x00ba
                           0000BB   189 _P2DIR	=	0x00bb
                           0000BC   190 _P0PULL	=	0x00bc
                           0000BD   191 _P1PULL	=	0x00bd
                           0000BE   192 _P2PULL	=	0x00be
                           0000A0   193 _XPAGE	=	0x00a0
                           0000A8   194 _IEN0	=	0x00a8
                           0000A1   195 _IEN1	=	0x00a1
                           00008E   196 _CLKSPEED	=	0x008e
                           0000B7   197 _CLKEN	=	0x00b7
                           00008F   198 _RESET	=	0x008f
                           0000BA   199 _WDTENA	=	0x00ba
                           0000BB   200 _WDTPET	=	0x00bb
                           0000BC   201 _WDTRSTVALL	=	0x00bc
                           0000BD   202 _WDTRSTVALM	=	0x00bd
                           0000BE   203 _WDTRSTVALH	=	0x00be
                           0000BF   204 _WDTCONF	=	0x00bf
                           0000EB   205 _SPIUNKNOWN	=	0x00eb
                           0000EC   206 _SPICFG	=	0x00ec
                           0000ED   207 _SPIENA	=	0x00ed
                           0000EE   208 _SPITX	=	0x00ee
                           0000EF   209 _SPIRX	=	0x00ef
                           000091   210 _I2CSTATE	=	0x0091
                           000094   211 _I2CBUF	=	0x0094
                           000095   212 _I2CCTL	=	0x0095
                           000096   213 _I2CSPEED	=	0x0096
                           0000A2   214 _I2CUNKNOWN	=	0x00a2
                           000098   215 _UARTSTA	=	0x0098
                           000099   216 _UARTBUF	=	0x0099
                           00009A   217 _UARTBRGL	=	0x009a
                           00009B   218 _UARTBRGH	=	0x009b
                           000088   219 _TCON	=	0x0088
                           000089   220 _TMOD	=	0x0089
                           00008A   221 _TL0	=	0x008a
                           00008B   222 _TL1	=	0x008b
                           00008C   223 _TH0	=	0x008c
                           00008D   224 _TH1	=	0x008d
                           008C8A   225 _T0	=	0x8c8a
                           008D8B   226 _T1	=	0x8d8b
                           0000D8   227 _FPGNO	=	0x00d8
                           0000D9   228 _FWRSRCL	=	0x00d9
                           0000DA   229 _FWRSRCH	=	0x00da
                           0000DB   230 _FWRDSTL	=	0x00db
                           0000DC   231 _FWRDSTH	=	0x00dc
                           0000DD   232 _FWRLENL	=	0x00dd
                           0000DE   233 _FWRLENH	=	0x00de
                           0000DF   234 _FWRTHREE	=	0x00df
                           0000E6   235 _TEMPCAL1	=	0x00e6
                           0000E7   236 _TEMPCAL2	=	0x00e7
                           0000F7   237 _TEMPCFG	=	0x00f7
                           0000F8   238 _TEMPRETH	=	0x00f8
                           0000F9   239 _TEMPRETL	=	0x00f9
                           0000FB   240 _TEMPCAL3	=	0x00fb
                           0000FC   241 _TEMPCAL4	=	0x00fc
                           0000FD   242 _TEMPCAL5	=	0x00fd
                           0000FE   243 _TEMPCAL6	=	0x00fe
                           0000C9   244 _RADIO_TXPTRL	=	0x00c9
                           0000CA   245 _RADIO_TXPTRH	=	0x00ca
                           0000CB   246 _RADIO_INITSEQ1	=	0x00cb
                           0000CC   247 _RADIO_INITSEQ2	=	0x00cc
                           0000CD   248 _RADIO_TXLEN	=	0x00cd
                           0000CE   249 _RADIO_INITSEQ0	=	0x00ce
                           0000D1   250 _RADIO_INITSEQ4	=	0x00d1
                           0000D2   251 _RADIO_INITSEQ5	=	0x00d2
                           0000D3   252 _RADIO_RXPTRL	=	0x00d3
                           0000D4   253 _RADIO_RXPTRH	=	0x00d4
                           0000D5   254 _RADIO_RXLEN	=	0x00d5
                           0000D6   255 _RADIO_INITSEQ3	=	0x00d6
                           0000FA   256 _RADIO_GOTLEN	=	0x00fa
                           0000C1   257 _UNK_C1	=	0x00c1
                           0000D7   258 _TRIGGER	=	0x00d7
                           0000C7   259 _SETTINGS	=	0x00c7
                           0000CF   260 _TCON2	=	0x00cf
                           0000FF   261 _CFGPAGE	=	0x00ff
                                    262 ;--------------------------------------------------------
                                    263 ; special function bits
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           000080   267 _P0_0	=	0x0080
                           000081   268 _P0_1	=	0x0081
                           000082   269 _P0_2	=	0x0082
                           000083   270 _P0_3	=	0x0083
                           000084   271 _P0_4	=	0x0084
                           000085   272 _P0_5	=	0x0085
                           000086   273 _P0_6	=	0x0086
                           000087   274 _P0_7	=	0x0087
                           000090   275 _P1_0	=	0x0090
                           000091   276 _P1_1	=	0x0091
                           000092   277 _P1_2	=	0x0092
                           000093   278 _P1_3	=	0x0093
                           000094   279 _P1_4	=	0x0094
                           000095   280 _P1_5	=	0x0095
                           000096   281 _P1_6	=	0x0096
                           000097   282 _P1_7	=	0x0097
                           0000A0   283 _P2_0	=	0x00a0
                           0000A1   284 _P2_1	=	0x00a1
                           0000A2   285 _P2_2	=	0x00a2
                           0000A3   286 _P2_3	=	0x00a3
                           0000A4   287 _P2_4	=	0x00a4
                           0000A5   288 _P2_5	=	0x00a5
                           0000A6   289 _P2_6	=	0x00a6
                           0000A7   290 _P2_7	=	0x00a7
                           0000A8   291 _IEN_UART0	=	0x00a8
                           0000A9   292 _IEN_TMR0	=	0x00a9
                           0000AB   293 _IEN_TMR1	=	0x00ab
                           0000AC   294 _IEN_RF1	=	0x00ac
                           0000AD   295 _IEN_RF2	=	0x00ad
                           0000AF   296 _IEN_EA	=	0x00af
                           000098   297 _UART_RXF	=	0x0098
                           000099   298 _UART_TXE	=	0x0099
                                    299 ;--------------------------------------------------------
                                    300 ; overlayable register banks
                                    301 ;--------------------------------------------------------
                                    302 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        303 	.ds 8
                                    304 ;--------------------------------------------------------
                                    305 ; internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area DSEG    (DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; overlayable items in internal ram 
                                    310 ;--------------------------------------------------------
                                    311 ;--------------------------------------------------------
                                    312 ; indirectly addressable internal ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area ISEG    (DATA)
                           000000   315 _R0	=	0x0000
                           000001   316 _R1	=	0x0001
                           000002   317 _R2	=	0x0002
                           000003   318 _R3	=	0x0003
                           000004   319 _R4	=	0x0004
                           000005   320 _R5	=	0x0005
                           000006   321 _R6	=	0x0006
                           000007   322 _R7	=	0x0007
                                    323 ;--------------------------------------------------------
                                    324 ; absolute internal ram data
                                    325 ;--------------------------------------------------------
                                    326 	.area IABS    (ABS,DATA)
                                    327 	.area IABS    (ABS,DATA)
                                    328 ;--------------------------------------------------------
                                    329 ; bit data
                                    330 ;--------------------------------------------------------
                                    331 	.area BSEG    (BIT)
      000008                        332 _flashWrite_PARM_4:
      000008                        333 	.ds 1
      000009                        334 _flashWrite_irq_65536_8:
      000009                        335 	.ds 1
      00000A                        336 _flashRead_irq_65536_10:
      00000A                        337 	.ds 1
      00000B                        338 _flashErase_irq_65536_12:
      00000B                        339 	.ds 1
                                    340 ;--------------------------------------------------------
                                    341 ; paged external ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area PSEG    (PAG,XDATA)
                                    344 ;--------------------------------------------------------
                                    345 ; external ram data
                                    346 ;--------------------------------------------------------
                                    347 	.area XSEG    (XDATA)
                           00DF48   348 _RADIO_command	=	0xdf48
                           00DF70   349 _RADIO_calibration_70	=	0xdf70
                           00DF71   350 _RADIO_calibration_71	=	0xdf71
                           00DF80   351 _RADIO_FLAGS	=	0xdf80
                           00DF81   352 _RADIO_calibration_81	=	0xdf81
                           00DF83   353 _RADIO_unk_83	=	0xdf83
                           00DF84   354 _RADIO_currentRSSI	=	0xdf84
                           00DF86   355 _RADIO_calibration_86	=	0xdf86
                           00DF88   356 _RADIO_ownMac_7	=	0xdf88
                           00DF89   357 _RADIO_ownMac_6	=	0xdf89
                           00DF8A   358 _RADIO_ownMac_5	=	0xdf8a
                           00DF8B   359 _RADIO_ownMac_4	=	0xdf8b
                           00DF8C   360 _RADIO_ownMac_3	=	0xdf8c
                           00DF8D   361 _RADIO_ownMac_2	=	0xdf8d
                           00DF8E   362 _RADIO_ownMac_1	=	0xdf8e
                           00DF8F   363 _RADIO_ownMac_0	=	0xdf8f
                           00DF90   364 _RADIO_PANID_Hi	=	0xdf90
                           00DF91   365 _RADIO_PANID_Lo	=	0xdf91
                           00DF92   366 _RADIO_ownShortAddress_Hi	=	0xdf92
                           00DF93   367 _RADIO_ownShortAddress_Lo	=	0xdf93
                           00DF94   368 _RADIO_calibration_94	=	0xdf94
                           00DF95   369 _RADIO_calibration_95	=	0xdf95
                           00DF96   370 _RADIO_calibration_96	=	0xdf96
                           00DF98   371 _RADIO_rxFirstByte	=	0xdf98
                           00DF9B   372 _RADIO_curRfState	=	0xdf9b
                           00DF9D   373 _RADIO_calibration_9D	=	0xdf9d
                           00DFA1   374 _RADIO_calibration_A1	=	0xdfa1
                           00DFA5   375 _RADIO_unk_rxAckSta	=	0xdfa5
                           00DFA6   376 _RADIO_unk_A6	=	0xdfa6
                           00DFAD   377 _RADIO_IRQ4_pending	=	0xdfad
                           00DFAF   378 _RADIO_unk_AF	=	0xdfaf
                           00DFC0   379 _RADIO_channel	=	0xdfc0
                           00DFC1   380 _RADIO_unk_C1	=	0xdfc1
                           00DFC2   381 _RADIO_calibration_C2	=	0xdfc2
                           00DFC3   382 _RADIO_calibration_C3	=	0xdfc3
                           00DFC4   383 _RADIO_calibration_C4	=	0xdfc4
                           00DFC5   384 _RADIO_calibration_C5	=	0xdfc5
                           00DFC6   385 _RADIO_calibration_C6	=	0xdfc6
                           00DFC7   386 _RADIO_calibration_C7	=	0xdfc7
                           00DFC8   387 _RADIO_unk_C8	=	0xdfc8
                           00DFC9   388 _RADIO_txPower	=	0xdfc9
                           00DFCA   389 _RADIO_unk_CA	=	0xdfca
                           00DFCB   390 _RADIO_perChannelSetting2	=	0xdfcb
                           00DFCD   391 _RADIO_unk_CD	=	0xdfcd
                           00DFCE   392 _RADIO_unk_CE	=	0xdfce
                           00DFCF   393 _RADIO_calibration_CF	=	0xdfcf
                           00DFD0   394 _RADIO_calibration_D0	=	0xdfd0
                           00DFD1   395 _RADIO_calibration_D1	=	0xdfd1
                           00DFD2   396 _RADIO_calibration_D2	=	0xdfd2
                           00DFD3   397 _RADIO_calibration_D3	=	0xdfd3
                           00DFD4   398 _RADIO_calibration_D4	=	0xdfd4
                           00DFD5   399 _RADIO_calibration_D5	=	0xdfd5
                           00DFD7   400 _RADIO_unk_D7	=	0xdfd7
                           00DFD8   401 _RADIO_unk_D8	=	0xdfd8
                           00DFD9   402 _RADIO_SleepTimerHi	=	0xdfd9
                           00DFDA   403 _RADIO_SleepTimerMid	=	0xdfda
                           00DFDB   404 _RADIO_SleepTimerLo	=	0xdfdb
                           00DFE2   405 _RADIO_unk_E2	=	0xdfe2
                           00DFF0   406 _RADIO_unk_F0	=	0xdff0
                           00DFF3   407 _RADIO_SleepTimerSettings	=	0xdff3
                           00DFF4   408 _RADIO_RadioPowerCtl	=	0xdff4
                           00DFFD   409 _RADIO_perChannelSetting1	=	0xdffd
      00E407                        410 _flashWrite_PARM_2:
      00E407                        411 	.ds 2
      00E409                        412 _flashWrite_PARM_3:
      00E409                        413 	.ds 2
      00E40B                        414 _flashWrite_dstAddr_65536_7:
      00E40B                        415 	.ds 4
      00E40F                        416 _flashWrite_cfgPg_65536_8:
      00E40F                        417 	.ds 1
      00E410                        418 _flashWrite_speed_65536_8:
      00E410                        419 	.ds 1
      00E411                        420 _flashRead_PARM_2:
      00E411                        421 	.ds 2
      00E413                        422 _flashRead_PARM_3:
      00E413                        423 	.ds 2
      00E415                        424 _flashRead_srcAddr_65536_9:
      00E415                        425 	.ds 4
      00E419                        426 _flashRead_cfgPg_65536_10:
      00E419                        427 	.ds 1
      00E41A                        428 _flashRead_speed_65536_10:
      00E41A                        429 	.ds 1
      00E41B                        430 _flashErase_dstAddr_65536_11:
      00E41B                        431 	.ds 4
      00E41F                        432 _flashErase_dummyByte_65536_12:
      00E41F                        433 	.ds 1
      00E420                        434 _flashErase_cfgPg_65536_12:
      00E420                        435 	.ds 1
      00E421                        436 _flashErase_speed_65536_12:
      00E421                        437 	.ds 1
                                    438 ;--------------------------------------------------------
                                    439 ; absolute external ram data
                                    440 ;--------------------------------------------------------
                                    441 	.area XABS    (ABS,XDATA)
                                    442 ;--------------------------------------------------------
                                    443 ; external initialized ram data
                                    444 ;--------------------------------------------------------
                                    445 	.area XISEG   (XDATA)
                                    446 	.area HOME    (CODE)
                                    447 	.area GSINIT0 (CODE)
                                    448 	.area GSINIT1 (CODE)
                                    449 	.area GSINIT2 (CODE)
                                    450 	.area GSINIT3 (CODE)
                                    451 	.area GSINIT4 (CODE)
                                    452 	.area GSINIT5 (CODE)
                                    453 	.area GSINIT  (CODE)
                                    454 	.area GSFINAL (CODE)
                                    455 	.area CSEG    (CODE)
                                    456 ;--------------------------------------------------------
                                    457 ; global & static initialisations
                                    458 ;--------------------------------------------------------
                                    459 	.area HOME    (CODE)
                                    460 	.area GSINIT  (CODE)
                                    461 	.area GSFINAL (CODE)
                                    462 	.area GSINIT  (CODE)
                                    463 ;--------------------------------------------------------
                                    464 ; Home
                                    465 ;--------------------------------------------------------
                                    466 	.area HOME    (CODE)
                                    467 	.area HOME    (CODE)
                                    468 ;--------------------------------------------------------
                                    469 ; code
                                    470 ;--------------------------------------------------------
                                    471 	.area CSEG    (CODE)
                                    472 ;------------------------------------------------------------
                                    473 ;Allocation info for local variables in function 'flashAddrCheck'
                                    474 ;------------------------------------------------------------
                                    475 ;len                       Allocated to stack - sp -7
                                    476 ;flashAddr                 Allocated to stack - sp -3
                                    477 ;dstOfst                   Allocated to registers r4 r5 
                                    478 ;pgNo                      Allocated to registers r7 
                                    479 ;------------------------------------------------------------
                                    480 ;	flash.c:8: static uint8_t flashAddrCheck(uint32_t flashAddr, uint16_t len) __reentrant /* to save ram space */ // return 0xff for error, pgNo
                                    481 ;	-----------------------------------------
                                    482 ;	 function flashAddrCheck
                                    483 ;	-----------------------------------------
      000F71                        484 _flashAddrCheck:
                           000007   485 	ar7 = 0x07
                           000006   486 	ar6 = 0x06
                           000005   487 	ar5 = 0x05
                           000004   488 	ar4 = 0x04
                           000003   489 	ar3 = 0x03
                           000002   490 	ar2 = 0x02
                           000001   491 	ar1 = 0x01
                           000000   492 	ar0 = 0x00
      000F71 C0 07            [24]  493 	push	ar7
      000F73 C0 06            [24]  494 	push	ar6
      000F75 C0 05            [24]  495 	push	ar5
      000F77 C0 04            [24]  496 	push	ar4
      000F79 C0 03            [24]  497 	push	ar3
      000F7B C0 02            [24]  498 	push	ar2
      000F7D C0 01            [24]  499 	push	ar1
      000F7F C0 00            [24]  500 	push	ar0
      000F81 C0 82            [24]  501 	push	dpl
      000F83 C0 83            [24]  502 	push	dph
      000F85 C0 F0            [24]  503 	push	b
      000F87 C0 E0            [24]  504 	push	acc
                                    505 ;	flash.c:13: if (!len)
      000F89 E5 81            [12]  506 	mov	a,sp
      000F8B 24 F1            [12]  507 	add	a,#0xf1
      000F8D F8               [12]  508 	mov	r0,a
      000F8E E6               [12]  509 	mov	a,@r0
      000F8F 08               [12]  510 	inc	r0
      000F90 46               [12]  511 	orl	a,@r0
      000F91 70 05            [24]  512 	jnz	00102$
                                    513 ;	flash.c:14: return 0xff;
      000F93 75 82 FF         [24]  514 	mov	dpl,#0xff
      000F96 80 77            [24]  515 	sjmp	00113$
      000F98                        516 00102$:
                                    517 ;	flash.c:17: if ((uint8_t)(flashAddr >> 24))
      000F98 E5 81            [12]  518 	mov	a,sp
      000F9A 24 FD            [12]  519 	add	a,#0xfd
      000F9C F8               [12]  520 	mov	r0,a
      000F9D 08               [12]  521 	inc	r0
      000F9E 08               [12]  522 	inc	r0
      000F9F 08               [12]  523 	inc	r0
      000FA0 E6               [12]  524 	mov	a,@r0
      000FA1 FB               [12]  525 	mov	r3,a
      000FA2 60 05            [24]  526 	jz	00104$
                                    527 ;	flash.c:18: return 0xff;
      000FA4 75 82 FF         [24]  528 	mov	dpl,#0xff
      000FA7 80 66            [24]  529 	sjmp	00113$
      000FA9                        530 00104$:
                                    531 ;	flash.c:20: switch ((uint8_t)(flashAddr >> 16))  {
      000FA9 E5 81            [12]  532 	mov	a,sp
      000FAB 24 FD            [12]  533 	add	a,#0xfd
      000FAD F8               [12]  534 	mov	r0,a
      000FAE 08               [12]  535 	inc	r0
      000FAF 08               [12]  536 	inc	r0
      000FB0 86 03            [24]  537 	mov	ar3,@r0
      000FB2 E4               [12]  538 	clr	a
      000FB3 BB 00 01         [24]  539 	cjne	r3,#0x00,00147$
      000FB6 04               [12]  540 	inc	a
      000FB7                        541 00147$:
      000FB7 FA               [12]  542 	mov	r2,a
      000FB8 7F 00            [12]  543 	mov	r7,#0x00
      000FBA 70 05            [24]  544 	jnz	00105$
                                    545 ;	flash.c:21: case 0x00:
      000FBC BB 80 1C         [24]  546 	cjne	r3,#0x80,00109$
      000FBF 80 0E            [24]  547 	sjmp	00106$
      000FC1                        548 00105$:
                                    549 ;	flash.c:22: pgNo = ((uint8_t)(flashAddr >> 8)) >> 2;
      000FC1 E5 81            [12]  550 	mov	a,sp
      000FC3 24 FD            [12]  551 	add	a,#0xfd
      000FC5 F8               [12]  552 	mov	r0,a
      000FC6 08               [12]  553 	inc	r0
      000FC7 E6               [12]  554 	mov	a,@r0
      000FC8 03               [12]  555 	rr	a
      000FC9 03               [12]  556 	rr	a
      000FCA 54 3F            [12]  557 	anl	a,#0x3f
      000FCC FE               [12]  558 	mov	r6,a
                                    559 ;	flash.c:23: break;
                                    560 ;	flash.c:25: case 0x80:
      000FCD 80 11            [24]  561 	sjmp	00110$
      000FCF                        562 00106$:
                                    563 ;	flash.c:26: if (pgNo)
      000FCF EF               [12]  564 	mov	a,r7
      000FD0 60 05            [24]  565 	jz	00108$
                                    566 ;	flash.c:27: return 0xff;
      000FD2 75 82 FF         [24]  567 	mov	dpl,#0xff
      000FD5 80 38            [24]  568 	sjmp	00113$
      000FD7                        569 00108$:
                                    570 ;	flash.c:28: pgNo = 0x80;
      000FD7 7E 80            [12]  571 	mov	r6,#0x80
                                    572 ;	flash.c:29: break;
                                    573 ;	flash.c:31: default:
      000FD9 80 05            [24]  574 	sjmp	00110$
      000FDB                        575 00109$:
                                    576 ;	flash.c:32: return 0xff;
      000FDB 75 82 FF         [24]  577 	mov	dpl,#0xff
                                    578 ;	flash.c:33: }
      000FDE 80 2F            [24]  579 	sjmp	00113$
      000FE0                        580 00110$:
                                    581 ;	flash.c:35: dstOfst = flashAddr & 0x3ff;
      000FE0 E5 81            [12]  582 	mov	a,sp
      000FE2 24 FD            [12]  583 	add	a,#0xfd
      000FE4 F8               [12]  584 	mov	r0,a
      000FE5 86 04            [24]  585 	mov	ar4,@r0
      000FE7 08               [12]  586 	inc	r0
      000FE8 86 05            [24]  587 	mov	ar5,@r0
      000FEA 53 05 03         [24]  588 	anl	ar5,#0x03
                                    589 ;	flash.c:37: if (((uint8_t)((dstOfst + len - 1) >> 8)) >> 2)	//yeah...sdcc
      000FED E5 81            [12]  590 	mov	a,sp
      000FEF 24 F1            [12]  591 	add	a,#0xf1
      000FF1 F8               [12]  592 	mov	r0,a
      000FF2 E6               [12]  593 	mov	a,@r0
      000FF3 2C               [12]  594 	add	a,r4
      000FF4 FC               [12]  595 	mov	r4,a
      000FF5 08               [12]  596 	inc	r0
      000FF6 E6               [12]  597 	mov	a,@r0
      000FF7 3D               [12]  598 	addc	a,r5
      000FF8 FD               [12]  599 	mov	r5,a
      000FF9 1C               [12]  600 	dec	r4
      000FFA BC FF 01         [24]  601 	cjne	r4,#0xff,00152$
      000FFD 1D               [12]  602 	dec	r5
      000FFE                        603 00152$:
      000FFE 8D 04            [24]  604 	mov	ar4,r5
      001000 EC               [12]  605 	mov	a,r4
      001001 03               [12]  606 	rr	a
      001002 03               [12]  607 	rr	a
      001003 54 3F            [12]  608 	anl	a,#0x3f
      001005 FC               [12]  609 	mov	r4,a
      001006 60 05            [24]  610 	jz	00112$
                                    611 ;	flash.c:38: return 0xff;
      001008 75 82 FF         [24]  612 	mov	dpl,#0xff
      00100B 80 02            [24]  613 	sjmp	00113$
      00100D                        614 00112$:
                                    615 ;	flash.c:40: return pgNo;
      00100D 8E 82            [24]  616 	mov	dpl,r6
      00100F                        617 00113$:
                                    618 ;	flash.c:41: }
      00100F E5 81            [12]  619 	mov	a,sp
      001011 24 FC            [12]  620 	add	a,#0xfc
      001013 F5 81            [12]  621 	mov	sp,a
      001015 D0 00            [24]  622 	pop	ar0
      001017 D0 01            [24]  623 	pop	ar1
      001019 D0 02            [24]  624 	pop	ar2
      00101B D0 03            [24]  625 	pop	ar3
      00101D D0 04            [24]  626 	pop	ar4
      00101F D0 05            [24]  627 	pop	ar5
      001021 D0 06            [24]  628 	pop	ar6
      001023 D0 07            [24]  629 	pop	ar7
      001025 22               [24]  630 	ret
                                    631 ;------------------------------------------------------------
                                    632 ;Allocation info for local variables in function 'flashWrite'
                                    633 ;------------------------------------------------------------
                                    634 ;src                       Allocated with name '_flashWrite_PARM_2'
                                    635 ;len                       Allocated with name '_flashWrite_PARM_3'
                                    636 ;dstAddr                   Allocated with name '_flashWrite_dstAddr_65536_7'
                                    637 ;pgNo                      Allocated with name '_flashWrite_pgNo_65536_8'
                                    638 ;cfgPg                     Allocated with name '_flashWrite_cfgPg_65536_8'
                                    639 ;speed                     Allocated with name '_flashWrite_speed_65536_8'
                                    640 ;------------------------------------------------------------
                                    641 ;	flash.c:45: __bit flashWrite(uint32_t dstAddr, const void __xdata *src, uint16_t len, __bit alsoErase /*whole page */)
                                    642 ;	-----------------------------------------
                                    643 ;	 function flashWrite
                                    644 ;	-----------------------------------------
      001026                        645 _flashWrite:
      001026 C0 07            [24]  646 	push	ar7
      001028 C0 06            [24]  647 	push	ar6
      00102A C0 05            [24]  648 	push	ar5
      00102C C0 04            [24]  649 	push	ar4
      00102E C0 03            [24]  650 	push	ar3
      001030 C0 02            [24]  651 	push	ar2
      001032 AF 82            [24]  652 	mov	r7,dpl
      001034 AE 83            [24]  653 	mov	r6,dph
      001036 AD F0            [24]  654 	mov	r5,b
      001038 FC               [12]  655 	mov	r4,a
      001039 90 E4 0B         [24]  656 	mov	dptr,#_flashWrite_dstAddr_65536_7
      00103C EF               [12]  657 	mov	a,r7
      00103D F0               [24]  658 	movx	@dptr,a
      00103E EE               [12]  659 	mov	a,r6
      00103F A3               [24]  660 	inc	dptr
      001040 F0               [24]  661 	movx	@dptr,a
      001041 ED               [12]  662 	mov	a,r5
      001042 A3               [24]  663 	inc	dptr
      001043 F0               [24]  664 	movx	@dptr,a
      001044 EC               [12]  665 	mov	a,r4
      001045 A3               [24]  666 	inc	dptr
      001046 F0               [24]  667 	movx	@dptr,a
                                    668 ;	flash.c:50: pgNo = flashAddrCheck(dstAddr, len);
      001047 90 E4 09         [24]  669 	mov	dptr,#_flashWrite_PARM_3
      00104A E0               [24]  670 	movx	a,@dptr
      00104B FE               [12]  671 	mov	r6,a
      00104C A3               [24]  672 	inc	dptr
      00104D E0               [24]  673 	movx	a,@dptr
      00104E FF               [12]  674 	mov	r7,a
      00104F 90 E4 0B         [24]  675 	mov	dptr,#_flashWrite_dstAddr_65536_7
      001052 E0               [24]  676 	movx	a,@dptr
      001053 FA               [12]  677 	mov	r2,a
      001054 A3               [24]  678 	inc	dptr
      001055 E0               [24]  679 	movx	a,@dptr
      001056 FB               [12]  680 	mov	r3,a
      001057 A3               [24]  681 	inc	dptr
      001058 E0               [24]  682 	movx	a,@dptr
      001059 FC               [12]  683 	mov	r4,a
      00105A A3               [24]  684 	inc	dptr
      00105B E0               [24]  685 	movx	a,@dptr
      00105C FD               [12]  686 	mov	r5,a
      00105D C0 06            [24]  687 	push	ar6
      00105F C0 07            [24]  688 	push	ar7
      001061 8A 82            [24]  689 	mov	dpl,r2
      001063 8B 83            [24]  690 	mov	dph,r3
      001065 8C F0            [24]  691 	mov	b,r4
      001067 ED               [12]  692 	mov	a,r5
      001068 12 0F 71         [24]  693 	lcall	_flashAddrCheck
      00106B AD 82            [24]  694 	mov	r5,dpl
      00106D 15 81            [12]  695 	dec	sp
      00106F 15 81            [12]  696 	dec	sp
                                    697 ;	flash.c:51: if (pgNo == 0xff)
      001071 BD FF 03         [24]  698 	cjne	r5,#0xff,00102$
                                    699 ;	flash.c:52: return false;
      001074 C3               [12]  700 	clr	c
      001075 80 75            [24]  701 	sjmp	00109$
      001077                        702 00102$:
                                    703 ;	flash.c:54: irq = IEN_EA;
                                    704 ;	assignBit
      001077 A2 AF            [12]  705 	mov	c,_IEN_EA
      001079 92 09            [24]  706 	mov	_flashWrite_irq_65536_8,c
                                    707 ;	flash.c:55: IEN_EA = false;
                                    708 ;	assignBit
      00107B C2 AF            [12]  709 	clr	_IEN_EA
                                    710 ;	flash.c:57: speed = CLKSPEED;
      00107D 90 E4 10         [24]  711 	mov	dptr,#_flashWrite_speed_65536_8
      001080 E5 8E            [12]  712 	mov	a,_CLKSPEED
      001082 F0               [24]  713 	movx	@dptr,a
                                    714 ;	flash.c:58: CLKSPEED = 0x21;	//flash ops only work at this speed
      001083 75 8E 21         [24]  715 	mov	_CLKSPEED,#0x21
                                    716 ;	flash.c:60: cfgPg = CFGPAGE;
      001086 90 E4 0F         [24]  717 	mov	dptr,#_flashWrite_cfgPg_65536_8
      001089 E5 FF            [12]  718 	mov	a,_CFGPAGE
      00108B F0               [24]  719 	movx	@dptr,a
                                    720 ;	flash.c:61: CFGPAGE = 4;
      00108C 75 FF 04         [24]  721 	mov	_CFGPAGE,#0x04
                                    722 ;	flash.c:63: if (alsoErase)
      00108F 30 08 05         [24]  723 	jnb	_flashWrite_PARM_4,00104$
                                    724 ;	flash.c:64: SETTINGS |= 0x38;
      001092 43 C7 38         [24]  725 	orl	_SETTINGS,#0x38
      001095 80 03            [24]  726 	sjmp	00105$
      001097                        727 00104$:
                                    728 ;	flash.c:66: SETTINGS = 0x18;
      001097 75 C7 18         [24]  729 	mov	_SETTINGS,#0x18
      00109A                        730 00105$:
                                    731 ;	flash.c:67: FWRTHREE = 3;
      00109A 75 DF 03         [24]  732 	mov	_FWRTHREE,#0x03
                                    733 ;	flash.c:68: FPGNO = pgNo;
      00109D 8D D8            [24]  734 	mov	_FPGNO,r5
                                    735 ;	flash.c:69: FWRDSTL = (uint8_t)dstAddr;
      00109F 90 E4 0B         [24]  736 	mov	dptr,#_flashWrite_dstAddr_65536_7
      0010A2 E0               [24]  737 	movx	a,@dptr
      0010A3 FA               [12]  738 	mov	r2,a
      0010A4 A3               [24]  739 	inc	dptr
      0010A5 E0               [24]  740 	movx	a,@dptr
      0010A6 FB               [12]  741 	mov	r3,a
      0010A7 A3               [24]  742 	inc	dptr
      0010A8 E0               [24]  743 	movx	a,@dptr
      0010A9 FC               [12]  744 	mov	r4,a
      0010AA A3               [24]  745 	inc	dptr
      0010AB E0               [24]  746 	movx	a,@dptr
      0010AC 8A DB            [24]  747 	mov	_FWRDSTL,r2
                                    748 ;	flash.c:70: FWRDSTH = (((uint16_t)dstAddr) >> 8) & 0x03;
      0010AE 8B 02            [24]  749 	mov	ar2,r3
      0010B0 74 03            [12]  750 	mov	a,#0x03
      0010B2 5A               [12]  751 	anl	a,r2
      0010B3 F5 DC            [12]  752 	mov	_FWRDSTH,a
                                    753 ;	flash.c:71: FWRLENL = (uint8_t)(len - 1);
      0010B5 8E 05            [24]  754 	mov	ar5,r6
      0010B7 1D               [12]  755 	dec	r5
      0010B8 8D DD            [24]  756 	mov	_FWRLENL,r5
                                    757 ;	flash.c:72: FWRLENH = (len - 1) >> 8;
      0010BA 1E               [12]  758 	dec	r6
      0010BB BE FF 01         [24]  759 	cjne	r6,#0xff,00130$
      0010BE 1F               [12]  760 	dec	r7
      0010BF                        761 00130$:
      0010BF 8F DE            [24]  762 	mov	_FWRLENH,r7
                                    763 ;	flash.c:73: FWRSRCL = (uint8_t)src;
      0010C1 90 E4 07         [24]  764 	mov	dptr,#_flashWrite_PARM_2
      0010C4 E0               [24]  765 	movx	a,@dptr
      0010C5 FE               [12]  766 	mov	r6,a
      0010C6 A3               [24]  767 	inc	dptr
      0010C7 E0               [24]  768 	movx	a,@dptr
      0010C8 FF               [12]  769 	mov	r7,a
      0010C9 8E D9            [24]  770 	mov	_FWRSRCL,r6
                                    771 ;	flash.c:74: FWRSRCH = ((uint16_t)src) >> 8;
      0010CB 8F DA            [24]  772 	mov	_FWRSRCH,r7
                                    773 ;	flash.c:75: TRIGGER |= 8;				//start
      0010CD 43 D7 08         [24]  774 	orl	_TRIGGER,#0x08
                                    775 ;	flash.c:76: while (!(TCON2 & 0x08));	//wait
      0010D0                        776 00106$:
      0010D0 E5 CF            [12]  777 	mov	a,_TCON2
      0010D2 30 E3 FB         [24]  778 	jnb	acc.3,00106$
                                    779 ;	flash.c:78: TCON2 &=~ 0x48;
      0010D5 53 CF B7         [24]  780 	anl	_TCON2,#0xb7
                                    781 ;	flash.c:79: SETTINGS &=~ 0x10;
      0010D8 53 C7 EF         [24]  782 	anl	_SETTINGS,#0xef
                                    783 ;	flash.c:81: CFGPAGE = cfgPg;
      0010DB 90 E4 0F         [24]  784 	mov	dptr,#_flashWrite_cfgPg_65536_8
      0010DE E0               [24]  785 	movx	a,@dptr
      0010DF F5 FF            [12]  786 	mov	_CFGPAGE,a
                                    787 ;	flash.c:83: CLKSPEED = speed;
      0010E1 90 E4 10         [24]  788 	mov	dptr,#_flashWrite_speed_65536_8
      0010E4 E0               [24]  789 	movx	a,@dptr
      0010E5 F5 8E            [12]  790 	mov	_CLKSPEED,a
                                    791 ;	flash.c:85: IEN_EA = irq;
                                    792 ;	assignBit
      0010E7 A2 09            [12]  793 	mov	c,_flashWrite_irq_65536_8
      0010E9 92 AF            [24]  794 	mov	_IEN_EA,c
                                    795 ;	flash.c:87: return true;
      0010EB D3               [12]  796 	setb	c
      0010EC                        797 00109$:
                                    798 ;	flash.c:88: }
      0010EC D0 02            [24]  799 	pop	ar2
      0010EE D0 03            [24]  800 	pop	ar3
      0010F0 D0 04            [24]  801 	pop	ar4
      0010F2 D0 05            [24]  802 	pop	ar5
      0010F4 D0 06            [24]  803 	pop	ar6
      0010F6 D0 07            [24]  804 	pop	ar7
      0010F8 22               [24]  805 	ret
                                    806 ;------------------------------------------------------------
                                    807 ;Allocation info for local variables in function 'flashRead'
                                    808 ;------------------------------------------------------------
                                    809 ;dst                       Allocated with name '_flashRead_PARM_2'
                                    810 ;len                       Allocated with name '_flashRead_PARM_3'
                                    811 ;srcAddr                   Allocated with name '_flashRead_srcAddr_65536_9'
                                    812 ;pgNo                      Allocated with name '_flashRead_pgNo_65536_10'
                                    813 ;cfgPg                     Allocated with name '_flashRead_cfgPg_65536_10'
                                    814 ;speed                     Allocated with name '_flashRead_speed_65536_10'
                                    815 ;------------------------------------------------------------
                                    816 ;	flash.c:91: __bit flashRead(uint32_t srcAddr, void __xdata *dst, uint16_t len)
                                    817 ;	-----------------------------------------
                                    818 ;	 function flashRead
                                    819 ;	-----------------------------------------
      0010F9                        820 _flashRead:
      0010F9 C0 07            [24]  821 	push	ar7
      0010FB C0 06            [24]  822 	push	ar6
      0010FD C0 05            [24]  823 	push	ar5
      0010FF C0 04            [24]  824 	push	ar4
      001101 C0 03            [24]  825 	push	ar3
      001103 C0 02            [24]  826 	push	ar2
      001105 C0 01            [24]  827 	push	ar1
      001107 C0 00            [24]  828 	push	ar0
      001109 AF 82            [24]  829 	mov	r7,dpl
      00110B AE 83            [24]  830 	mov	r6,dph
      00110D AD F0            [24]  831 	mov	r5,b
      00110F FC               [12]  832 	mov	r4,a
      001110 90 E4 15         [24]  833 	mov	dptr,#_flashRead_srcAddr_65536_9
      001113 EF               [12]  834 	mov	a,r7
      001114 F0               [24]  835 	movx	@dptr,a
      001115 EE               [12]  836 	mov	a,r6
      001116 A3               [24]  837 	inc	dptr
      001117 F0               [24]  838 	movx	@dptr,a
      001118 ED               [12]  839 	mov	a,r5
      001119 A3               [24]  840 	inc	dptr
      00111A F0               [24]  841 	movx	@dptr,a
      00111B EC               [12]  842 	mov	a,r4
      00111C A3               [24]  843 	inc	dptr
      00111D F0               [24]  844 	movx	@dptr,a
                                    845 ;	flash.c:96: pgNo = flashAddrCheck(srcAddr, len);
      00111E 90 E4 13         [24]  846 	mov	dptr,#_flashRead_PARM_3
      001121 E0               [24]  847 	movx	a,@dptr
      001122 FE               [12]  848 	mov	r6,a
      001123 A3               [24]  849 	inc	dptr
      001124 E0               [24]  850 	movx	a,@dptr
      001125 FF               [12]  851 	mov	r7,a
      001126 90 E4 15         [24]  852 	mov	dptr,#_flashRead_srcAddr_65536_9
      001129 E0               [24]  853 	movx	a,@dptr
      00112A FA               [12]  854 	mov	r2,a
      00112B A3               [24]  855 	inc	dptr
      00112C E0               [24]  856 	movx	a,@dptr
      00112D FB               [12]  857 	mov	r3,a
      00112E A3               [24]  858 	inc	dptr
      00112F E0               [24]  859 	movx	a,@dptr
      001130 FC               [12]  860 	mov	r4,a
      001131 A3               [24]  861 	inc	dptr
      001132 E0               [24]  862 	movx	a,@dptr
      001133 FD               [12]  863 	mov	r5,a
      001134 C0 06            [24]  864 	push	ar6
      001136 C0 07            [24]  865 	push	ar7
      001138 8A 82            [24]  866 	mov	dpl,r2
      00113A 8B 83            [24]  867 	mov	dph,r3
      00113C 8C F0            [24]  868 	mov	b,r4
      00113E ED               [12]  869 	mov	a,r5
      00113F 12 0F 71         [24]  870 	lcall	_flashAddrCheck
      001142 A9 82            [24]  871 	mov	r1,dpl
      001144 15 81            [12]  872 	dec	sp
      001146 15 81            [12]  873 	dec	sp
                                    874 ;	flash.c:97: if (pgNo == 0xff)
      001148 B9 FF 03         [24]  875 	cjne	r1,#0xff,00102$
                                    876 ;	flash.c:98: return false;
      00114B C3               [12]  877 	clr	c
      00114C 80 60            [24]  878 	sjmp	00106$
      00114E                        879 00102$:
                                    880 ;	flash.c:100: irq = IEN_EA;
                                    881 ;	assignBit
      00114E A2 AF            [12]  882 	mov	c,_IEN_EA
      001150 92 0A            [24]  883 	mov	_flashRead_irq_65536_10,c
                                    884 ;	flash.c:101: IEN_EA = false;
                                    885 ;	assignBit
      001152 C2 AF            [12]  886 	clr	_IEN_EA
                                    887 ;	flash.c:103: speed = CLKSPEED;
      001154 90 E4 1A         [24]  888 	mov	dptr,#_flashRead_speed_65536_10
      001157 E5 8E            [12]  889 	mov	a,_CLKSPEED
      001159 F0               [24]  890 	movx	@dptr,a
                                    891 ;	flash.c:104: CLKSPEED = 0x21;	//flash ops only work at this speed
      00115A 75 8E 21         [24]  892 	mov	_CLKSPEED,#0x21
                                    893 ;	flash.c:106: cfgPg = CFGPAGE;
      00115D 90 E4 19         [24]  894 	mov	dptr,#_flashRead_cfgPg_65536_10
      001160 E5 FF            [12]  895 	mov	a,_CFGPAGE
      001162 F0               [24]  896 	movx	@dptr,a
                                    897 ;	flash.c:107: CFGPAGE = 4;
      001163 75 FF 04         [24]  898 	mov	_CFGPAGE,#0x04
                                    899 ;	flash.c:109: SETTINGS = 0x8;
      001166 75 C7 08         [24]  900 	mov	_SETTINGS,#0x08
                                    901 ;	flash.c:110: FWRTHREE = 3;
      001169 75 DF 03         [24]  902 	mov	_FWRTHREE,#0x03
                                    903 ;	flash.c:111: FPGNO = pgNo;
      00116C 89 D8            [24]  904 	mov	_FPGNO,r1
                                    905 ;	flash.c:112: FWRDSTL = (uint8_t)dst;
      00116E 90 E4 11         [24]  906 	mov	dptr,#_flashRead_PARM_2
      001171 E0               [24]  907 	movx	a,@dptr
      001172 F8               [12]  908 	mov	r0,a
      001173 A3               [24]  909 	inc	dptr
      001174 E0               [24]  910 	movx	a,@dptr
      001175 F9               [12]  911 	mov	r1,a
      001176 88 DB            [24]  912 	mov	_FWRDSTL,r0
                                    913 ;	flash.c:113: FWRDSTH = ((uint16_t)dst) >> 8;
      001178 89 DC            [24]  914 	mov	_FWRDSTH,r1
                                    915 ;	flash.c:114: FWRSRCL = (uint8_t)srcAddr;
      00117A 8A D9            [24]  916 	mov	_FWRSRCL,r2
                                    917 ;	flash.c:115: FWRSRCH = (((uint16_t)srcAddr) >> 8) & 0x03;
      00117C 8B 02            [24]  918 	mov	ar2,r3
      00117E 74 03            [12]  919 	mov	a,#0x03
      001180 5A               [12]  920 	anl	a,r2
      001181 F5 DA            [12]  921 	mov	_FWRSRCH,a
                                    922 ;	flash.c:116: FWRLENL = (uint8_t)(len - 1);
      001183 8E 05            [24]  923 	mov	ar5,r6
      001185 1D               [12]  924 	dec	r5
      001186 8D DD            [24]  925 	mov	_FWRLENL,r5
                                    926 ;	flash.c:117: FWRLENH = (len - 1) >> 8;
      001188 1E               [12]  927 	dec	r6
      001189 BE FF 01         [24]  928 	cjne	r6,#0xff,00122$
      00118C 1F               [12]  929 	dec	r7
      00118D                        930 00122$:
      00118D 8F DE            [24]  931 	mov	_FWRLENH,r7
                                    932 ;	flash.c:118: TRIGGER |= 8;				//start
      00118F 43 D7 08         [24]  933 	orl	_TRIGGER,#0x08
                                    934 ;	flash.c:120: while (!(TCON2 & 0x08));	//wait
      001192                        935 00103$:
      001192 E5 CF            [12]  936 	mov	a,_TCON2
      001194 30 E3 FB         [24]  937 	jnb	acc.3,00103$
                                    938 ;	flash.c:122: TCON2 &=~ 0x48;
      001197 53 CF B7         [24]  939 	anl	_TCON2,#0xb7
                                    940 ;	flash.c:123: SETTINGS &=~ 0x10;
      00119A 53 C7 EF         [24]  941 	anl	_SETTINGS,#0xef
                                    942 ;	flash.c:125: CFGPAGE = cfgPg;
      00119D 90 E4 19         [24]  943 	mov	dptr,#_flashRead_cfgPg_65536_10
      0011A0 E0               [24]  944 	movx	a,@dptr
      0011A1 F5 FF            [12]  945 	mov	_CFGPAGE,a
                                    946 ;	flash.c:127: CLKSPEED = speed;
      0011A3 90 E4 1A         [24]  947 	mov	dptr,#_flashRead_speed_65536_10
      0011A6 E0               [24]  948 	movx	a,@dptr
      0011A7 F5 8E            [12]  949 	mov	_CLKSPEED,a
                                    950 ;	flash.c:129: IEN_EA = irq;
                                    951 ;	assignBit
      0011A9 A2 0A            [12]  952 	mov	c,_flashRead_irq_65536_10
      0011AB 92 AF            [24]  953 	mov	_IEN_EA,c
                                    954 ;	flash.c:131: return true;
      0011AD D3               [12]  955 	setb	c
      0011AE                        956 00106$:
                                    957 ;	flash.c:132: }
      0011AE D0 00            [24]  958 	pop	ar0
      0011B0 D0 01            [24]  959 	pop	ar1
      0011B2 D0 02            [24]  960 	pop	ar2
      0011B4 D0 03            [24]  961 	pop	ar3
      0011B6 D0 04            [24]  962 	pop	ar4
      0011B8 D0 05            [24]  963 	pop	ar5
      0011BA D0 06            [24]  964 	pop	ar6
      0011BC D0 07            [24]  965 	pop	ar7
      0011BE 22               [24]  966 	ret
                                    967 ;------------------------------------------------------------
                                    968 ;Allocation info for local variables in function 'flashErase'
                                    969 ;------------------------------------------------------------
                                    970 ;dstAddr                   Allocated with name '_flashErase_dstAddr_65536_11'
                                    971 ;dummyByte                 Allocated with name '_flashErase_dummyByte_65536_12'
                                    972 ;pgNo                      Allocated with name '_flashErase_pgNo_65536_12'
                                    973 ;cfgPg                     Allocated with name '_flashErase_cfgPg_65536_12'
                                    974 ;speed                     Allocated with name '_flashErase_speed_65536_12'
                                    975 ;------------------------------------------------------------
                                    976 ;	flash.c:135: __bit  flashErase(uint32_t dstAddr)
                                    977 ;	-----------------------------------------
                                    978 ;	 function flashErase
                                    979 ;	-----------------------------------------
      0011BF                        980 _flashErase:
      0011BF C0 07            [24]  981 	push	ar7
      0011C1 C0 06            [24]  982 	push	ar6
      0011C3 C0 05            [24]  983 	push	ar5
      0011C5 C0 04            [24]  984 	push	ar4
      0011C7 AF 82            [24]  985 	mov	r7,dpl
      0011C9 AE 83            [24]  986 	mov	r6,dph
      0011CB AD F0            [24]  987 	mov	r5,b
      0011CD FC               [12]  988 	mov	r4,a
      0011CE 90 E4 1B         [24]  989 	mov	dptr,#_flashErase_dstAddr_65536_11
      0011D1 EF               [12]  990 	mov	a,r7
      0011D2 F0               [24]  991 	movx	@dptr,a
      0011D3 EE               [12]  992 	mov	a,r6
      0011D4 A3               [24]  993 	inc	dptr
      0011D5 F0               [24]  994 	movx	@dptr,a
      0011D6 ED               [12]  995 	mov	a,r5
      0011D7 A3               [24]  996 	inc	dptr
      0011D8 F0               [24]  997 	movx	@dptr,a
      0011D9 EC               [12]  998 	mov	a,r4
      0011DA A3               [24]  999 	inc	dptr
      0011DB F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	flash.c:137: uint8_t __xdata dummyByte = 0xff;
      0011DC 90 E4 1F         [24] 1002 	mov	dptr,#_flashErase_dummyByte_65536_12
      0011DF 74 FF            [12] 1003 	mov	a,#0xff
      0011E1 F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	flash.c:141: pgNo = flashAddrCheck(dstAddr, 1);
      0011E2 90 E4 1B         [24] 1006 	mov	dptr,#_flashErase_dstAddr_65536_11
      0011E5 E0               [24] 1007 	movx	a,@dptr
      0011E6 FC               [12] 1008 	mov	r4,a
      0011E7 A3               [24] 1009 	inc	dptr
      0011E8 E0               [24] 1010 	movx	a,@dptr
      0011E9 FD               [12] 1011 	mov	r5,a
      0011EA A3               [24] 1012 	inc	dptr
      0011EB E0               [24] 1013 	movx	a,@dptr
      0011EC FE               [12] 1014 	mov	r6,a
      0011ED A3               [24] 1015 	inc	dptr
      0011EE E0               [24] 1016 	movx	a,@dptr
      0011EF FF               [12] 1017 	mov	r7,a
      0011F0 74 01            [12] 1018 	mov	a,#0x01
      0011F2 C0 E0            [24] 1019 	push	acc
      0011F4 E4               [12] 1020 	clr	a
      0011F5 C0 E0            [24] 1021 	push	acc
      0011F7 8C 82            [24] 1022 	mov	dpl,r4
      0011F9 8D 83            [24] 1023 	mov	dph,r5
      0011FB 8E F0            [24] 1024 	mov	b,r6
      0011FD EF               [12] 1025 	mov	a,r7
      0011FE 12 0F 71         [24] 1026 	lcall	_flashAddrCheck
      001201 AF 82            [24] 1027 	mov	r7,dpl
      001203 15 81            [12] 1028 	dec	sp
      001205 15 81            [12] 1029 	dec	sp
                                   1030 ;	flash.c:143: if (pgNo == 0xff)
      001207 BF FF 03         [24] 1031 	cjne	r7,#0xff,00102$
                                   1032 ;	flash.c:144: return false;
      00120A C3               [12] 1033 	clr	c
      00120B 80 54            [24] 1034 	sjmp	00106$
      00120D                       1035 00102$:
                                   1036 ;	flash.c:146: irq = IEN_EA;
                                   1037 ;	assignBit
      00120D A2 AF            [12] 1038 	mov	c,_IEN_EA
      00120F 92 0B            [24] 1039 	mov	_flashErase_irq_65536_12,c
                                   1040 ;	flash.c:147: IEN_EA = false;
                                   1041 ;	assignBit
      001211 C2 AF            [12] 1042 	clr	_IEN_EA
                                   1043 ;	flash.c:149: speed = CLKSPEED;
      001213 90 E4 21         [24] 1044 	mov	dptr,#_flashErase_speed_65536_12
      001216 E5 8E            [12] 1045 	mov	a,_CLKSPEED
      001218 F0               [24] 1046 	movx	@dptr,a
                                   1047 ;	flash.c:150: CLKSPEED = 0x21;	//flash ops only work at this speed
      001219 75 8E 21         [24] 1048 	mov	_CLKSPEED,#0x21
                                   1049 ;	flash.c:152: cfgPg = CFGPAGE;
      00121C 90 E4 20         [24] 1050 	mov	dptr,#_flashErase_cfgPg_65536_12
      00121F E5 FF            [12] 1051 	mov	a,_CFGPAGE
      001221 F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	flash.c:153: CFGPAGE = 4;
      001222 75 FF 04         [24] 1054 	mov	_CFGPAGE,#0x04
                                   1055 ;	flash.c:158: SETTINGS |= 0x38;
      001225 43 C7 38         [24] 1056 	orl	_SETTINGS,#0x38
                                   1057 ;	flash.c:159: FWRTHREE = 3;
      001228 75 DF 03         [24] 1058 	mov	_FWRTHREE,#0x03
                                   1059 ;	flash.c:160: FPGNO = pgNo;
      00122B 8F D8            [24] 1060 	mov	_FPGNO,r7
                                   1061 ;	flash.c:161: FWRDSTL = 0;
      00122D 75 DB 00         [24] 1062 	mov	_FWRDSTL,#0x00
                                   1063 ;	flash.c:162: FWRDSTH = 0;
      001230 75 DC 00         [24] 1064 	mov	_FWRDSTH,#0x00
                                   1065 ;	flash.c:163: FWRLENL = 0;
      001233 75 DD 00         [24] 1066 	mov	_FWRLENL,#0x00
                                   1067 ;	flash.c:164: FWRLENH = 0;
      001236 75 DE 00         [24] 1068 	mov	_FWRLENH,#0x00
                                   1069 ;	flash.c:165: FWRSRCL = (uint8_t)&dummyByte;
      001239 75 D9 1F         [24] 1070 	mov	_FWRSRCL,#_flashErase_dummyByte_65536_12
                                   1071 ;	flash.c:166: FWRSRCH = ((uint16_t)&dummyByte) >> 8;
      00123C 7E 1F            [12] 1072 	mov	r6,#_flashErase_dummyByte_65536_12
      00123E 7F E4            [12] 1073 	mov	r7,#(_flashErase_dummyByte_65536_12 >> 8)
      001240 8F DA            [24] 1074 	mov	_FWRSRCH,r7
                                   1075 ;	flash.c:167: TRIGGER |= 8;				//start
      001242 43 D7 08         [24] 1076 	orl	_TRIGGER,#0x08
                                   1077 ;	flash.c:168: while (!(TCON2 & 0x08));	//wait
      001245                       1078 00103$:
      001245 E5 CF            [12] 1079 	mov	a,_TCON2
      001247 30 E3 FB         [24] 1080 	jnb	acc.3,00103$
                                   1081 ;	flash.c:170: TCON2 &=~ 0x48;
      00124A 53 CF B7         [24] 1082 	anl	_TCON2,#0xb7
                                   1083 ;	flash.c:171: SETTINGS &=~ 0x10;
      00124D 53 C7 EF         [24] 1084 	anl	_SETTINGS,#0xef
                                   1085 ;	flash.c:173: CFGPAGE = cfgPg;
      001250 90 E4 20         [24] 1086 	mov	dptr,#_flashErase_cfgPg_65536_12
      001253 E0               [24] 1087 	movx	a,@dptr
      001254 F5 FF            [12] 1088 	mov	_CFGPAGE,a
                                   1089 ;	flash.c:175: CLKSPEED = speed;
      001256 90 E4 21         [24] 1090 	mov	dptr,#_flashErase_speed_65536_12
      001259 E0               [24] 1091 	movx	a,@dptr
      00125A F5 8E            [12] 1092 	mov	_CLKSPEED,a
                                   1093 ;	flash.c:177: IEN_EA = irq;
                                   1094 ;	assignBit
      00125C A2 0B            [12] 1095 	mov	c,_flashErase_irq_65536_12
      00125E 92 AF            [24] 1096 	mov	_IEN_EA,c
                                   1097 ;	flash.c:179: return true;
      001260 D3               [12] 1098 	setb	c
      001261                       1099 00106$:
                                   1100 ;	flash.c:180: }
      001261 D0 04            [24] 1101 	pop	ar4
      001263 D0 05            [24] 1102 	pop	ar5
      001265 D0 06            [24] 1103 	pop	ar6
      001267 D0 07            [24] 1104 	pop	ar7
      001269 22               [24] 1105 	ret
                                   1106 	.area CSEG    (CODE)
                                   1107 	.area CONST   (CODE)
                                   1108 	.area XINIT   (CODE)
                                   1109 	.area CABS    (ABS,CODE)
