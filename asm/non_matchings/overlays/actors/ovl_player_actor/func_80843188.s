glabel func_80843188
/* 10F78 80843188 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 10F7C 8084318C AFB00028 */  sw      $s0, 0x0028($sp)
/* 10F80 80843190 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 10F84 80843194 AFA5005C */  sw      $a1, 0x005C($sp)
/* 10F88 80843198 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 10F8C 8084319C AFBF002C */  sw      $ra, 0x002C($sp)
/* 10F90 808431A0 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 10F94 808431A4 0C028EF0 */  jal     func_800A3BC0
/* 10F98 808431A8 AFA50034 */  sw      $a1, 0x0034($sp)
/* 10F9C 808431AC 1040000F */  beq     $v0, $zero, .L808431EC
/* 10FA0 808431B0 00000000 */  nop
/* 10FA4 808431B4 0C023A74 */  jal     func_8008E9D0
/* 10FA8 808431B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10FAC 808431BC 14400008 */  bne     $v0, $zero, .L808431E0
/* 10FB0 808431C0 8FA4005C */  lw      $a0, 0x005C($sp)
/* 10FB4 808431C4 920E015B */  lbu     $t6, 0x015B($s0)           ## 0000015B
/* 10FB8 808431C8 3C068085 */  lui     $a2, %hi(D_80853B0C)       ## $a2 = 80850000
/* 10FBC 808431CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 10FC0 808431D0 000E7880 */  sll     $t7, $t6,  2
/* 10FC4 808431D4 00CF3021 */  addu    $a2, $a2, $t7
/* 10FC8 808431D8 0C20C8A1 */  jal     func_80832284
/* 10FCC 808431DC 8CC63B0C */  lw      $a2, %lo(D_80853B0C)($a2)
.L808431E0:
/* 10FD0 808431E0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 10FD4 808431E4 A6180850 */  sh      $t8, 0x0850($s0)           ## 00000850
/* 10FD8 808431E8 A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
.L808431EC:
/* 10FDC 808431EC 0C023A74 */  jal     func_8008E9D0
/* 10FE0 808431F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10FE4 808431F4 1440000D */  bne     $v0, $zero, .L8084322C
/* 10FE8 808431F8 00000000 */  nop
/* 10FEC 808431FC 8E19067C */  lw      $t9, 0x067C($s0)           ## 0000067C
/* 10FF0 80843200 3C010040 */  lui     $at, 0x0040                ## $at = 00400000
/* 10FF4 80843204 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 10FF8 80843208 03214025 */  or      $t0, $t9, $at              ## $t0 = 00400000
/* 10FFC 8084320C AE08067C */  sw      $t0, 0x067C($s0)           ## 0000067C
/* 11000 80843210 0C20D99C */  jal     func_80836670
/* 11004 80843214 8FA5005C */  lw      $a1, 0x005C($sp)
/* 11008 80843218 8E09067C */  lw      $t1, 0x067C($s0)           ## 0000067C
/* 1100C 8084321C 3C01FFBF */  lui     $at, 0xFFBF                ## $at = FFBF0000
/* 11010 80843220 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFBFFFFF
/* 11014 80843224 01215024 */  and     $t2, $t1, $at
/* 11018 80843228 AE0A067C */  sw      $t2, 0x067C($s0)           ## 0000067C
.L8084322C:
/* 1101C 8084322C 0C20DC87 */  jal     func_8083721C
/* 11020 80843230 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11024 80843234 860B0850 */  lh      $t3, 0x0850($s0)           ## 00000850
/* 11028 80843238 3C028086 */  lui     $v0, %hi(D_80858AB4)       ## $v0 = 80860000
/* 1102C 8084323C 516000D4 */  beql    $t3, $zero, .L80843590
/* 11030 80843240 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 11034 80843244 8C428AB4 */  lw      $v0, %lo(D_80858AB4)($v0)
/* 11038 80843248 8FA3005C */  lw      $v1, 0x005C($sp)
/* 1103C 8084324C 804C0015 */  lb      $t4, 0x0015($v0)           ## 80860015
/* 11040 80843250 000C6880 */  sll     $t5, $t4,  2
/* 11044 80843254 01AC6823 */  subu    $t5, $t5, $t4
/* 11048 80843258 000D68C0 */  sll     $t5, $t5,  3
/* 1104C 8084325C 01AC6821 */  addu    $t5, $t5, $t4
/* 11050 80843260 000D6880 */  sll     $t5, $t5,  2
/* 11054 80843264 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 11058 80843268 00000000 */  nop
/* 1105C 8084326C 468021A0 */  cvt.s.w $f6, $f4
/* 11060 80843270 E7A60054 */  swc1    $f6, 0x0054($sp)
/* 11064 80843274 804E0014 */  lb      $t6, 0x0014($v0)           ## 80860014
/* 11068 80843278 000E0823 */  subu    $at, $zero, $t6
/* 1106C 8084327C 00017900 */  sll     $t7, $at,  4
/* 11070 80843280 01E17823 */  subu    $t7, $t7, $at
/* 11074 80843284 000F78C0 */  sll     $t7, $t7,  3
/* 11078 80843288 448F4000 */  mtc1    $t7, $f8                   ## $f8 = 0.00
/* 1107C 8084328C 00000000 */  nop
/* 11080 80843290 468042A0 */  cvt.s.w $f10, $f8
/* 11084 80843294 E7AA0050 */  swc1    $f10, 0x0050($sp)
/* 11088 80843298 847807A0 */  lh      $t8, 0x07A0($v1)           ## 000007A0
/* 1108C 8084329C 0018C880 */  sll     $t9, $t8,  2
/* 11090 808432A0 00794021 */  addu    $t0, $v1, $t9
/* 11094 808432A4 0C016A52 */  jal     func_8005A948
/* 11098 808432A8 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 1109C 808432AC 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 110A0 808432B0 01222023 */  subu    $a0, $t1, $v0
/* 110A4 808432B4 00042400 */  sll     $a0, $a0, 16
/* 110A8 808432B8 00042403 */  sra     $a0, $a0, 16
/* 110AC 808432BC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 110B0 808432C0 A7A4004E */  sh      $a0, 0x004E($sp)
/* 110B4 808432C4 E7A00040 */  swc1    $f0, 0x0040($sp)
/* 110B8 808432C8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 110BC 808432CC 87A4004E */  lh      $a0, 0x004E($sp)
/* 110C0 808432D0 C7B00054 */  lwc1    $f16, 0x0054($sp)
/* 110C4 808432D4 C7B20040 */  lwc1    $f18, 0x0040($sp)
/* 110C8 808432D8 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 110CC 808432DC 87A4004E */  lh      $a0, 0x004E($sp)
/* 110D0 808432E0 46128102 */  mul.s   $f4, $f16, $f18
/* 110D4 808432E4 00000000 */  nop
/* 110D8 808432E8 46060202 */  mul.s   $f8, $f0, $f6
/* 110DC 808432EC 46044280 */  add.s   $f10, $f8, $f4
/* 110E0 808432F0 4600540D */  trunc.w.s $f16, $f10
/* 110E4 808432F4 44058000 */  mfc1    $a1, $f16
/* 110E8 808432F8 00000000 */  nop
/* 110EC 808432FC 00052C00 */  sll     $a1, $a1, 16
/* 110F0 80843300 00052C03 */  sra     $a1, $a1, 16
/* 110F4 80843304 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 110F8 80843308 A7A5004C */  sh      $a1, 0x004C($sp)
/* 110FC 8084330C E7A00040 */  swc1    $f0, 0x0040($sp)
/* 11100 80843310 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 11104 80843314 87A4004E */  lh      $a0, 0x004E($sp)
/* 11108 80843318 C7B20050 */  lwc1    $f18, 0x0050($sp)
/* 1110C 8084331C C7A60040 */  lwc1    $f6, 0x0040($sp)
/* 11110 80843320 C7A40054 */  lwc1    $f4, 0x0054($sp)
/* 11114 80843324 87A5004C */  lh      $a1, 0x004C($sp)
/* 11118 80843328 46069202 */  mul.s   $f8, $f18, $f6
/* 1111C 8084332C 28A10DAD */  slti    $at, $a1, 0x0DAD
/* 11120 80843330 46040282 */  mul.s   $f10, $f0, $f4
/* 11124 80843334 460A4401 */  sub.s   $f16, $f8, $f10
/* 11128 80843338 4600848D */  trunc.w.s $f18, $f16
/* 1112C 8084333C 44049000 */  mfc1    $a0, $f18
/* 11130 80843340 14200002 */  bne     $at, $zero, .L8084334C
/* 11134 80843344 A7A4004A */  sh      $a0, 0x004A($sp)
/* 11138 80843348 24050DAC */  addiu   $a1, $zero, 0x0DAC         ## $a1 = 00000DAC
.L8084334C:
/* 1113C 8084334C 860C0044 */  lh      $t4, 0x0044($s0)           ## 00000044
/* 11140 80843350 00AC1023 */  subu    $v0, $a1, $t4
/* 11144 80843354 04400003 */  bltz    $v0, .L80843364
/* 11148 80843358 00021823 */  subu    $v1, $zero, $v0
/* 1114C 8084335C 10000001 */  beq     $zero, $zero, .L80843364
/* 11150 80843360 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80843364:
/* 11154 80843364 44833000 */  mtc1    $v1, $f6                   ## $f6 = 0.00
/* 11158 80843368 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 1115C 8084336C 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.25
/* 11160 80843370 46803120 */  cvt.s.w $f4, $f6
/* 11164 80843374 46002202 */  mul.s   $f8, $f4, $f0
/* 11168 80843378 4600428D */  trunc.w.s $f10, $f8
/* 1116C 8084337C 44025000 */  mfc1    $v0, $f10
/* 11170 80843380 00000000 */  nop
/* 11174 80843384 00027400 */  sll     $t6, $v0, 16
/* 11178 80843388 000E7C03 */  sra     $t7, $t6, 16
/* 1117C 8084338C 29E10064 */  slti    $at, $t7, 0x0064
/* 11180 80843390 00023400 */  sll     $a2, $v0, 16
/* 11184 80843394 10200002 */  beq     $at, $zero, .L808433A0
/* 11188 80843398 00063403 */  sra     $a2, $a2, 16
/* 1118C 8084339C 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
.L808433A0:
/* 11190 808433A0 860806BE */  lh      $t0, 0x06BE($s0)           ## 000006BE
/* 11194 808433A4 0004C400 */  sll     $t8, $a0, 16
/* 11198 808433A8 0018CC03 */  sra     $t9, $t8, 16
/* 1119C 808433AC 03281023 */  subu    $v0, $t9, $t0
/* 111A0 808433B0 04400003 */  bltz    $v0, .L808433C0
/* 111A4 808433B4 26040044 */  addiu   $a0, $s0, 0x0044           ## $a0 = 00000044
/* 111A8 808433B8 10000002 */  beq     $zero, $zero, .L808433C4
/* 111AC 808433BC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L808433C0:
/* 111B0 808433C0 00021823 */  subu    $v1, $zero, $v0
.L808433C4:
/* 111B4 808433C4 44838000 */  mtc1    $v1, $f16                  ## $f16 = 0.00
/* 111B8 808433C8 00000000 */  nop
/* 111BC 808433CC 468084A0 */  cvt.s.w $f18, $f16
/* 111C0 808433D0 46009182 */  mul.s   $f6, $f18, $f0
/* 111C4 808433D4 4600310D */  trunc.w.s $f4, $f6
/* 111C8 808433D8 44022000 */  mfc1    $v0, $f4
/* 111CC 808433DC 00000000 */  nop
/* 111D0 808433E0 00025400 */  sll     $t2, $v0, 16
/* 111D4 808433E4 000A5C03 */  sra     $t3, $t2, 16
/* 111D8 808433E8 29610032 */  slti    $at, $t3, 0x0032
/* 111DC 808433EC 00023C00 */  sll     $a3, $v0, 16
/* 111E0 808433F0 10200002 */  beq     $at, $zero, .L808433FC
/* 111E4 808433F4 00073C03 */  sra     $a3, $a3, 16
/* 111E8 808433F8 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
.L808433FC:
/* 111EC 808433FC 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 111F0 80843400 A7A70046 */  sh      $a3, 0x0046($sp)
/* 111F4 80843404 87A70046 */  lh      $a3, 0x0046($sp)
/* 111F8 80843408 860C0044 */  lh      $t4, 0x0044($s0)           ## 00000044
/* 111FC 8084340C 260406BE */  addiu   $a0, $s0, 0x06BE           ## $a0 = 000006BE
/* 11200 80843410 00073400 */  sll     $a2, $a3, 16
/* 11204 80843414 A60C06BC */  sh      $t4, 0x06BC($s0)           ## 000006BC
/* 11208 80843418 87A5004A */  lh      $a1, 0x004A($sp)
/* 1120C 8084341C 0C01DE2B */  jal     Math_ApproxUpdateScaledS

/* 11210 80843420 00063403 */  sra     $a2, $a2, 16
/* 11214 80843424 820D084F */  lb      $t5, 0x084F($s0)           ## 0000084F
/* 11218 80843428 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1121C 8084342C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11220 80843430 11A00014 */  beq     $t5, $zero, .L80843484
/* 11224 80843434 00000000 */  nop
/* 11228 80843438 0C210B7D */  jal     func_80842DF4
/* 1122C 8084343C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 11230 80843440 1440000D */  bne     $v0, $zero, .L80843478
/* 11234 80843444 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 11238 80843448 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 1123C 8084344C 44815000 */  mtc1    $at, $f10                  ## $f10 = 2.00
/* 11240 80843450 C60801CC */  lwc1    $f8, 0x01CC($s0)           ## 000001CC
/* 11244 80843454 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11248 80843458 460A403C */  c.lt.s  $f8, $f10
/* 1124C 8084345C 00000000 */  nop
/* 11250 80843460 4502004B */  bc1fl   .L80843590
/* 11254 80843464 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 11258 80843468 0C20CE88 */  jal     func_80833A20
/* 1125C 8084346C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 11260 80843470 10000047 */  beq     $zero, $zero, .L80843590
/* 11264 80843474 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
.L80843478:
/* 11268 80843478 A60E0850 */  sh      $t6, 0x0850($s0)           ## 00000850
/* 1126C 8084347C 10000043 */  beq     $zero, $zero, .L8084358C
/* 11270 80843480 A200084F */  sb      $zero, 0x084F($s0)         ## 0000084F
.L80843484:
/* 11274 80843484 0C210A59 */  jal     func_80842964
/* 11278 80843488 8FA5005C */  lw      $a1, 0x005C($sp)
/* 1127C 8084348C 14400048 */  bne     $v0, $zero, .L808435B0
/* 11280 80843490 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11284 80843494 0C20F0AC */  jal     func_8083C2B0
/* 11288 80843498 8FA5005C */  lw      $a1, 0x005C($sp)
/* 1128C 8084349C 10400006 */  beq     $v0, $zero, .L808434B8
/* 11290 808434A0 3C01FFBF */  lui     $at, 0xFFBF                ## $at = FFBF0000
/* 11294 808434A4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11298 808434A8 0C210A36 */  jal     func_808428D8
/* 1129C 808434AC 8FA5005C */  lw      $a1, 0x005C($sp)
/* 112A0 808434B0 10000037 */  beq     $zero, $zero, .L80843590
/* 112A4 808434B4 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
.L808434B8:
/* 112A8 808434B8 8E0F067C */  lw      $t7, 0x067C($s0)           ## 0000067C
/* 112AC 808434BC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 0000FFFF
/* 112B0 808434C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 112B4 808434C4 01E1C024 */  and     $t8, $t7, $at
/* 112B8 808434C8 0C20C8C6 */  jal     func_80832318
/* 112BC 808434CC AE18067C */  sw      $t8, 0x067C($s0)           ## 0000067C
/* 112C0 808434D0 0C023A74 */  jal     func_8008E9D0
/* 112C4 808434D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 112C8 808434D8 1040001A */  beq     $v0, $zero, .L80843544
/* 112CC 808434DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 112D0 808434E0 0C20E818 */  jal     func_8083A060
/* 112D4 808434E4 8FA5005C */  lw      $a1, 0x005C($sp)
/* 112D8 808434E8 3C040400 */  lui     $a0, 0x0400                ## $a0 = 04000000
/* 112DC 808434EC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 112E0 808434F0 24842400 */  addiu   $a0, $a0, 0x2400           ## $a0 = 04002400
/* 112E4 808434F4 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 112E8 808434F8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 112EC 808434FC 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 112F0 80843500 468084A0 */  cvt.s.w $f18, $f16
/* 112F4 80843504 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 112F8 80843508 AFB90018 */  sw      $t9, 0x0018($sp)
/* 112FC 8084350C 24C62400 */  addiu   $a2, $a2, 0x2400           ## $a2 = 04002400
/* 11300 80843510 8FA4005C */  lw      $a0, 0x005C($sp)
/* 11304 80843514 8FA50034 */  lw      $a1, 0x0034($sp)
/* 11308 80843518 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 1130C 8084351C 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 11310 80843520 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 11314 80843524 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 11318 80843528 E7A0001C */  swc1    $f0, 0x001C($sp)
/* 1131C 8084352C 8FA4005C */  lw      $a0, 0x005C($sp)
/* 11320 80843530 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 11324 80843534 0C20CBD5 */  jal     func_80832F54
/* 11328 80843538 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 1132C 8084353C 1000000F */  beq     $zero, $zero, .L8084357C
/* 11330 80843540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80843544:
/* 11334 80843544 82080154 */  lb      $t0, 0x0154($s0)           ## 00000154
/* 11338 80843548 05030004 */  bgezl   $t0, .L8084355C
/* 1133C 8084354C 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
/* 11340 80843550 0C023B1C */  jal     func_8008EC70
/* 11344 80843554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11348 80843558 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
.L8084355C:
/* 1134C 8084355C 3C058085 */  lui     $a1, %hi(D_80853B24)       ## $a1 = 80850000
/* 11350 80843560 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11354 80843564 00095080 */  sll     $t2, $t1,  2
/* 11358 80843568 00AA2821 */  addu    $a1, $a1, $t2
/* 1135C 8084356C 8CA53B24 */  lw      $a1, %lo(D_80853B24)($a1)
/* 11360 80843570 0C20E826 */  jal     func_8083A098
/* 11364 80843574 8FA6005C */  lw      $a2, 0x005C($sp)
/* 11368 80843578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084357C:
/* 1136C 8084357C 0C00BDF7 */  jal     func_8002F7DC
/* 11370 80843580 24051826 */  addiu   $a1, $zero, 0x1826         ## $a1 = 00001826
/* 11374 80843584 1000000B */  beq     $zero, $zero, .L808435B4
/* 11378 80843588 8FBF002C */  lw      $ra, 0x002C($sp)
.L8084358C:
/* 1137C 8084358C 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
.L80843590:
/* 11380 80843590 3C010040 */  lui     $at, 0x0040                ## $at = 00400000
/* 11384 80843594 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 11388 80843598 01616025 */  or      $t4, $t3, $at              ## $t4 = 00400000
/* 1138C 8084359C 0C023A90 */  jal     func_8008EA40
/* 11390 808435A0 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
/* 11394 808435A4 960D06AE */  lhu     $t5, 0x06AE($s0)           ## 000006AE
/* 11398 808435A8 35AE00C1 */  ori     $t6, $t5, 0x00C1           ## $t6 = 000000C1
/* 1139C 808435AC A60E06AE */  sh      $t6, 0x06AE($s0)           ## 000006AE
.L808435B0:
/* 113A0 808435B0 8FBF002C */  lw      $ra, 0x002C($sp)
.L808435B4:
/* 113A4 808435B4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 113A8 808435B8 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 113AC 808435BC 03E00008 */  jr      $ra
/* 113B0 808435C0 00000000 */  nop


