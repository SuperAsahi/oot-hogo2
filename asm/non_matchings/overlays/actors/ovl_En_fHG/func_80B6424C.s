glabel func_80B6424C
/* 0188C 80B6424C 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01890 80B64250 AFB00038 */  sw      $s0, 0x0038($sp)
/* 01894 80B64254 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01898 80B64258 AFBF003C */  sw      $ra, 0x003C($sp)
/* 0189C 80B6425C 3C0480B6 */  lui     $a0, %hi(D_80B652EC)       ## $a0 = 80B60000
/* 018A0 80B64260 AFA5005C */  sw      $a1, 0x005C($sp)
/* 018A4 80B64264 0C00084C */  jal     osSyncPrintf

/* 018A8 80B64268 248452EC */  addiu   $a0, $a0, %lo(D_80B652EC)  ## $a0 = 80B652EC
/* 018AC 80B6426C A200014D */  sb      $zero, 0x014D($s0)         ## 0000014D
/* 018B0 80B64270 26040250 */  addiu   $a0, $s0, 0x0250           ## $a0 = 00000250
/* 018B4 80B64274 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 018B8 80B64278 AFA40044 */  sw      $a0, 0x0044($sp)
/* 018BC 80B6427C 860E01D4 */  lh      $t6, 0x01D4($s0)           ## 000001D4
/* 018C0 80B64280 8FA8005C */  lw      $t0, 0x005C($sp)
/* 018C4 80B64284 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 018C8 80B64288 11C00029 */  beq     $t6, $zero, .L80B64330
/* 018CC 80B6428C 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
/* 018D0 80B64290 3C073951 */  lui     $a3, 0x3951                ## $a3 = 39510000
/* 018D4 80B64294 34E7B717 */  ori     $a3, $a3, 0xB717           ## $a3 = 3951B717
/* 018D8 80B64298 34A56A7E */  ori     $a1, $a1, 0x6A7E           ## $a1 = 3C3C6A7E
/* 018DC 80B6429C 26040058 */  addiu   $a0, $s0, 0x0058           ## $a0 = 00000058
/* 018E0 80B642A0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 018E4 80B642A4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 018E8 80B642A8 860F01D4 */  lh      $t7, 0x01D4($s0)           ## 000001D4
/* 018EC 80B642AC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 018F0 80B642B0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 018F4 80B642B4 15E10008 */  bne     $t7, $at, .L80B642D8
/* 018F8 80B642B8 24190032 */  addiu   $t9, $zero, 0x0032         ## $t9 = 00000032
/* 018FC 80B642BC A218014C */  sb      $t8, 0x014C($s0)           ## 0000014C
/* 01900 80B642C0 A61901D6 */  sh      $t9, 0x01D6($s0)           ## 000001D6
/* 01904 80B642C4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01908 80B642C8 24A5C65C */  addiu   $a1, $a1, 0xC65C           ## $a1 = 0600C65C
/* 0190C 80B642CC 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01910 80B642D0 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop
/* 01914 80B642D4 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L80B642D8:
/* 01918 80B642D8 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 0191C 80B642DC 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01920 80B642E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01924 80B642E4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01928 80B642E8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 0192C 80B642EC 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 01930 80B642F0 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01934 80B642F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01938 80B642F8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0193C 80B642FC 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01940 80B64300 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 01944 80B64304 3C05437F */  lui     $a1, 0x437F                ## $a1 = 437F0000
/* 01948 80B64308 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0194C 80B6430C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01950 80B64310 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01954 80B64314 260401F4 */  addiu   $a0, $s0, 0x01F4           ## $a0 = 000001F4
/* 01958 80B64318 3C05C270 */  lui     $a1, 0xC270                ## $a1 = C2700000
/* 0195C 80B6431C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01960 80B64320 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01964 80B64324 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01968 80B64328 10000084 */  beq     $zero, $zero, .L80B6453C
/* 0196C 80B6432C 860A01DE */  lh      $t2, 0x01DE($s0)           ## 000001DE
.L80B64330:
/* 01970 80B64330 910907AF */  lbu     $t1, 0x07AF($t0)           ## 000007AF
/* 01974 80B64334 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 01978 80B64338 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 0197C 80B6433C 05210005 */  bgez    $t1, .L80B64354
/* 01980 80B64340 46802120 */  cvt.s.w $f4, $f4
/* 01984 80B64344 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01988 80B64348 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 0198C 80B6434C 00000000 */  nop
/* 01990 80B64350 46062100 */  add.s   $f4, $f4, $f6
.L80B64354:
/* 01994 80B64354 44052000 */  mfc1    $a1, $f4
/* 01998 80B64358 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 0199C 80B6435C 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 019A0 80B64360 8FAA005C */  lw      $t2, 0x005C($sp)
/* 019A4 80B64364 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 019A8 80B64368 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019AC 80B6436C 914B07AF */  lbu     $t3, 0x07AF($t2)           ## 000007AF
/* 019B0 80B64370 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 019B4 80B64374 448B4000 */  mtc1    $t3, $f8                   ## $f8 = 0.00
/* 019B8 80B64378 05610004 */  bgez    $t3, .L80B6438C
/* 019BC 80B6437C 46804220 */  cvt.s.w $f8, $f8
/* 019C0 80B64380 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 019C4 80B64384 00000000 */  nop
/* 019C8 80B64388 460A4200 */  add.s   $f8, $f8, $f10
.L80B6438C:
/* 019CC 80B6438C 44054000 */  mfc1    $a1, $f8
/* 019D0 80B64390 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 019D4 80B64394 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 019D8 80B64398 8FAC005C */  lw      $t4, 0x005C($sp)
/* 019DC 80B6439C 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 019E0 80B643A0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 019E4 80B643A4 918D07AF */  lbu     $t5, 0x07AF($t4)           ## 000007AF
/* 019E8 80B643A8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 019EC 80B643AC 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 019F0 80B643B0 05A10004 */  bgez    $t5, .L80B643C4
/* 019F4 80B643B4 46808420 */  cvt.s.w $f16, $f16
/* 019F8 80B643B8 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 019FC 80B643BC 00000000 */  nop
/* 01A00 80B643C0 46128400 */  add.s   $f16, $f16, $f18
.L80B643C4:
/* 01A04 80B643C4 44058000 */  mfc1    $a1, $f16
/* 01A08 80B643C8 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01A0C 80B643CC 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01A10 80B643D0 260401F4 */  addiu   $a0, $s0, 0x01F4           ## $a0 = 000001F4
/* 01A14 80B643D4 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01A18 80B643D8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01A1C 80B643DC 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01A20 80B643E0 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01A24 80B643E4 860E01D6 */  lh      $t6, 0x01D6($s0)           ## 000001D6
/* 01A28 80B643E8 2401001D */  addiu   $at, $zero, 0x001D         ## $at = 0000001D
/* 01A2C 80B643EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A30 80B643F0 55C10007 */  bnel    $t6, $at, .L80B64410
/* 01A34 80B643F4 860F01DE */  lh      $t7, 0x01DE($s0)           ## 000001DE
/* 01A38 80B643F8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01A3C 80B643FC 240538A6 */  addiu   $a1, $zero, 0x38A6         ## $a1 = 000038A6
/* 01A40 80B64400 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01A44 80B64404 0C00BE0A */  jal     Audio_PlayActorSound2

/* 01A48 80B64408 240538B2 */  addiu   $a1, $zero, 0x38B2         ## $a1 = 000038B2
/* 01A4C 80B6440C 860F01DE */  lh      $t7, 0x01DE($s0)           ## 000001DE
.L80B64410:
/* 01A50 80B64410 55E00033 */  bnel    $t7, $zero, .L80B644E0
/* 01A54 80B64414 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
/* 01A58 80B64418 860301D6 */  lh      $v1, 0x01D6($s0)           ## 000001D6
/* 01A5C 80B6441C 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 01A60 80B64420 54610019 */  bnel    $v1, $at, .L80B64488
/* 01A64 80B64424 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 01A68 80B64428 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01A6C 80B6442C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01A70 80B64430 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 01A74 80B64434 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 01A78 80B64438 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01A7C 80B6443C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 01A80 80B64440 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 01A84 80B64444 46083280 */  add.s   $f10, $f6, $f8
/* 01A88 80B64448 8FA6005C */  lw      $a2, 0x005C($sp)
/* 01A8C 80B6444C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01A90 80B64450 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A94 80B64454 46105480 */  add.s   $f18, $f10, $f16
/* 01A98 80B64458 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 01A9C 80B6445C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 01AA0 80B64460 E7B20014 */  swc1    $f18, 0x0014($sp)
/* 01AA4 80B64464 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 01AA8 80B64468 AFB90028 */  sw      $t9, 0x0028($sp)
/* 01AAC 80B6446C AFA00024 */  sw      $zero, 0x0024($sp)
/* 01AB0 80B64470 AFA00020 */  sw      $zero, 0x0020($sp)
/* 01AB4 80B64474 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01AB8 80B64478 0C00C916 */  jal     Actor_SpawnAttached

/* 01ABC 80B6447C E7A40018 */  swc1    $f4, 0x0018($sp)
/* 01AC0 80B64480 860301D6 */  lh      $v1, 0x01D6($s0)           ## 000001D6
/* 01AC4 80B64484 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
.L80B64488:
/* 01AC8 80B64488 14610006 */  bne     $v1, $at, .L80B644A4
/* 01ACC 80B6448C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01AD0 80B64490 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01AD4 80B64494 24A5B9D0 */  addiu   $a1, $a1, 0xB9D0           ## $a1 = 0600B9D0
/* 01AD8 80B64498 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 01ADC 80B6449C 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01AE0 80B644A0 860301D6 */  lh      $v1, 0x01D6($s0)           ## 000001D6
.L80B644A4:
/* 01AE4 80B644A4 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 01AE8 80B644A8 14610003 */  bne     $v1, $at, .L80B644B8
/* 01AEC 80B644AC 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 01AF0 80B644B0 A208014C */  sb      $t0, 0x014C($s0)           ## 0000014C
/* 01AF4 80B644B4 860301D6 */  lh      $v1, 0x01D6($s0)           ## 000001D6
.L80B644B8:
/* 01AF8 80B644B8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 01AFC 80B644BC 14610007 */  bne     $v1, $at, .L80B644DC
/* 01B00 80B644C0 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01B04 80B644C4 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01B08 80B644C8 24A5CB1C */  addiu   $a1, $a1, 0xCB1C           ## $a1 = 0600CB1C
/* 01B0C 80B644CC 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop
/* 01B10 80B644D0 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 01B14 80B644D4 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 01B18 80B644D8 A209014C */  sb      $t1, 0x014C($s0)           ## 0000014C
.L80B644DC:
/* 01B1C 80B644DC 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
.L80B644E0:
/* 01B20 80B644E0 3C073B03 */  lui     $a3, 0x3B03                ## $a3 = 3B030000
/* 01B24 80B644E4 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3B03126F
/* 01B28 80B644E8 34A56A7E */  ori     $a1, $a1, 0x6A7E           ## $a1 = 3C3C6A7E
/* 01B2C 80B644EC 26040058 */  addiu   $a0, $s0, 0x0058           ## $a0 = 00000058
/* 01B30 80B644F0 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B34 80B644F4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B38 80B644F8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01B3C 80B644FC 8E05018C */  lw      $a1, 0x018C($s0)           ## 0000018C
/* 01B40 80B64500 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B44 80B64504 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B48 80B64508 8E070198 */  lw      $a3, 0x0198($s0)           ## 00000198
/* 01B4C 80B6450C 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01B50 80B64510 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01B54 80B64514 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01B58 80B64518 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 01B5C 80B6451C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B60 80B64520 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 01B64 80B64524 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 01B68 80B64528 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 01B6C 80B6452C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B70 80B64530 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01B74 80B64534 8E07019C */  lw      $a3, 0x019C($s0)           ## 0000019C
/* 01B78 80B64538 860A01DE */  lh      $t2, 0x01DE($s0)           ## 000001DE
.L80B6453C:
/* 01B7C 80B6453C 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 01B80 80B64540 3C0B80B6 */  lui     $t3, %hi(func_80B6476C)    ## $t3 = 80B60000
/* 01B84 80B64544 1541001C */  bne     $t2, $at, .L80B645B8
/* 01B88 80B64548 256B476C */  addiu   $t3, $t3, %lo(func_80B6476C) ## $t3 = 80B6476C
/* 01B8C 80B6454C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 01B90 80B64550 AE0B01FC */  sw      $t3, 0x01FC($s0)           ## 000001FC
/* 01B94 80B64554 A60001C8 */  sh      $zero, 0x01C8($s0)         ## 000001C8
/* 01B98 80B64558 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01B9C 80B6455C 2484CB1C */  addiu   $a0, $a0, 0xCB1C           ## $a0 = 0600CB1C
/* 01BA0 80B64560 44823000 */  mtc1    $v0, $f6                   ## $f6 = 0.00
/* 01BA4 80B64564 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 01BA8 80B64568 44815000 */  mtc1    $at, $f10                  ## $f10 = -5.00
/* 01BAC 80B6456C 46803220 */  cvt.s.w $f8, $f6
/* 01BB0 80B64570 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01BB4 80B64574 240C0002 */  addiu   $t4, $zero, 0x0002         ## $t4 = 00000002
/* 01BB8 80B64578 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 01BBC 80B6457C 24A5CB1C */  addiu   $a1, $a1, 0xCB1C           ## $a1 = 0600CB1C
/* 01BC0 80B64580 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01BC4 80B64584 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 01BC8 80B64588 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 01BCC 80B6458C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01BD0 80B64590 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 01BD4 80B64594 E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 01BD8 80B64598 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01BDC 80B6459C 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 01BE0 80B645A0 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 01BE4 80B645A4 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01BE8 80B645A8 A60D01D4 */  sh      $t5, 0x01D4($s0)           ## 000001D4
/* 01BEC 80B645AC A20E014C */  sb      $t6, 0x014C($s0)           ## 0000014C
/* 01BF0 80B645B0 10000069 */  beq     $zero, $zero, .L80B64758
/* 01BF4 80B645B4 E61001A0 */  swc1    $f16, 0x01A0($s0)          ## 000001A0
.L80B645B8:
/* 01BF8 80B645B8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 01BFC 80B645BC C6080194 */  lwc1    $f8, 0x0194($s0)           ## 00000194
/* 01C00 80B645C0 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 01C04 80B645C4 C604018C */  lwc1    $f4, 0x018C($s0)           ## 0000018C
/* 01C08 80B645C8 46083281 */  sub.s   $f10, $f6, $f8
/* 01C0C 80B645CC 3C0143AF */  lui     $at, 0x43AF                ## $at = 43AF0000
/* 01C10 80B645D0 44813000 */  mtc1    $at, $f6                   ## $f6 = 350.00
/* 01C14 80B645D4 46049081 */  sub.s   $f2, $f18, $f4
/* 01C18 80B645D8 E7AA0050 */  swc1    $f10, 0x0050($sp)
/* 01C1C 80B645DC C7B00050 */  lwc1    $f16, 0x0050($sp)
/* 01C20 80B645E0 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01C24 80B645E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 300.00
/* 01C28 80B645E8 46108482 */  mul.s   $f18, $f16, $f16
/* 01C2C 80B645EC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01C30 80B645F0 46021102 */  mul.s   $f4, $f2, $f2
/* 01C34 80B645F4 46122000 */  add.s   $f0, $f4, $f18
/* 01C38 80B645F8 46000004 */  sqrt.s  $f0, $f0
/* 01C3C 80B645FC 4606003C */  c.lt.s  $f0, $f6
/* 01C40 80B64600 E7A0004C */  swc1    $f0, 0x004C($sp)
/* 01C44 80B64604 45020003 */  bc1fl   .L80B64614
/* 01C48 80B64608 4608003C */  c.lt.s  $f0, $f8
/* 01C4C 80B6460C A20F014D */  sb      $t7, 0x014D($s0)           ## 0000014D
/* 01C50 80B64610 4608003C */  c.lt.s  $f0, $f8
.L80B64614:
/* 01C54 80B64614 00000000 */  nop
/* 01C58 80B64618 4502001E */  bc1fl   .L80B64694
/* 01C5C 80B6461C C6080198 */  lwc1    $f8, 0x0198($s0)           ## 00000198
/* 01C60 80B64620 861801C8 */  lh      $t8, 0x01C8($s0)           ## 000001C8
/* 01C64 80B64624 8FA6005C */  lw      $a2, 0x005C($sp)
/* 01C68 80B64628 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01C6C 80B6462C 17000018 */  bne     $t8, $zero, .L80B64690
/* 01C70 80B64630 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01C74 80B64634 C60A018C */  lwc1    $f10, 0x018C($s0)          ## 0000018C
/* 01C78 80B64638 A61901C8 */  sh      $t9, 0x01C8($s0)           ## 000001C8
/* 01C7C 80B6463C 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 01C80 80B64640 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 01C84 80B64644 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 01C88 80B64648 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 01C8C 80B6464C 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 01C90 80B64650 46048480 */  add.s   $f18, $f16, $f4
/* 01C94 80B64654 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C98 80B64658 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 01C9C 80B6465C E7B20014 */  swc1    $f18, 0x0014($sp)
/* 01CA0 80B64660 C6060194 */  lwc1    $f6, 0x0194($s0)           ## 00000194
/* 01CA4 80B64664 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01CA8 80B64668 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 01CAC 80B6466C 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01CB0 80B64670 E7A20054 */  swc1    $f2, 0x0054($sp)
/* 01CB4 80B64674 AFA90028 */  sw      $t1, 0x0028($sp)
/* 01CB8 80B64678 AFA00024 */  sw      $zero, 0x0024($sp)
/* 01CBC 80B6467C 0C00C916 */  jal     Actor_SpawnAttached

/* 01CC0 80B64680 AFA80020 */  sw      $t0, 0x0020($sp)
/* 01CC4 80B64684 C7A20054 */  lwc1    $f2, 0x0054($sp)
/* 01CC8 80B64688 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01CCC 80B6468C A20A014F */  sb      $t2, 0x014F($s0)           ## 0000014F
.L80B64690:
/* 01CD0 80B64690 C6080198 */  lwc1    $f8, 0x0198($s0)           ## 00000198
.L80B64694:
/* 01CD4 80B64694 3C0480B6 */  lui     $a0, %hi(D_80B652FC)       ## $a0 = 80B60000
/* 01CD8 80B64698 248452FC */  addiu   $a0, $a0, %lo(D_80B652FC)  ## $a0 = 80B652FC
/* 01CDC 80B6469C 460042A1 */  cvt.d.s $f10, $f8
/* 01CE0 80B646A0 E7A20054 */  swc1    $f2, 0x0054($sp)
/* 01CE4 80B646A4 44075000 */  mfc1    $a3, $f10
/* 01CE8 80B646A8 44065800 */  mfc1    $a2, $f11
/* 01CEC 80B646AC 0C00084C */  jal     osSyncPrintf

/* 01CF0 80B646B0 00000000 */  nop
/* 01CF4 80B646B4 C610019C */  lwc1    $f16, 0x019C($s0)          ## 0000019C
/* 01CF8 80B646B8 3C0480B6 */  lui     $a0, %hi(D_80B65308)       ## $a0 = 80B60000
/* 01CFC 80B646BC 24845308 */  addiu   $a0, $a0, %lo(D_80B65308)  ## $a0 = 80B65308
/* 01D00 80B646C0 46008121 */  cvt.d.s $f4, $f16
/* 01D04 80B646C4 44072000 */  mfc1    $a3, $f4
/* 01D08 80B646C8 44062800 */  mfc1    $a2, $f5
/* 01D0C 80B646CC 0C00084C */  jal     osSyncPrintf

/* 01D10 80B646D0 00000000 */  nop
/* 01D14 80B646D4 C7A20054 */  lwc1    $f2, 0x0054($sp)
/* 01D18 80B646D8 3C0480B6 */  lui     $a0, %hi(D_80B65314)       ## $a0 = 80B60000
/* 01D1C 80B646DC 24845314 */  addiu   $a0, $a0, %lo(D_80B65314)  ## $a0 = 80B65314
/* 01D20 80B646E0 460014A1 */  cvt.d.s $f18, $f2
/* 01D24 80B646E4 44079000 */  mfc1    $a3, $f18
/* 01D28 80B646E8 44069800 */  mfc1    $a2, $f19
/* 01D2C 80B646EC 0C00084C */  jal     osSyncPrintf

/* 01D30 80B646F0 00000000 */  nop
/* 01D34 80B646F4 C7A60050 */  lwc1    $f6, 0x0050($sp)
/* 01D38 80B646F8 3C0480B6 */  lui     $a0, %hi(D_80B6531C)       ## $a0 = 80B60000
/* 01D3C 80B646FC 2484531C */  addiu   $a0, $a0, %lo(D_80B6531C)  ## $a0 = 80B6531C
/* 01D40 80B64700 46003221 */  cvt.d.s $f8, $f6
/* 01D44 80B64704 44074000 */  mfc1    $a3, $f8
/* 01D48 80B64708 44064800 */  mfc1    $a2, $f9
/* 01D4C 80B6470C 0C00084C */  jal     osSyncPrintf

/* 01D50 80B64710 00000000 */  nop
/* 01D54 80B64714 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01D58 80B64718 C7AA004C */  lwc1    $f10, 0x004C($sp)
/* 01D5C 80B6471C 3C0C80B6 */  lui     $t4, %hi(func_80B64AA8)    ## $t4 = 80B60000
/* 01D60 80B64720 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01D64 80B64724 46005032 */  c.eq.s  $f10, $f0
/* 01D68 80B64728 240B008C */  addiu   $t3, $zero, 0x008C         ## $t3 = 0000008C
/* 01D6C 80B6472C 258C4AA8 */  addiu   $t4, $t4, %lo(func_80B64AA8) ## $t4 = 80B64AA8
/* 01D70 80B64730 24A5B4C8 */  addiu   $a1, $a1, 0xB4C8           ## $a1 = 0600B4C8
/* 01D74 80B64734 45020009 */  bc1fl   .L80B6475C
/* 01D78 80B64738 8FBF003C */  lw      $ra, 0x003C($sp)
/* 01D7C 80B6473C A60B01D4 */  sh      $t3, 0x01D4($s0)           ## 000001D4
/* 01D80 80B64740 AE0C01FC */  sw      $t4, 0x01FC($s0)           ## 000001FC
/* 01D84 80B64744 44060000 */  mfc1    $a2, $f0
/* 01D88 80B64748 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRepeat
/* 01D8C 80B6474C 8FA40044 */  lw      $a0, 0x0044($sp)
/* 01D90 80B64750 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 01D94 80B64754 A20D014C */  sb      $t5, 0x014C($s0)           ## 0000014C
.L80B64758:
/* 01D98 80B64758 8FBF003C */  lw      $ra, 0x003C($sp)
.L80B6475C:
/* 01D9C 80B6475C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 01DA0 80B64760 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
/* 01DA4 80B64764 03E00008 */  jr      $ra
/* 01DA8 80B64768 00000000 */  nop


