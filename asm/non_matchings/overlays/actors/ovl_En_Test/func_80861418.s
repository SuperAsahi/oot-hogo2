glabel func_80861418
/* 01DC8 80861418 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01DCC 8086141C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01DD0 80861420 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DD4 80861424 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01DD8 80861428 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01DDC 8086142C 24A5B00C */  addiu   $a1, $a1, 0xB00C           ## $a1 = 0600B00C
/* 01DE0 80861430 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 01DE4 80861434 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01DE8 80861438 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 01DEC 8086143C 0C03E291 */  jal     func_800F8A44              
/* 01DF0 80861440 24053838 */  addiu   $a1, $zero, 0x3838         ## $a1 = 00003838
/* 01DF4 80861444 920E086C */  lbu     $t6, 0x086C($s0)           ## 0000086C
/* 01DF8 80861448 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01DFC 8086144C 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 01E00 80861450 3C058086 */  lui     $a1, %hi(func_8086149C)    ## $a1 = 80860000
/* 01E04 80861454 31CFFFFB */  andi    $t7, $t6, 0xFFFB           ## $t7 = 00000000
/* 01E08 80861458 A20F086C */  sb      $t7, 0x086C($s0)           ## 0000086C
/* 01E0C 8086145C A21807C8 */  sb      $t8, 0x07C8($s0)           ## 000007C8
/* 01E10 80861460 24A5149C */  addiu   $a1, $a1, %lo(func_8086149C) ## $a1 = 8086149C
/* 01E14 80861464 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E18 80861468 0C217D94 */  jal     func_8085F650              
/* 01E1C 8086146C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 01E20 80861470 920807DE */  lbu     $t0, 0x07DE($s0)           ## 000007DE
/* 01E24 80861474 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 01E28 80861478 A2190879 */  sb      $t9, 0x0879($s0)           ## 00000879
/* 01E2C 8086147C 11000002 */  beq     $t0, $zero, .L80861488     
/* 01E30 80861480 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01E34 80861484 A20907DE */  sb      $t1, 0x07DE($s0)           ## 000007DE
.L80861488:
/* 01E38 80861488 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E3C 8086148C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01E40 80861490 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01E44 80861494 03E00008 */  jr      $ra                        
/* 01E48 80861498 00000000 */  nop


