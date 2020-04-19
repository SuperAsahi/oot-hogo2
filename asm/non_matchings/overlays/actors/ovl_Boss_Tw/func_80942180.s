.rdata
glabel D_8094AB18
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AB28
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AB38
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AB48
    .asciz "../z_boss_tw.c"
    .balign 4

glabel D_8094AB58
    .asciz "../z_boss_tw.c"
    .balign 4

.late_rodata
glabel D_8094B050
    .float 0.7

.text
glabel func_80942180
/* 094B0 80942180 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 094B4 80942184 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 094B8 80942188 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 094BC 8094218C AFA400A8 */  sw      $a0, 0x00A8($sp)           
/* 094C0 80942190 AFA500AC */  sw      $a1, 0x00AC($sp)           
/* 094C4 80942194 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 094C8 80942198 3C068095 */  lui     $a2, %hi(D_8094AB18)       ## $a2 = 80950000
/* 094CC 8094219C 24C6AB18 */  addiu   $a2, $a2, %lo(D_8094AB18)  ## $a2 = 8094AB18
/* 094D0 809421A0 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFE8
/* 094D4 809421A4 24071944 */  addiu   $a3, $zero, 0x1944         ## $a3 = 00001944
/* 094D8 809421A8 0C031AB1 */  jal     Graph_OpenDisps              
/* 094DC 809421AC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 094E0 809421B0 0C034213 */  jal     Matrix_Push              
/* 094E4 809421B4 00000000 */  nop
/* 094E8 809421B8 8FAF00AC */  lw      $t7, 0x00AC($sp)           
/* 094EC 809421BC 0C024F61 */  jal     func_80093D84              
/* 094F0 809421C0 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 094F4 809421C4 8FA200A8 */  lw      $v0, 0x00A8($sp)           
/* 094F8 809421C8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 094FC 809421CC C44C04BC */  lwc1    $f12, 0x04BC($v0)          ## 000004BC
/* 09500 809421D0 C44E04C0 */  lwc1    $f14, 0x04C0($v0)          ## 000004C0
/* 09504 809421D4 0C034261 */  jal     Matrix_Translate              
/* 09508 809421D8 8C4604C4 */  lw      $a2, 0x04C4($v0)           ## 000004C4
/* 0950C 809421DC 8FB800A8 */  lw      $t8, 0x00A8($sp)           
/* 09510 809421E0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 09514 809421E4 C70C01B8 */  lwc1    $f12, 0x01B8($t8)          ## 000001B8
/* 09518 809421E8 44066000 */  mfc1    $a2, $f12                  
/* 0951C 809421EC 0C0342A3 */  jal     Matrix_Scale              
/* 09520 809421F0 46006386 */  mov.s   $f14, $f12                 
/* 09524 809421F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09528 809421F8 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 0952C 809421FC 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 09530 80942200 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 09534 80942204 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 09538 80942208 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0953C 8094220C 8FAB00A8 */  lw      $t3, 0x00A8($sp)           
/* 09540 80942210 8FAA00AC */  lw      $t2, 0x00AC($sp)           
/* 09544 80942214 24090020 */  addiu   $t1, $zero, 0x0020         ## $t1 = 00000020
/* 09548 80942218 85630150 */  lh      $v1, 0x0150($t3)           ## 00000150
/* 0954C 8094221C 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 09550 80942220 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 09554 80942224 00037840 */  sll     $t7, $v1,  1               
/* 09558 80942228 31F8007F */  andi    $t8, $t7, 0x007F           ## $t8 = 00000000
/* 0955C 8094222C 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 09560 80942230 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 09564 80942234 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 09568 80942238 00033023 */  subu    $a2, $zero, $v1            
/* 0956C 8094223C 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 09570 80942240 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 09574 80942244 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 09578 80942248 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 0957C 8094224C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 09580 80942250 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 09584 80942254 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 09588 80942258 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0958C 8094225C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09590 80942260 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 09594 80942264 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 09598 80942268 AFA2008C */  sw      $v0, 0x008C($sp)           
/* 0959C 8094226C 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 095A0 80942270 3C0BDA38 */  lui     $t3, 0xDA38                ## $t3 = DA380000
/* 095A4 80942274 356B0003 */  ori     $t3, $t3, 0x0003           ## $t3 = DA380003
/* 095A8 80942278 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 095AC 8094227C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 095B0 80942280 3C058095 */  lui     $a1, %hi(D_8094AB28)       ## $a1 = 80950000
/* 095B4 80942284 24A5AB28 */  addiu   $a1, $a1, %lo(D_8094AB28)  ## $a1 = 8094AB28
/* 095B8 80942288 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 095BC 8094228C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 095C0 80942290 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 095C4 80942294 8FAC00AC */  lw      $t4, 0x00AC($sp)           
/* 095C8 80942298 24061961 */  addiu   $a2, $zero, 0x1961         ## $a2 = 00001961
/* 095CC 8094229C 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 095D0 809422A0 0C0346A2 */  jal     Matrix_NewMtx              
/* 095D4 809422A4 AFA20088 */  sw      $v0, 0x0088($sp)           
/* 095D8 809422A8 8FA30088 */  lw      $v1, 0x0088($sp)           
/* 095DC 809422AC 3C0EFA00 */  lui     $t6, 0xFA00                ## $t6 = FA000000
/* 095E0 809422B0 3C016428 */  lui     $at, 0x6428                ## $at = 64280000
/* 095E4 809422B4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 095E8 809422B8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 095EC 809422BC 3C19FFF5 */  lui     $t9, 0xFFF5                ## $t9 = FFF50000
/* 095F0 809422C0 3739FF80 */  ori     $t9, $t9, 0xFF80           ## $t9 = FFF5FF80
/* 095F4 809422C4 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 095F8 809422C8 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 095FC 809422CC AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 09600 809422D0 8FAF00A8 */  lw      $t7, 0x00A8($sp)           
/* 09604 809422D4 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 09608 809422D8 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 0960C 809422DC C5E401B0 */  lwc1    $f4, 0x01B0($t7)           ## 000001B0
/* 09610 809422E0 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 09614 809422E4 24849D40 */  addiu   $a0, $a0, 0x9D40           ## $a0 = 06019D40
/* 09618 809422E8 4600218D */  trunc.w.s $f6, $f4                   
/* 0961C 809422EC 440A3000 */  mfc1    $t2, $f6                   
/* 09620 809422F0 00000000 */  nop
/* 09624 809422F4 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 09628 809422F8 01616025 */  or      $t4, $t3, $at              ## $t4 = 64280000
/* 0962C 809422FC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 09630 80942300 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09634 80942304 00045900 */  sll     $t3, $a0,  4               
/* 09638 80942308 000B6702 */  srl     $t4, $t3, 28               
/* 0963C 8094230C 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 09640 80942310 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 09644 80942314 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 09648 80942318 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0964C 8094231C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09650 80942320 3C0E8016 */  lui     $t6, %hi(gSegments)
/* 09654 80942324 000C6880 */  sll     $t5, $t4,  2               
/* 09658 80942328 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0965C 8094232C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 09660 80942330 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 09664 80942334 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 09668 80942338 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0966C 8094233C 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 09670 80942340 01CD7021 */  addu    $t6, $t6, $t5              
/* 09674 80942344 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 09678 80942348 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 0967C 8094234C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 09680 80942350 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 09684 80942354 8DCE6FA8 */  lw      $t6, %lo(gSegments)($t6)
/* 09688 80942358 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0968C 8094235C 00817824 */  and     $t7, $a0, $at              
/* 09690 80942360 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 09694 80942364 01CFC021 */  addu    $t8, $t6, $t7              
/* 09698 80942368 0301C821 */  addu    $t9, $t8, $at              
/* 0969C 8094236C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 096A0 80942370 8FA400AC */  lw      $a0, 0x00AC($sp)           
/* 096A4 80942374 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 096A8 80942378 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 096AC 8094237C 0C0347F5 */  jal     func_800D1FD4              
/* 096B0 80942380 00812021 */  addu    $a0, $a0, $at              
/* 096B4 80942384 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 096B8 80942388 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 096BC 8094238C 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 096C0 80942390 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 096C4 80942394 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 096C8 80942398 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 096CC 8094239C 8FAB00AC */  lw      $t3, 0x00AC($sp)           
/* 096D0 809423A0 3C058095 */  lui     $a1, %hi(D_8094AB38)       ## $a1 = 80950000
/* 096D4 809423A4 24A5AB38 */  addiu   $a1, $a1, %lo(D_8094AB38)  ## $a1 = 8094AB38
/* 096D8 809423A8 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 096DC 809423AC 24061972 */  addiu   $a2, $zero, 0x1972         ## $a2 = 00001972
/* 096E0 809423B0 0C0346A2 */  jal     Matrix_NewMtx              
/* 096E4 809423B4 AFA20074 */  sw      $v0, 0x0074($sp)           
/* 096E8 809423B8 8FA30074 */  lw      $v1, 0x0074($sp)           
/* 096EC 809423BC 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 096F0 809423C0 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 096F4 809423C4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 096F8 809423C8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 096FC 809423CC 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 09700 809423D0 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 09704 809423D4 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 09708 809423D8 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 0970C 809423DC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 09710 809423E0 8FAF00A8 */  lw      $t7, 0x00A8($sp)           
/* 09714 809423E4 8FAE00AC */  lw      $t6, 0x00AC($sp)           
/* 09718 809423E8 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 0971C 809423EC 85E30150 */  lh      $v1, 0x0150($t7)           ## 00000150
/* 09720 809423F0 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 09724 809423F4 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 09728 809423F8 00033823 */  subu    $a3, $zero, $v1            
/* 0972C 809423FC 00E00821 */  addu    $at, $a3, $zero            
/* 09730 80942400 00073880 */  sll     $a3, $a3,  2               
/* 09734 80942404 00E13823 */  subu    $a3, $a3, $at              
/* 09738 80942408 00073840 */  sll     $a3, $a3,  1               
/* 0973C 8094240C 00035040 */  sll     $t2, $v1,  1               
/* 09740 80942410 314B007F */  andi    $t3, $t2, 0x007F           ## $t3 = 00000000
/* 09744 80942414 30E700FF */  andi    $a3, $a3, 0x00FF           ## $a3 = 00000000
/* 09748 80942418 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0974C 8094241C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 09750 80942420 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 09754 80942424 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 09758 80942428 AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 0975C 8094242C AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 09760 80942430 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 09764 80942434 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 09768 80942438 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0976C 8094243C AFA20070 */  sw      $v0, 0x0070($sp)           
/* 09770 80942440 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 09774 80942444 3066007F */  andi    $a2, $v1, 0x007F           ## $a2 = 00000000
/* 09778 80942448 8FA80070 */  lw      $t0, 0x0070($sp)           
/* 0977C 8094244C 3C0FFA00 */  lui     $t7, 0xFA00                ## $t7 = FA000000
/* 09780 80942450 3C015000 */  lui     $at, 0x5000                ## $at = 50000000
/* 09784 80942454 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 09788 80942458 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0978C 8094245C 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 09790 80942460 24090064 */  addiu   $t1, $zero, 0x0064         ## $t1 = 00000064
/* 09794 80942464 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09798 80942468 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 0979C 8094246C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 097A0 80942470 8FB800A8 */  lw      $t8, 0x00A8($sp)           
/* 097A4 80942474 3C0FE700 */  lui     $t7, 0xE700                ## $t7 = E7000000
/* 097A8 80942478 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 097AC 8094247C C70801AC */  lwc1    $f8, 0x01AC($t8)           ## 000001AC
/* 097B0 80942480 24848FC0 */  addiu   $a0, $a0, 0x8FC0           ## $a0 = 06018FC0
/* 097B4 80942484 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 097B8 80942488 4600428D */  trunc.w.s $f10, $f8                  
/* 097BC 8094248C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 097C0 80942490 440B5000 */  mfc1    $t3, $f10                  
/* 097C4 80942494 00000000 */  nop
/* 097C8 80942498 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 097CC 8094249C 01816825 */  or      $t5, $t4, $at              ## $t5 = 50000000
/* 097D0 809424A0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 097D4 809424A4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 097D8 809424A8 00046100 */  sll     $t4, $a0,  4               
/* 097DC 809424AC 000C6F02 */  srl     $t5, $t4, 28               
/* 097E0 809424B0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 097E4 809424B4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 097E8 809424B8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 097EC 809424BC AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 097F0 809424C0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 097F4 809424C4 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 097F8 809424C8 000D7080 */  sll     $t6, $t5,  2               
/* 097FC 809424CC 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 09800 809424D0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 09804 809424D4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 09808 809424D8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0980C 809424DC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09810 809424E0 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 09814 809424E4 01EE7821 */  addu    $t7, $t7, $t6              
/* 09818 809424E8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0981C 809424EC AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 09820 809424F0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 09824 809424F4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 09828 809424F8 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 0982C 809424FC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 09830 80942500 0081C024 */  and     $t8, $a0, $at              
/* 09834 80942504 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 09838 80942508 01F8C821 */  addu    $t9, $t7, $t8              
/* 0983C 8094250C 03214821 */  addu    $t1, $t9, $at              
/* 09840 80942510 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 09844 80942514 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09848 80942518 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 0984C 8094251C 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 09850 80942520 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 09854 80942524 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 09858 80942528 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 0985C 8094252C 8FAD00A8 */  lw      $t5, 0x00A8($sp)           
/* 09860 80942530 8FAC00AC */  lw      $t4, 0x00AC($sp)           
/* 09864 80942534 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 09868 80942538 85A30150 */  lh      $v1, 0x0150($t5)           ## 50000150
/* 0986C 8094253C 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 09870 80942540 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 09874 80942544 00031823 */  subu    $v1, $zero, $v1            
/* 09878 80942548 0003C880 */  sll     $t9, $v1,  2               
/* 0987C 8094254C 0323C821 */  addu    $t9, $t9, $v1              
/* 09880 80942550 0019C840 */  sll     $t9, $t9,  1               
/* 09884 80942554 00033080 */  sll     $a2, $v1,  2               
/* 09888 80942558 00C33023 */  subu    $a2, $a2, $v1              
/* 0988C 8094255C 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 09890 80942560 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 09894 80942564 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 09898 80942568 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 0989C 8094256C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 098A0 80942570 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 098A4 80942574 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 098A8 80942578 AFA90020 */  sw      $t1, 0x0020($sp)           
/* 098AC 8094257C 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 098B0 80942580 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 098B4 80942584 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 098B8 80942588 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 098BC 8094258C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 098C0 80942590 AFA2005C */  sw      $v0, 0x005C($sp)           
/* 098C4 80942594 8FA8005C */  lw      $t0, 0x005C($sp)           
/* 098C8 80942598 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 098CC 8094259C 3C018095 */  lui     $at, %hi(D_8094B050)       ## $at = 80950000
/* 098D0 809425A0 AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 098D4 809425A4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 098D8 809425A8 3C18C8EB */  lui     $t8, 0xC8EB                ## $t8 = C8EB0000
/* 098DC 809425AC 3718F080 */  ori     $t8, $t8, 0xF080           ## $t8 = C8EBF080
/* 098E0 809425B0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 098E4 809425B4 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 098E8 809425B8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 098EC 809425BC 8FAE00A8 */  lw      $t6, 0x00A8($sp)           
/* 098F0 809425C0 C432B050 */  lwc1    $f18, %lo(D_8094B050)($at) 
/* 098F4 809425C4 3C016432 */  lui     $at, 0x6432                ## $at = 64320000
/* 098F8 809425C8 C5D001A8 */  lwc1    $f16, 0x01A8($t6)          ## 000001A8
/* 098FC 809425CC 3C0DE700 */  lui     $t5, 0xE700                ## $t5 = E7000000
/* 09900 809425D0 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 09904 809425D4 46128102 */  mul.s   $f4, $f16, $f18            
/* 09908 809425D8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0990C 809425DC 4600218D */  trunc.w.s $f6, $f4                   
/* 09910 809425E0 44093000 */  mfc1    $t1, $f6                   
/* 09914 809425E4 00000000 */  nop
/* 09918 809425E8 312A00FF */  andi    $t2, $t1, 0x00FF           ## $t2 = 00000000
/* 0991C 809425EC 01415825 */  or      $t3, $t2, $at              ## $t3 = 64320000
/* 09920 809425F0 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 09924 809425F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09928 809425F8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0992C 809425FC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 09930 80942600 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 09934 80942604 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 09938 80942608 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0993C 8094260C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 09940 80942610 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 09944 80942614 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 09948 80942618 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0994C 8094261C 8FB900A8 */  lw      $t9, 0x00A8($sp)           
/* 09950 80942620 C72C01B4 */  lwc1    $f12, 0x01B4($t9)          ## 000001B4
/* 09954 80942624 44066000 */  mfc1    $a2, $f12                  
/* 09958 80942628 0C0342A3 */  jal     Matrix_Scale              
/* 0995C 8094262C 46006386 */  mov.s   $f14, $f12                 
/* 09960 80942630 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09964 80942634 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 09968 80942638 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 0996C 8094263C 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 09970 80942640 AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 09974 80942644 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 09978 80942648 8FAB00AC */  lw      $t3, 0x00AC($sp)           
/* 0997C 8094264C 3C058095 */  lui     $a1, %hi(D_8094AB48)       ## $a1 = 80950000
/* 09980 80942650 24A5AB48 */  addiu   $a1, $a1, %lo(D_8094AB48)  ## $a1 = 8094AB48
/* 09984 80942654 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 09988 80942658 240619AF */  addiu   $a2, $zero, 0x19AF         ## $a2 = 000019AF
/* 0998C 8094265C 0C0346A2 */  jal     Matrix_NewMtx              
/* 09990 80942660 AFA2004C */  sw      $v0, 0x004C($sp)           
/* 09994 80942664 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 09998 80942668 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 0999C 8094266C 24849938 */  addiu   $a0, $a0, 0x9938           ## $a0 = 06019938
/* 099A0 80942670 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 099A4 80942674 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 099A8 80942678 00047100 */  sll     $t6, $a0,  4               
/* 099AC 8094267C 000E7F02 */  srl     $t7, $t6, 28               
/* 099B0 80942680 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 099B4 80942684 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 099B8 80942688 000FC080 */  sll     $t8, $t7,  2               
/* 099BC 8094268C 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 099C0 80942690 3C198016 */  lui     $t9, %hi(gSegments)
/* 099C4 80942694 0338C821 */  addu    $t9, $t9, $t8              
/* 099C8 80942698 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 099CC 8094269C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 099D0 809426A0 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 099D4 809426A4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 099D8 809426A8 00814824 */  and     $t1, $a0, $at              
/* 099DC 809426AC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 099E0 809426B0 03295021 */  addu    $t2, $t9, $t1              
/* 099E4 809426B4 01415821 */  addu    $t3, $t2, $at              
/* 099E8 809426B8 0C034221 */  jal     Matrix_Pull              
/* 099EC 809426BC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 099F0 809426C0 8FAC00AC */  lw      $t4, 0x00AC($sp)           
/* 099F4 809426C4 3C068095 */  lui     $a2, %hi(D_8094AB58)       ## $a2 = 80950000
/* 099F8 809426C8 24C6AB58 */  addiu   $a2, $a2, %lo(D_8094AB58)  ## $a2 = 8094AB58
/* 099FC 809426CC 27A40090 */  addiu   $a0, $sp, 0x0090           ## $a0 = FFFFFFE8
/* 09A00 809426D0 240719B3 */  addiu   $a3, $zero, 0x19B3         ## $a3 = 000019B3
/* 09A04 809426D4 0C031AD5 */  jal     Graph_CloseDisps              
/* 09A08 809426D8 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 09A0C 809426DC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 09A10 809426E0 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 09A14 809426E4 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
/* 09A18 809426E8 03E00008 */  jr      $ra                        
/* 09A1C 809426EC 00000000 */  nop
