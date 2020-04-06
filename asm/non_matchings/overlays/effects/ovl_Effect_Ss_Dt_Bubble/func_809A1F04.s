glabel func_809A1F04
/* 00254 809A1F04 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00258 809A1F08 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0025C 809A1F0C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00260 809A1F10 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00264 809A1F14 AFA40058 */  sw      $a0, 0x0058($sp)           
/* 00268 809A1F18 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 0026C 809A1F1C 8C910000 */  lw      $s1, 0x0000($a0)           ## 00000000
/* 00270 809A1F20 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00274 809A1F24 3C06809A */  lui     $a2, %hi(D_809A2220)       ## $a2 = 809A0000
/* 00278 809A1F28 24C62220 */  addiu   $a2, $a2, %lo(D_809A2220)  ## $a2 = 809A2220
/* 0027C 809A1F2C 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 00280 809A1F30 240700C9 */  addiu   $a3, $zero, 0x00C9         ## $a3 = 000000C9
/* 00284 809A1F34 0C031AB1 */  jal     Graph_OpenDisps              
/* 00288 809A1F38 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0028C 809A1F3C 860F0052 */  lh      $t7, 0x0052($s0)           ## 00000052
/* 00290 809A1F40 3C01809A */  lui     $at, %hi(D_809A2268)       ## $at = 809A0000
/* 00294 809A1F44 C4282268 */  lwc1    $f8, %lo(D_809A2268)($at)  
/* 00298 809A1F48 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0029C 809A1F4C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002A0 809A1F50 468021A0 */  cvt.s.w $f6, $f4                   
/* 002A4 809A1F54 46083282 */  mul.s   $f10, $f6, $f8             
/* 002A8 809A1F58 E7AA0050 */  swc1    $f10, 0x0050($sp)          
/* 002AC 809A1F5C 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 002B0 809A1F60 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 00000004
/* 002B4 809A1F64 0C034261 */  jal     Matrix_Translate              
/* 002B8 809A1F68 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 00000000
/* 002BC 809A1F6C C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 002C0 809A1F70 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 002C4 809A1F74 44066000 */  mfc1    $a2, $f12                  
/* 002C8 809A1F78 0C0342A3 */  jal     Matrix_Scale              
/* 002CC 809A1F7C 46006386 */  mov.s   $f14, $f12                 
/* 002D0 809A1F80 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 002D4 809A1F84 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 002D8 809A1F88 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 002DC 809A1F8C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 002E0 809A1F90 AE3802D0 */  sw      $t8, 0x02D0($s1)           ## 000002D0
/* 002E4 809A1F94 3C05809A */  lui     $a1, %hi(D_809A2238)       ## $a1 = 809A0000
/* 002E8 809A1F98 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 002EC 809A1F9C 24A52238 */  addiu   $a1, $a1, %lo(D_809A2238)  ## $a1 = 809A2238
/* 002F0 809A1FA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 002F4 809A1FA4 240600D5 */  addiu   $a2, $zero, 0x00D5         ## $a2 = 000000D5
/* 002F8 809A1FA8 0C0346A2 */  jal     Matrix_NewMtx              
/* 002FC 809A1FAC AFA20038 */  sw      $v0, 0x0038($sp)           
/* 00300 809A1FB0 8FA30038 */  lw      $v1, 0x0038($sp)           
/* 00304 809A1FB4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00308 809A1FB8 0C024F05 */  jal     func_80093C14              
/* 0030C 809A1FBC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00310 809A1FC0 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00314 809A1FC4 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 00318 809A1FC8 3C040402 */  lui     $a0, 0x0402                ## $a0 = 04020000
/* 0031C 809A1FCC 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00320 809A1FD0 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 00324 809A1FD4 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 00328 809A1FD8 860B005C */  lh      $t3, 0x005C($s0)           ## 0000005C
/* 0032C 809A1FDC 860A0046 */  lh      $t2, 0x0046($s0)           ## 00000046
/* 00330 809A1FE0 860D0054 */  lh      $t5, 0x0054($s0)           ## 00000054
/* 00334 809A1FE4 86190040 */  lh      $t9, 0x0040($s0)           ## 00000040
/* 00338 809A1FE8 014B0019 */  multu   $t2, $t3                   
/* 0033C 809A1FEC 860A0042 */  lh      $t2, 0x0042($s0)           ## 00000042
/* 00340 809A1FF0 00194600 */  sll     $t0, $t9, 24               
/* 00344 809A1FF4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00348 809A1FF8 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 0034C 809A1FFC 3C0AFB00 */  lui     $t2, 0xFB00                ## $t2 = FB000000
/* 00350 809A2000 2484A160 */  addiu   $a0, $a0, 0xA160           ## $a0 = 0401A160
/* 00354 809A2004 3C06809A */  lui     $a2, %hi(D_809A2250)       ## $a2 = 809A0000
/* 00358 809A2008 24C62250 */  addiu   $a2, $a2, %lo(D_809A2250)  ## $a2 = 809A2250
/* 0035C 809A200C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00360 809A2010 00006012 */  mflo    $t4                        
/* 00364 809A2014 240700EC */  addiu   $a3, $zero, 0x00EC         ## $a3 = 000000EC
/* 00368 809A2018 00000000 */  nop
/* 0036C 809A201C 018D001A */  div     $zero, $t4, $t5            
/* 00370 809A2020 00007012 */  mflo    $t6                        
/* 00374 809A2024 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 00378 809A2028 860E0044 */  lh      $t6, 0x0044($s0)           ## 00000044
/* 0037C 809A202C 15A00002 */  bne     $t5, $zero, .L809A2038     
/* 00380 809A2030 00000000 */  nop
/* 00384 809A2034 0007000D */  break   7	## 0x01C00
.L809A2038:
/* 00388 809A2038 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0038C 809A203C 15A10004 */  bne     $t5, $at, .L809A2050       
/* 00390 809A2040 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00394 809A2044 15810002 */  bne     $t4, $at, .L809A2050       
/* 00398 809A2048 00000000 */  nop
/* 0039C 809A204C 0006000D */  break   6	## 0x01800
.L809A2050:
/* 003A0 809A2050 000B6400 */  sll     $t4, $t3, 16               
/* 003A4 809A2054 01E84825 */  or      $t1, $t7, $t0              ## $t1 = 00000008
/* 003A8 809A2058 31D800FF */  andi    $t8, $t6, 0x00FF           ## $t8 = 00000000
/* 003AC 809A205C 0018CA00 */  sll     $t9, $t8,  8               
/* 003B0 809A2060 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000008
/* 003B4 809A2064 01B97825 */  or      $t7, $t5, $t9              ## $t7 = 00000008
/* 003B8 809A2068 AC6F0004 */  sw      $t7, 0x0004($v1)           ## 00000004
/* 003BC 809A206C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 003C0 809A2070 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 003C4 809A2074 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 003C8 809A2078 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 003CC 809A207C 8609005C */  lh      $t1, 0x005C($s0)           ## 0000005C
/* 003D0 809A2080 860B004E */  lh      $t3, 0x004E($s0)           ## 0000004E
/* 003D4 809A2084 860E0054 */  lh      $t6, 0x0054($s0)           ## 00000054
/* 003D8 809A2088 860F0048 */  lh      $t7, 0x0048($s0)           ## 00000048
/* 003DC 809A208C 01690019 */  multu   $t3, $t1                   
/* 003E0 809A2090 860B004A */  lh      $t3, 0x004A($s0)           ## 0000004A
/* 003E4 809A2094 000F4600 */  sll     $t0, $t7, 24               
/* 003E8 809A2098 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 003EC 809A209C 316900FF */  andi    $t1, $t3, 0x00FF           ## $t1 = 00000000
/* 003F0 809A20A0 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 003F4 809A20A4 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 003F8 809A20A8 00006012 */  mflo    $t4                        
/* 003FC 809A20AC 00000000 */  nop
/* 00400 809A20B0 00000000 */  nop
/* 00404 809A20B4 018E001A */  div     $zero, $t4, $t6            
/* 00408 809A20B8 0000C012 */  mflo    $t8                        
/* 0040C 809A20BC 330D00FF */  andi    $t5, $t8, 0x00FF           ## $t5 = 00000000
/* 00410 809A20C0 8618004C */  lh      $t8, 0x004C($s0)           ## 0000004C
/* 00414 809A20C4 15C00002 */  bne     $t6, $zero, .L809A20D0     
/* 00418 809A20C8 00000000 */  nop
/* 0041C 809A20CC 0007000D */  break   7	## 0x01C00
.L809A20D0:
/* 00420 809A20D0 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00424 809A20D4 15C10004 */  bne     $t6, $at, .L809A20E8       
/* 00428 809A20D8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0042C 809A20DC 15810002 */  bne     $t4, $at, .L809A20E8       
/* 00430 809A20E0 00000000 */  nop
/* 00434 809A20E4 0006000D */  break   6	## 0x01800
.L809A20E8:
/* 00438 809A20E8 00096400 */  sll     $t4, $t1, 16               
/* 0043C 809A20EC 01A85025 */  or      $t2, $t5, $t0              ## $t2 = 00000008
/* 00440 809A20F0 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 00444 809A20F4 00197A00 */  sll     $t7, $t9,  8               
/* 00448 809A20F8 014C7025 */  or      $t6, $t2, $t4              ## $t6 = 00000008
/* 0044C 809A20FC 01CF6825 */  or      $t5, $t6, $t7              ## $t5 = 00000008
/* 00450 809A2100 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 00454 809A2104 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00458 809A2108 0004C100 */  sll     $t8, $a0,  4               
/* 0045C 809A210C 0018CF02 */  srl     $t9, $t8, 28               
/* 00460 809A2110 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00464 809A2114 AE2802D0 */  sw      $t0, 0x02D0($s1)           ## 000002D0
/* 00468 809A2118 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0046C 809A211C 8E090038 */  lw      $t1, 0x0038($s0)           ## 00000038
/* 00470 809A2120 00197080 */  sll     $t6, $t9,  2               
/* 00474 809A2124 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00478 809A2128 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0047C 809A212C 8E2202D0 */  lw      $v0, 0x02D0($s1)           ## 000002D0
/* 00480 809A2130 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00484 809A2134 01EE7821 */  addu    $t7, $t7, $t6              
/* 00488 809A2138 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0048C 809A213C AE2A02D0 */  sw      $t2, 0x02D0($s1)           ## 000002D0
/* 00490 809A2140 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00494 809A2144 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00498 809A2148 8DEF6FA8 */  lw      $t7, 0x6FA8($t7)           ## 80166FA8
/* 0049C 809A214C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 004A0 809A2150 00816824 */  and     $t5, $a0, $at              
/* 004A4 809A2154 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 004A8 809A2158 01ED4021 */  addu    $t0, $t7, $t5              
/* 004AC 809A215C 01015821 */  addu    $t3, $t0, $at              
/* 004B0 809A2160 27A4003C */  addiu   $a0, $sp, 0x003C           ## $a0 = FFFFFFE4
/* 004B4 809A2164 0C031AD5 */  jal     Graph_CloseDisps              
/* 004B8 809A2168 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 004BC 809A216C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 004C0 809A2170 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 004C4 809A2174 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 004C8 809A2178 03E00008 */  jr      $ra                        
/* 004CC 809A217C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


