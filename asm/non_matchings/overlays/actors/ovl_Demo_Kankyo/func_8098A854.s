glabel func_8098A854
/* 019D4 8098A854 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 019D8 8098A858 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 019DC 8098A85C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 019E0 8098A860 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 019E4 8098A864 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 019E8 8098A868 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 019EC 8098A86C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 019F0 8098A870 3C068099 */  lui     $a2, %hi(D_8098C94C)       ## $a2 = 80990000
/* 019F4 8098A874 24C6C94C */  addiu   $a2, $a2, %lo(D_8098C94C)  ## $a2 = 8098C94C
/* 019F8 8098A878 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 019FC 8098A87C 240705CF */  addiu   $a3, $zero, 0x05CF         ## $a3 = 000005CF
/* 01A00 8098A880 0C031AB1 */  jal     Graph_OpenDisps              
/* 01A04 8098A884 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01A08 8098A888 0C024F46 */  jal     func_80093D18              
/* 01A0C 8098A88C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01A10 8098A890 8FAE0050 */  lw      $t6, 0x0050($sp)           
/* 01A14 8098A894 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01A18 8098A898 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01A1C 8098A89C C5CC0168 */  lwc1    $f12, 0x0168($t6)          ## 00000168
/* 01A20 8098A8A0 44067000 */  mfc1    $a2, $f14                  
/* 01A24 8098A8A4 0C034261 */  jal     Matrix_Translate              
/* 01A28 8098A8A8 46006307 */  neg.s   $f12, $f12                 
/* 01A2C 8098A8AC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01A30 8098A8B0 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 01A34 8098A8B4 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 01A38 8098A8B8 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01A3C 8098A8BC AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 01A40 8098A8C0 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 01A44 8098A8C4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01A48 8098A8C8 3C058099 */  lui     $a1, %hi(D_8098C960)       ## $a1 = 80990000
/* 01A4C 8098A8CC 24A5C960 */  addiu   $a1, $a1, %lo(D_8098C960)  ## $a1 = 8098C960
/* 01A50 8098A8D0 240605D4 */  addiu   $a2, $zero, 0x05D4         ## $a2 = 000005D4
/* 01A54 8098A8D4 0C0346A2 */  jal     Matrix_NewMtx              
/* 01A58 8098A8D8 AFA20030 */  sw      $v0, 0x0030($sp)           
/* 01A5C 8098A8DC 8FA30030 */  lw      $v1, 0x0030($sp)           
/* 01A60 8098A8E0 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 01A64 8098A8E4 25297440 */  addiu   $t1, $t1, 0x7440           ## $t1 = 06007440
/* 01A68 8098A8E8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01A6C 8098A8EC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01A70 8098A8F0 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 01A74 8098A8F4 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 01A78 8098A8F8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01A7C 8098A8FC AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 01A80 8098A900 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 01A84 8098A904 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 01A88 8098A908 8FAA0050 */  lw      $t2, 0x0050($sp)           
/* 01A8C 8098A90C 44067000 */  mfc1    $a2, $f14                  
/* 01A90 8098A910 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01A94 8098A914 C5400168 */  lwc1    $f0, 0x0168($t2)           ## 00000168
/* 01A98 8098A918 0C034261 */  jal     Matrix_Translate              
/* 01A9C 8098A91C 46000300 */  add.s   $f12, $f0, $f0             
/* 01AA0 8098A920 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01AA4 8098A924 3C0CDA38 */  lui     $t4, 0xDA38                ## $t4 = DA380000
/* 01AA8 8098A928 358C0003 */  ori     $t4, $t4, 0x0003           ## $t4 = DA380003
/* 01AAC 8098A92C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 01AB0 8098A930 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 01AB4 8098A934 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 01AB8 8098A938 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 01ABC 8098A93C 3C058099 */  lui     $a1, %hi(D_8098C974)       ## $a1 = 80990000
/* 01AC0 8098A940 24A5C974 */  addiu   $a1, $a1, %lo(D_8098C974)  ## $a1 = 8098C974
/* 01AC4 8098A944 240605D9 */  addiu   $a2, $zero, 0x05D9         ## $a2 = 000005D9
/* 01AC8 8098A948 0C0346A2 */  jal     Matrix_NewMtx              
/* 01ACC 8098A94C AFA20028 */  sw      $v0, 0x0028($sp)           
/* 01AD0 8098A950 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01AD4 8098A954 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 01AD8 8098A958 25EF7578 */  addiu   $t7, $t7, 0x7578           ## $t7 = 06007578
/* 01ADC 8098A95C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 01AE0 8098A960 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 01AE4 8098A964 3C0EDE00 */  lui     $t6, 0xDE00                ## $t6 = DE000000
/* 01AE8 8098A968 3C068099 */  lui     $a2, %hi(D_8098C988)       ## $a2 = 80990000
/* 01AEC 8098A96C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 01AF0 8098A970 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 01AF4 8098A974 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01AF8 8098A978 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 01AFC 8098A97C 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 01B00 8098A980 24C6C988 */  addiu   $a2, $a2, %lo(D_8098C988)  ## $a2 = 8098C988
/* 01B04 8098A984 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 01B08 8098A988 0C031AD5 */  jal     Graph_CloseDisps              
/* 01B0C 8098A98C 240705DD */  addiu   $a3, $zero, 0x05DD         ## $a3 = 000005DD
/* 01B10 8098A990 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01B14 8098A994 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01B18 8098A998 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01B1C 8098A99C 03E00008 */  jr      $ra                        
/* 01B20 8098A9A0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


