glabel func_80A5E2A8
/* 02FB8 80A5E2A8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02FBC 80A5E2AC AFBF002C */  sw      $ra, 0x002C($sp)
/* 02FC0 80A5E2B0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02FC4 80A5E2B4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 02FC8 80A5E2B8 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 02FCC 80A5E2BC 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02FD0 80A5E2C0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 02FD4 80A5E2C4 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 02FD8 80A5E2C8 AC8F0210 */  sw      $t7, 0x0210($a0)           ## 00000210
/* 02FDC 80A5E2CC 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 02FE0 80A5E2D0 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 02FE4 80A5E2D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02FE8 80A5E2D8 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 02FEC 80A5E2DC AFB80014 */  sw      $t8, 0x0014($sp)
/* 02FF0 80A5E2E0 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 02FF4 80A5E2E4 2404281A */  addiu   $a0, $zero, 0x281A         ## $a0 = 0000281A
/* 02FF8 80A5E2E8 AFA70010 */  sw      $a3, 0x0010($sp)
/* 02FFC 80A5E2EC 0C03DCE3 */  jal     Audio_PlaySoundGeneral

/* 03000 80A5E2F0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03004 80A5E2F4 8E190158 */  lw      $t9, 0x0158($s0)           ## 00000158
/* 03008 80A5E2F8 3C0980A6 */  lui     $t1, %hi(D_80A65E58)       ## $t1 = 80A60000
/* 0300C 80A5E2FC 8E0A0210 */  lw      $t2, 0x0210($s0)           ## 00000210
/* 03010 80A5E300 00194080 */  sll     $t0, $t9,  2
/* 03014 80A5E304 01284821 */  addu    $t1, $t1, $t0
/* 03018 80A5E308 8D295E58 */  lw      $t1, %lo(D_80A65E58)($t1)
/* 0301C 80A5E30C 000A5880 */  sll     $t3, $t2,  2
/* 03020 80A5E310 012B6021 */  addu    $t4, $t1, $t3
/* 03024 80A5E314 0C028800 */  jal     SkelAnime_GetFrameCount

/* 03028 80A5E318 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 0302C 80A5E31C 8E0D0158 */  lw      $t5, 0x0158($s0)           ## 00000158
/* 03030 80A5E320 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 03034 80A5E324 3C0F80A6 */  lui     $t7, %hi(D_80A65E58)       ## $t7 = 80A60000
/* 03038 80A5E328 000D7080 */  sll     $t6, $t5,  2
/* 0303C 80A5E32C 8E180210 */  lw      $t8, 0x0210($s0)           ## 00000210
/* 03040 80A5E330 01EE7821 */  addu    $t7, $t7, $t6
/* 03044 80A5E334 8DEF5E58 */  lw      $t7, %lo(D_80A65E58)($t7)
/* 03048 80A5E338 468021A0 */  cvt.s.w $f6, $f4
/* 0304C 80A5E33C 0018C880 */  sll     $t9, $t8,  2
/* 03050 80A5E340 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 03054 80A5E344 01F94021 */  addu    $t0, $t7, $t9
/* 03058 80A5E348 44814000 */  mtc1    $at, $f8                   ## $f8 = -3.00
/* 0305C 80A5E34C 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 03060 80A5E350 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 03064 80A5E354 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 03068 80A5E358 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0306C 80A5E35C 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 03070 80A5E360 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 03074 80A5E364 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 03078 80A5E368 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0307C 80A5E36C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 03080 80A5E370 8E0901F0 */  lw      $t1, 0x01F0($s0)           ## 000001F0
/* 03084 80A5E374 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 03088 80A5E378 352B0400 */  ori     $t3, $t1, 0x0400           ## $t3 = 00000400
/* 0308C 80A5E37C AE0B01F0 */  sw      $t3, 0x01F0($s0)           ## 000001F0
/* 03090 80A5E380 01616824 */  and     $t5, $t3, $at
/* 03094 80A5E384 AE0D01F0 */  sw      $t5, 0x01F0($s0)           ## 000001F0
/* 03098 80A5E388 8FBF002C */  lw      $ra, 0x002C($sp)
/* 0309C 80A5E38C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 030A0 80A5E390 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 030A4 80A5E394 03E00008 */  jr      $ra
/* 030A8 80A5E398 00000000 */  nop
