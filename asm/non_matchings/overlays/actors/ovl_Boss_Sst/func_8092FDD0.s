glabel func_8092FDD0
/* 03800 8092FDD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03804 8092FDD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03808 8092FDD8 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 0380C 8092FDDC 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 03810 8092FDE0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03814 8092FDE4 000FC080 */  sll     $t8, $t7,  2               
/* 03818 8092FDE8 00380821 */  addu    $at, $at, $t8              
/* 0381C 8092FDEC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 03820 8092FDF0 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)  
/* 03824 8092FDF4 84F9001C */  lh      $t9, 0x001C($a3)           ## 0000001C
/* 03828 8092FDF8 3C058093 */  lui     $a1, %hi(D_8093785C)       ## $a1 = 80930000
/* 0382C 8092FDFC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 03830 8092FE00 00194080 */  sll     $t0, $t9,  2               
/* 03834 8092FE04 00A82821 */  addu    $a1, $a1, $t0              
/* 03838 8092FE08 8CA5785C */  lw      $a1, %lo(D_8093785C)($a1)  
/* 0383C 8092FE0C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03840 8092FE10 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 03844 8092FE14 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 03848 8092FE18 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 0384C 8092FE1C 3C0A8093 */  lui     $t2, %hi(func_8092FE44)    ## $t2 = 80930000
/* 03850 8092FE20 2409000C */  addiu   $t1, $zero, 0x000C         ## $t1 = 0000000C
/* 03854 8092FE24 254AFE44 */  addiu   $t2, $t2, %lo(func_8092FE44) ## $t2 = 8092FE44
/* 03858 8092FE28 A4E000B4 */  sh      $zero, 0x00B4($a3)         ## 000000B4
/* 0385C 8092FE2C A4E90198 */  sh      $t1, 0x0198($a3)           ## 00000198
/* 03860 8092FE30 ACEA0190 */  sw      $t2, 0x0190($a3)           ## 00000190
/* 03864 8092FE34 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03868 8092FE38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0386C 8092FE3C 03E00008 */  jr      $ra                        
/* 03870 8092FE40 00000000 */  nop


