glabel func_80931788
/* 051B8 80931788 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 051BC 8093178C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 051C0 80931790 808F0194 */  lb      $t7, 0x0194($a0)           ## 00000194
/* 051C4 80931794 848E0016 */  lh      $t6, 0x0016($a0)           ## 00000016
/* 051C8 80931798 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 051CC 8093179C 000FC300 */  sll     $t8, $t7, 12
/* 051D0 809317A0 01D8C823 */  subu    $t9, $t6, $t8
/* 051D4 809317A4 A49901A4 */  sh      $t9, 0x01A4($a0)           ## 000001A4
/* 051D8 809317A8 84E8001C */  lh      $t0, 0x001C($a3)           ## 0000001C
/* 051DC 809317AC 3C058093 */  lui     $a1, %hi(D_8093785C)       ## $a1 = 80930000
/* 051E0 809317B0 AFA70018 */  sw      $a3, 0x0018($sp)
/* 051E4 809317B4 00084880 */  sll     $t1, $t0,  2
/* 051E8 809317B8 00A92821 */  addu    $a1, $a1, $t1
/* 051EC 809317BC 8CA5785C */  lw      $a1, %lo(D_8093785C)($a1)
/* 051F0 809317C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 051F4 809317C4 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 051F8 809317C8 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 051FC 809317CC 8FA70018 */  lw      $a3, 0x0018($sp)
/* 05200 809317D0 3C0C8093 */  lui     $t4, %hi(func_809317F8)    ## $t4 = 80930000
/* 05204 809317D4 258C17F8 */  addiu   $t4, $t4, %lo(func_809317F8) ## $t4 = 809317F8
/* 05208 809317D8 90EA03E4 */  lbu     $t2, 0x03E4($a3)           ## 000003E4
/* 0520C 809317DC ACEC0190 */  sw      $t4, 0x0190($a3)           ## 00000190
/* 05210 809317E0 314BFFFC */  andi    $t3, $t2, 0xFFFC           ## $t3 = 00000000
/* 05214 809317E4 A0EB03E4 */  sb      $t3, 0x03E4($a3)           ## 000003E4
/* 05218 809317E8 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0521C 809317EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05220 809317F0 03E00008 */  jr      $ra
/* 05224 809317F4 00000000 */  nop


