glabel func_8081F87C
/* 0C05C 8081F87C 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0C060 8081F880 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0C064 8081F884 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 0C068 8081F888 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C06C 8081F88C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0C070 8081F890 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 0C074 8081F894 AFA7007C */  sw      $a3, 0x007C($sp)           
/* 0C078 8081F898 3C068083 */  lui     $a2, %hi(D_8082FA98)       ## $a2 = 80830000
/* 0C07C 8081F89C 24C6FA98 */  addiu   $a2, $a2, %lo(D_8082FA98)  ## $a2 = 8082FA98
/* 0C080 8081F8A0 240702EC */  addiu   $a3, $zero, 0x02EC         ## $a3 = 000002EC
/* 0C084 8081F8A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0C088 8081F8A8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0C08C 8081F8AC 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFEC
/* 0C090 8081F8B0 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C094 8081F8B4 3C0FFD18 */  lui     $t7, 0xFD18                ## $t7 = FD180000
/* 0C098 8081F8B8 3C090700 */  lui     $t1, 0x0700                ## $t1 = 07000000
/* 0C09C 8081F8BC 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0C0A0 8081F8C0 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 0C0A4 8081F8C4 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0C0A8 8081F8C8 8FB80074 */  lw      $t8, 0x0074($sp)           
/* 0C0AC 8081F8CC 3C0AF518 */  lui     $t2, 0xF518                ## $t2 = F5180000
/* 0C0B0 8081F8D0 3C0CE600 */  lui     $t4, 0xE600                ## $t4 = E6000000
/* 0C0B4 8081F8D4 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 0C0B8 8081F8D8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C0BC 8081F8DC 3C0EF300 */  lui     $t6, 0xF300                ## $t6 = F3000000
/* 0C0C0 8081F8E0 240507FF */  addiu   $a1, $zero, 0x07FF         ## $a1 = 000007FF
/* 0C0C4 8081F8E4 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0C0C8 8081F8E8 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 0C0CC 8081F8EC AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0C0D0 8081F8F0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0C0D4 8081F8F4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C0D8 8081F8F8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 0C0DC 8081F8FC AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 0C0E0 8081F900 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0C0E4 8081F904 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0C0E8 8081F908 8E0702C0 */  lw      $a3, 0x02C0($s0)           ## 000002C0
/* 0C0EC 8081F90C 24ED0008 */  addiu   $t5, $a3, 0x0008           ## $t5 = 00000008
/* 0C0F0 8081F910 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 0C0F4 8081F914 ACEE0000 */  sw      $t6, 0x0000($a3)           ## 00000000
/* 0C0F8 8081F918 97A8007E */  lhu     $t0, 0x007E($sp)           
/* 0C0FC 8081F91C 97A4007A */  lhu     $a0, 0x007A($sp)           
/* 0C100 8081F920 00880019 */  multu   $a0, $t0                   
/* 0C104 8081F924 00041080 */  sll     $v0, $a0,  2               
/* 0C108 8081F928 00001812 */  mflo    $v1                        
/* 0C10C 8081F92C 2463FFFF */  addiu   $v1, $v1, 0xFFFF           ## $v1 = FFFFFFFF
/* 0C110 8081F930 286107FF */  slti    $at, $v1, 0x07FF           
/* 0C114 8081F934 10200003 */  beq     $at, $zero, .L8081F944     
/* 0C118 8081F938 00000000 */  nop
/* 0C11C 8081F93C 10000001 */  beq     $zero, $zero, .L8081F944   
/* 0C120 8081F940 00602825 */  or      $a1, $v1, $zero            ## $a1 = FFFFFFFF
.L8081F944:
/* 0C124 8081F944 04410002 */  bgez    $v0, .L8081F950            
/* 0C128 8081F948 00400821 */  addu    $at, $v0, $zero            
/* 0C12C 8081F94C 24410007 */  addiu   $at, $v0, 0x0007           ## $at = 00000007
.L8081F950:
/* 0C130 8081F950 000110C3 */  sra     $v0, $at,  3               
/* 0C134 8081F954 1C400003 */  bgtz    $v0, .L8081F964            
/* 0C138 8081F958 30AC0FFF */  andi    $t4, $a1, 0x0FFF           ## $t4 = 00000FFF
/* 0C13C 8081F95C 10000002 */  beq     $zero, $zero, .L8081F968   
/* 0C140 8081F960 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L8081F964:
/* 0C144 8081F964 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
.L8081F968:
/* 0C148 8081F968 1C400003 */  bgtz    $v0, .L8081F978            
/* 0C14C 8081F96C 24CF07FF */  addiu   $t7, $a2, 0x07FF           ## $t7 = 000007FF
/* 0C150 8081F970 10000002 */  beq     $zero, $zero, .L8081F97C   
/* 0C154 8081F974 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L8081F978:
/* 0C158 8081F978 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8081F97C:
/* 0C15C 8081F97C 01E3001A */  div     $zero, $t7, $v1            
/* 0C160 8081F980 0000C012 */  mflo    $t8                        
/* 0C164 8081F984 33190FFF */  andi    $t9, $t8, 0x0FFF           ## $t9 = 00000000
/* 0C168 8081F988 03295825 */  or      $t3, $t9, $t1              ## $t3 = 07000000
/* 0C16C 8081F98C 000C6B00 */  sll     $t5, $t4, 12               
/* 0C170 8081F990 016D7025 */  or      $t6, $t3, $t5              ## $t6 = 07000008
/* 0C174 8081F994 ACEE0004 */  sw      $t6, 0x0004($a3)           ## 00000004
/* 0C178 8081F998 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C17C 8081F99C 14600002 */  bne     $v1, $zero, .L8081F9A8     
/* 0C180 8081F9A0 00000000 */  nop
/* 0C184 8081F9A4 0007000D */  break 7
.L8081F9A8:
/* 0C188 8081F9A8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0C18C 8081F9AC 14610004 */  bne     $v1, $at, .L8081F9C0       
/* 0C190 8081F9B0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0C194 8081F9B4 15E10002 */  bne     $t7, $at, .L8081F9C0       
/* 0C198 8081F9B8 00000000 */  nop
/* 0C19C 8081F9BC 0006000D */  break 6
.L8081F9C0:
/* 0C1A0 8081F9C0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0C1A4 8081F9C4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 0C1A8 8081F9C8 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 0C1AC 8081F9CC AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0C1B0 8081F9D0 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0C1B4 8081F9D4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C1B8 8081F9D8 00046040 */  sll     $t4, $a0,  1               
/* 0C1BC 8081F9DC 258B0007 */  addiu   $t3, $t4, 0x0007           ## $t3 = 00001006
/* 0C1C0 8081F9E0 000B68C3 */  sra     $t5, $t3,  3               
/* 0C1C4 8081F9E4 31AE01FF */  andi    $t6, $t5, 0x01FF           ## $t6 = 00000008
/* 0C1C8 8081F9E8 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0C1CC 8081F9EC AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 0C1D0 8081F9F0 000E7A40 */  sll     $t7, $t6,  9               
/* 0C1D4 8081F9F4 01EAC025 */  or      $t8, $t7, $t2              ## $t8 = F5180008
/* 0C1D8 8081F9F8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0C1DC 8081F9FC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 0C1E0 8081FA00 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C1E4 8081FA04 248BFFFF */  addiu   $t3, $a0, 0xFFFF           ## $t3 = FFFFFFFF
/* 0C1E8 8081FA08 000B6880 */  sll     $t5, $t3,  2               
/* 0C1EC 8081FA0C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0C1F0 8081FA10 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 0C1F4 8081FA14 2518FFFF */  addiu   $t8, $t0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0C1F8 8081FA18 3C0CF200 */  lui     $t4, 0xF200                ## $t4 = F2000000
/* 0C1FC 8081FA1C 0018C880 */  sll     $t9, $t8,  2               
/* 0C200 8081FA20 31AE0FFF */  andi    $t6, $t5, 0x0FFF           ## $t6 = 00000008
/* 0C204 8081FA24 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0C208 8081FA28 332C0FFF */  andi    $t4, $t9, 0x0FFF           ## $t4 = 00000008
/* 0C20C 8081FA2C 000E7B00 */  sll     $t7, $t6, 12               
/* 0C210 8081FA30 01EC5825 */  or      $t3, $t7, $t4              ## $t3 = 00000008
/* 0C214 8081FA34 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0C218 8081FA38 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0C21C 8081FA3C 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFEC
/* 0C220 8081FA40 240702F6 */  addiu   $a3, $zero, 0x02F6         ## $a3 = 000002F6
/* 0C224 8081FA44 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 0C228 8081FA48 AE0D02C0 */  sw      $t5, 0x02C0($s0)           ## 000002C0
/* 0C22C 8081FA4C 97A30082 */  lhu     $v1, 0x0082($sp)           
/* 0C230 8081FA50 00031840 */  sll     $v1, $v1,  1               
/* 0C234 8081FA54 246E0004 */  addiu   $t6, $v1, 0x0004           ## $t6 = 00000004
/* 0C238 8081FA58 31D800FF */  andi    $t8, $t6, 0x00FF           ## $t8 = 00000004
/* 0C23C 8081FA5C 306500FF */  andi    $a1, $v1, 0x00FF           ## $a1 = 00000000
/* 0C240 8081FA60 00052C00 */  sll     $a1, $a1, 16               
/* 0C244 8081FA64 0018CA00 */  sll     $t9, $t8,  8               
/* 0C248 8081FA68 24660006 */  addiu   $a2, $v1, 0x0006           ## $a2 = 00000006
/* 0C24C 8081FA6C 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000006
/* 0C250 8081FA70 00B97825 */  or      $t7, $a1, $t9              ## $t7 = 00000008
/* 0C254 8081FA74 01E66025 */  or      $t4, $t7, $a2              ## $t4 = 0000000E
/* 0C258 8081FA78 00066A00 */  sll     $t5, $a2,  8               
/* 0C25C 8081FA7C 24780002 */  addiu   $t8, $v1, 0x0002           ## $t8 = 00000002
/* 0C260 8081FA80 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000002
/* 0C264 8081FA84 00AD7025 */  or      $t6, $a1, $t5              ## $t6 = 00000008
/* 0C268 8081FA88 01D97825 */  or      $t7, $t6, $t9              ## $t7 = 0000000A
/* 0C26C 8081FA8C 01895825 */  or      $t3, $t4, $t1              ## $t3 = 0700000E
/* 0C270 8081FA90 3C068083 */  lui     $a2, %hi(D_8082FAB4)       ## $a2 = 80830000
/* 0C274 8081FA94 24C6FAB4 */  addiu   $a2, $a2, %lo(D_8082FAB4)  ## $a2 = 8082FAB4
/* 0C278 8081FA98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0C27C 8081FA9C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0C280 8081FAA0 0C031AD5 */  jal     Graph_CloseDisps              
/* 0C284 8081FAA4 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 0C288 8081FAA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0C28C 8081FAAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0C290 8081FAB0 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 0C294 8081FAB4 03E00008 */  jr      $ra                        
/* 0C298 8081FAB8 00000000 */  nop


