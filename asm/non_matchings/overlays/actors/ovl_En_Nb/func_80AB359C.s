glabel func_80AB359C
/* 0280C 80AB359C 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02810 80AB35A0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02814 80AB35A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02818 80AB35A8 948E02FE */  lhu     $t6, 0x02FE($a0)           ## 000002FE
/* 0281C 80AB35AC 3C188016 */  lui     $t8, %hi(gGameInfo)
/* 02820 80AB35B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02824 80AB35B4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 02828 80AB35B8 A48F02FE */  sh      $t7, 0x02FE($a0)           ## 000002FE
/* 0282C 80AB35BC 8F18FA90 */  lw      $t8, %lo(gGameInfo)($t8)
/* 02830 80AB35C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 02834 80AB35C4 24070003 */  addiu   $a3, $zero, 0x0003         ## $a3 = 00000003
/* 02838 80AB35C8 87191476 */  lh      $t9, 0x1476($t8)           ## 80161476
/* 0283C 80AB35CC 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 02840 80AB35D0 27280019 */  addiu   $t0, $t9, 0x0019           ## $t0 = 00000019
/* 02844 80AB35D4 3109FFFF */  andi    $t1, $t0, 0xFFFF           ## $t1 = 00000019
/* 02848 80AB35D8 AFA9002C */  sw      $t1, 0x002C($sp)           
/* 0284C 80AB35DC 948602FE */  lhu     $a2, 0x02FE($a0)           ## 000002FE
/* 02850 80AB35E0 97A4002E */  lhu     $a0, 0x002E($sp)           
/* 02854 80AB35E4 0126082A */  slt     $at, $t1, $a2              
/* 02858 80AB35E8 54200019 */  bnel    $at, $zero, .L80AB3650     
/* 0285C 80AB35EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02860 80AB35F0 0C01BE6F */  jal     func_8006F9BC              
/* 02864 80AB35F4 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02868 80AB35F8 260302E4 */  addiu   $v1, $s0, 0x02E4           ## $v1 = 000002E4
/* 0286C 80AB35FC 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 02870 80AB3600 C4840000 */  lwc1    $f4, 0x0000($a0)           ## 000002F0
/* 02874 80AB3604 C4620000 */  lwc1    $f2, 0x0000($v1)           ## 000002E4
/* 02878 80AB3608 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 0287C 80AB360C 46022181 */  sub.s   $f6, $f4, $f2              
/* 02880 80AB3610 46060202 */  mul.s   $f8, $f0, $f6              
/* 02884 80AB3614 46081280 */  add.s   $f10, $f2, $f8             
/* 02888 80AB3618 E44A0000 */  swc1    $f10, 0x0000($v0)          ## 00000024
/* 0288C 80AB361C C4900004 */  lwc1    $f16, 0x0004($a0)          ## 000002F4
/* 02890 80AB3620 C46C0004 */  lwc1    $f12, 0x0004($v1)          ## 000002E8
/* 02894 80AB3624 460C8481 */  sub.s   $f18, $f16, $f12           
/* 02898 80AB3628 46120102 */  mul.s   $f4, $f0, $f18             
/* 0289C 80AB362C 46046180 */  add.s   $f6, $f12, $f4             
/* 028A0 80AB3630 E4460004 */  swc1    $f6, 0x0004($v0)           ## 00000028
/* 028A4 80AB3634 C4880008 */  lwc1    $f8, 0x0008($a0)           ## 000002F8
/* 028A8 80AB3638 C46E0008 */  lwc1    $f14, 0x0008($v1)          ## 000002EC
/* 028AC 80AB363C 460E4281 */  sub.s   $f10, $f8, $f14            
/* 028B0 80AB3640 460A0402 */  mul.s   $f16, $f0, $f10            
/* 028B4 80AB3644 46107480 */  add.s   $f18, $f14, $f16           
/* 028B8 80AB3648 E4520008 */  swc1    $f18, 0x0008($v0)          ## 0000002C
/* 028BC 80AB364C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AB3650:
/* 028C0 80AB3650 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 028C4 80AB3654 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 028C8 80AB3658 03E00008 */  jr      $ra                        
/* 028CC 80AB365C 00000000 */  nop
