glabel func_80930F80
/* 049B0 80930F80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 049B4 80930F84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 049B8 80930F88 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 049BC 80930F8C 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 049C0 80930F90 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 049C4 80930F94 000FC080 */  sll     $t8, $t7,  2               
/* 049C8 80930F98 00380821 */  addu    $at, $at, $t8              
/* 049CC 80930F9C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 049D0 80930FA0 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)  
/* 049D4 80930FA4 84F9001C */  lh      $t9, 0x001C($a3)           ## 0000001C
/* 049D8 80930FA8 3C058093 */  lui     $a1, %hi(D_8093787C)       ## $a1 = 80930000
/* 049DC 80930FAC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 049E0 80930FB0 00194080 */  sll     $t0, $t9,  2               
/* 049E4 80930FB4 00A82821 */  addu    $a1, $a1, $t0              
/* 049E8 80930FB8 8CA5787C */  lw      $a1, %lo(D_8093787C)($a1)  
/* 049EC 80930FBC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 049F0 80930FC0 0C029490 */  jal     SkelAnime_ChangeAnimationTransitionStop              
/* 049F4 80930FC4 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 049F8 80930FC8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 049FC 80930FCC 3C098093 */  lui     $t1, %hi(func_80930FE8)    ## $t1 = 80930000
/* 04A00 80930FD0 25290FE8 */  addiu   $t1, $t1, %lo(func_80930FE8) ## $t1 = 80930FE8
/* 04A04 80930FD4 ACE90190 */  sw      $t1, 0x0190($a3)           ## 00000190
/* 04A08 80930FD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04A0C 80930FDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04A10 80930FE0 03E00008 */  jr      $ra                        
/* 04A14 80930FE4 00000000 */  nop


