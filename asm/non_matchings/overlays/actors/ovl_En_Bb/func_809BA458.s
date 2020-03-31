glabel func_809BA458
/* 02178 809BA458 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0217C 809BA45C 3C0F809C */  lui     $t7, %hi(D_809BBB50)       ## $t7 = 809C0000
/* 02180 809BA460 AFBF001C */  sw      $ra, 0x001C($sp)
/* 02184 809BA464 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02188 809BA468 AFA50034 */  sw      $a1, 0x0034($sp)
/* 0218C 809BA46C 25EFBB50 */  addiu   $t7, $t7, %lo(D_809BBB50)  ## $t7 = 809BBB50
/* 02190 809BA470 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809BBB50
/* 02194 809BA474 27AE0024 */  addiu   $t6, $sp, 0x0024           ## $t6 = FFFFFFF4
/* 02198 809BA478 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809BBB54
/* 0219C 809BA47C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 021A0 809BA480 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809BBB58
/* 021A4 809BA484 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 021A8 809BA488 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 021AC 809BA48C 24A50444 */  addiu   $a1, $a1, 0x0444           ## $a1 = 06000444
/* 021B0 809BA490 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 021B4 809BA494 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 021B8 809BA498 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 021BC 809BA49C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 021C0 809BA4A0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 021C4 809BA4A4 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
/* 021C8 809BA4A8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 021CC 809BA4AC A6000268 */  sh      $zero, 0x0268($s0)         ## 00000268
/* 021D0 809BA4B0 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 021D4 809BA4B4 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 021D8 809BA4B8 860900B8 */  lh      $t1, 0x00B8($s0)           ## 000000B8
/* 021DC 809BA4BC 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 021E0 809BA4C0 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 021E4 809BA4C4 E6000274 */  swc1    $f0, 0x0274($s0)           ## 00000274
/* 021E8 809BA4C8 A60900B4 */  sh      $t1, 0x00B4($s0)           ## 000000B4
/* 021EC 809BA4CC 15610006 */  bne     $t3, $at, .L809BA4E8
/* 021F0 809BA4D0 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 021F4 809BA4D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 021F8 809BA4D8 0C26E7D8 */  jal     func_809B9F60
/* 021FC 809BA4DC 8FA50034 */  lw      $a1, 0x0034($sp)
/* 02200 809BA4E0 0C26E7CA */  jal     func_809B9F28
/* 02204 809BA4E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BA4E8:
/* 02208 809BA4E8 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 0220C 809BA4EC C60E000C */  lwc1    $f14, 0x000C($s0)          ## 0000000C
/* 02210 809BA4F0 8E060010 */  lw      $a2, 0x0010($s0)           ## 00000010
/* 02214 809BA4F4 0C034261 */  jal     Matrix_Translate
/* 02218 809BA4F8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0221C 809BA4FC 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 02220 809BA500 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 02224 809BA504 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02228 809BA508 0C034421 */  jal     Matrix_RotateZYX
/* 0222C 809BA50C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 02230 809BA510 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 02234 809BA514 0C0343B5 */  jal     Matrix_RotateZ
/* 02238 809BA518 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0223C 809BA51C C6040278 */  lwc1    $f4, 0x0278($s0)           ## 00000278
/* 02240 809BA520 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFF4
/* 02244 809BA524 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 02248 809BA528 0C0346BD */  jal     Matrix_MultVec3f
/* 0224C 809BA52C E7A40028 */  swc1    $f4, 0x0028($sp)
/* 02250 809BA530 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02254 809BA534 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 02258 809BA538 AE000324 */  sw      $zero, 0x0324($s0)         ## 00000324
/* 0225C 809BA53C AE0C0250 */  sw      $t4, 0x0250($s0)           ## 00000250
/* 02260 809BA540 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02264 809BA544 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 02268 809BA548 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0226C 809BA54C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 02270 809BA550 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 02274 809BA554 44818000 */  mtc1    $at, $f16                  ## $f16 = 180.00
/* 02278 809BA558 46080282 */  mul.s   $f10, $f0, $f8
/* 0227C 809BA55C 3C05809C */  lui     $a1, %hi(func_809BA628)    ## $a1 = 809C0000
/* 02280 809BA560 24A5A628 */  addiu   $a1, $a1, %lo(func_809BA628) ## $a1 = 809BA628
/* 02284 809BA564 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02288 809BA568 46105480 */  add.s   $f18, $f10, $f16
/* 0228C 809BA56C 4600910D */  trunc.w.s $f4, $f18
/* 02290 809BA570 440E2000 */  mfc1    $t6, $f4
/* 02294 809BA574 0C26E0B8 */  jal     func_809B82E0
/* 02298 809BA578 A60E026E */  sh      $t6, 0x026E($s0)           ## 0000026E
/* 0229C 809BA57C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 022A0 809BA580 8FB00018 */  lw      $s0, 0x0018($sp)
/* 022A4 809BA584 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 022A8 809BA588 03E00008 */  jr      $ra
/* 022AC 809BA58C 00000000 */  nop


