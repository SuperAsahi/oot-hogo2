glabel func_80983500
/* 00200 80983500 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00204 80983504 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00208 80983508 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0020C 8098350C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00210 80983510 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00214 80983514 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00218 80983518 10400008 */  beq     $v0, $zero, .L8098353C     
/* 0021C 8098351C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00220 80983520 10410015 */  beq     $v0, $at, .L80983578       
/* 00224 80983524 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00228 80983528 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0022C 8098352C 10410021 */  beq     $v0, $at, .L809835B4       
/* 00230 80983530 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00234 80983534 1000002D */  beq     $zero, $zero, .L809835EC   
/* 00238 80983538 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8098353C:
/* 0023C 8098353C 0C0295B2 */  jal     Animation_OnFrame              
/* 00240 80983540 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 00244 80983544 10400028 */  beq     $v0, $zero, .L809835E8     
/* 00248 80983548 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0024C 8098354C 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 00250 80983550 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00254 80983554 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 00258 80983558 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0025C 8098355C AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00260 80983560 2404392D */  addiu   $a0, $zero, 0x392D         ## $a0 = 0000392D
/* 00264 80983564 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 00268 80983568 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0026C 8098356C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00270 80983570 1000001E */  beq     $zero, $zero, .L809835EC   
/* 00274 80983574 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80983578:
/* 00278 80983578 0C0295B2 */  jal     Animation_OnFrame              
/* 0027C 8098357C 3C054120 */  lui     $a1, 0x4120                ## $a1 = 41200000
/* 00280 80983580 10400019 */  beq     $v0, $zero, .L809835E8     
/* 00284 80983584 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 00288 80983588 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 0028C 8098358C 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00290 80983590 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 00294 80983594 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00298 80983598 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0029C 8098359C 2404392F */  addiu   $a0, $zero, 0x392F         ## $a0 = 0000392F
/* 002A0 809835A0 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 002A4 809835A4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 002A8 809835A8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 002AC 809835AC 1000000F */  beq     $zero, $zero, .L809835EC   
/* 002B0 809835B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809835B4:
/* 002B4 809835B4 0C0295B2 */  jal     Animation_OnFrame              
/* 002B8 809835B8 3C054110 */  lui     $a1, 0x4110                ## $a1 = 41100000
/* 002BC 809835BC 1040000A */  beq     $v0, $zero, .L809835E8     
/* 002C0 809835C0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 002C4 809835C4 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 002C8 809835C8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 002CC 809835CC 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 002D0 809835D0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 002D4 809835D4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 002D8 809835D8 2404392E */  addiu   $a0, $zero, 0x392E         ## $a0 = 0000392E
/* 002DC 809835DC 260500E4 */  addiu   $a1, $s0, 0x00E4           ## $a1 = 000000E4
/* 002E0 809835E0 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 002E4 809835E4 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L809835E8:
/* 002E8 809835E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809835EC:
/* 002EC 809835EC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002F0 809835F0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 002F4 809835F4 03E00008 */  jr      $ra                        
/* 002F8 809835F8 00000000 */  nop
