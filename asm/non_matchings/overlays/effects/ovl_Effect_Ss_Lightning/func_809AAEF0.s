glabel func_809AAEF0
/* 00000 809AAEF0 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00004 809AAEF4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00008 809AAEF8 8CEF0000 */  lw      $t7, 0x0000($a3)           ## 00000000
/* 0000C 809AAEFC 3C030403 */  lui     $v1, 0x0403                ## $v1 = 04030000
/* 00010 809AAF00 2463CF30 */  addiu   $v1, $v1, 0xCF30           ## $v1 = 0402CF30
/* 00014 809AAF04 ACCF0000 */  sw      $t7, 0x0000($a2)           ## 00000000
/* 00018 809AAF08 8CEE0004 */  lw      $t6, 0x0004($a3)           ## 00000004
/* 0001C 809AAF0C 0003C100 */  sll     $t8, $v1,  4               
/* 00020 809AAF10 0018CF02 */  srl     $t9, $t8, 28               
/* 00024 809AAF14 ACCE0004 */  sw      $t6, 0x0004($a2)           ## 00000004
/* 00028 809AAF18 8CEF0008 */  lw      $t7, 0x0008($a3)           ## 00000008
/* 0002C 809AAF1C 00194080 */  sll     $t0, $t9,  2               
/* 00030 809AAF20 3C098016 */  lui     $t1, %hi(gSegments)
/* 00034 809AAF24 01284821 */  addu    $t1, $t1, $t0              
/* 00038 809AAF28 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0003C 809AAF2C ACCF0008 */  sw      $t7, 0x0008($a2)           ## 00000008
/* 00040 809AAF30 8D296FA8 */  lw      $t1, %lo(gSegments)($t1)
/* 00044 809AAF34 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00048 809AAF38 00615024 */  and     $t2, $v1, $at              
/* 0004C 809AAF3C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00050 809AAF40 012A5821 */  addu    $t3, $t1, $t2              
/* 00054 809AAF44 01616021 */  addu    $t4, $t3, $at              
/* 00058 809AAF48 ACCC0038 */  sw      $t4, 0x0038($a2)           ## 00000038
/* 0005C 809AAF4C 84ED0018 */  lh      $t5, 0x0018($a3)           ## 00000018
/* 00060 809AAF50 3C0E809B */  lui     $t6, %hi(func_809AB078)    ## $t6 = 809B0000
/* 00064 809AAF54 3C0F809B */  lui     $t7, %hi(func_809AB338)    ## $t7 = 809B0000
/* 00068 809AAF58 25CEB078 */  addiu   $t6, $t6, %lo(func_809AB078) ## $t6 = 809AB078
/* 0006C 809AAF5C 25EFB338 */  addiu   $t7, $t7, %lo(func_809AB338) ## $t7 = 809AB338
/* 00070 809AAF60 ACCE0028 */  sw      $t6, 0x0028($a2)           ## 00000028
/* 00074 809AAF64 ACCF0024 */  sw      $t7, 0x0024($a2)           ## 00000024
/* 00078 809AAF68 A4CD005C */  sh      $t5, 0x005C($a2)           ## 0000005C
/* 0007C 809AAF6C 90F8000C */  lbu     $t8, 0x000C($a3)           ## 0000000C
/* 00080 809AAF70 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00084 809AAF74 A4D80040 */  sh      $t8, 0x0040($a2)           ## 00000040
/* 00088 809AAF78 90F9000D */  lbu     $t9, 0x000D($a3)           ## 0000000D
/* 0008C 809AAF7C A4D90042 */  sh      $t9, 0x0042($a2)           ## 00000042
/* 00090 809AAF80 90E8000E */  lbu     $t0, 0x000E($a3)           ## 0000000E
/* 00094 809AAF84 A4C80044 */  sh      $t0, 0x0044($a2)           ## 00000044
/* 00098 809AAF88 90E9000F */  lbu     $t1, 0x000F($a3)           ## 0000000F
/* 0009C 809AAF8C A4C90046 */  sh      $t1, 0x0046($a2)           ## 00000046
/* 000A0 809AAF90 90EA0010 */  lbu     $t2, 0x0010($a3)           ## 00000010
/* 000A4 809AAF94 A4CA0048 */  sh      $t2, 0x0048($a2)           ## 00000048
/* 000A8 809AAF98 90EB0011 */  lbu     $t3, 0x0011($a3)           ## 00000011
/* 000AC 809AAF9C A4CB004A */  sh      $t3, 0x004A($a2)           ## 0000004A
/* 000B0 809AAFA0 90EC0012 */  lbu     $t4, 0x0012($a3)           ## 00000012
/* 000B4 809AAFA4 A4CC004C */  sh      $t4, 0x004C($a2)           ## 0000004C
/* 000B8 809AAFA8 90ED0013 */  lbu     $t5, 0x0013($a3)           ## 00000013
/* 000BC 809AAFAC A4CD004E */  sh      $t5, 0x004E($a2)           ## 0000004E
/* 000C0 809AAFB0 84EE001A */  lh      $t6, 0x001A($a3)           ## 0000001A
/* 000C4 809AAFB4 A4CE0050 */  sh      $t6, 0x0050($a2)           ## 00000050
/* 000C8 809AAFB8 84EF0014 */  lh      $t7, 0x0014($a3)           ## 00000014
/* 000CC 809AAFBC A4CF0052 */  sh      $t7, 0x0052($a2)           ## 00000052
/* 000D0 809AAFC0 84F80016 */  lh      $t8, 0x0016($a3)           ## 00000016
/* 000D4 809AAFC4 A4D80054 */  sh      $t8, 0x0054($a2)           ## 00000054
/* 000D8 809AAFC8 84F90018 */  lh      $t9, 0x0018($a3)           ## 00000018
/* 000DC 809AAFCC 03E00008 */  jr      $ra                        
/* 000E0 809AAFD0 A4D90056 */  sh      $t9, 0x0056($a2)           ## 00000056
