include(`commons.m4').text:00000000 main:
.text:00000000
.text:00000000 var_10          = -0x10
.text:00000000 var_8           = -8
.text:00000000 var_4           = -4
.text:00000000
; _EN(`function prologue')_RU(`пролог функции'):
.text:00000000                 addiu   $sp, -0x20
.text:00000004                 sw      $ra, 0x20+var_4($sp)
.text:00000008                 sw      $fp, 0x20+var_8($sp)
.text:0000000C                 move    $fp, $sp
.text:00000010                 la      $gp, __gnu_local_gp
.text:00000018                 sw      $gp, 0x20+var_10($sp)
; _EN(`load address of the text string')_RU(`загрузить адрес текстовой строки'):
.text:0000001C                 la      $v0, aADBDCD     # "a=%d; b=%d; c=%d"
; _EN(`set 1st argument of')_RU(`установить первый аргумент') printf():
.text:00000024                 move    $a0, $v0
; _EN(`set 2nd argument of')_RU(`установить второй аргумент') printf():
.text:00000028                 li      $a1, 1
; _EN(`set 3rd argument of')_RU(`установить третий аргумент') printf():
.text:0000002C                 li      $a2, 2
; _EN(`set 4th argument of')_RU(`установить четвертый аргумент') printf():
.text:00000030                 li      $a3, 3
; _EN(`get address of')_RU(`получить адрес') printf():
.text:00000034                 lw      $v0, (printf & 0xFFFF)($gp)
.text:00000038                 or      $at, $zero
; _EN(`call')_RU(`вызов') printf():
.text:0000003C                 move    $t9, $v0
.text:00000040                 jalr    $t9 
.text:00000044                 or      $at, $zero ; NOP
; _EN(`function epilogue')_RU(`эпилог функции'):
.text:00000048                 lw      $gp, 0x20+var_10($fp)
; _EN(`set return value to')_RU(`установить возвращаемое значение в') 0:
.text:0000004C                 move    $v0, $zero
.text:00000050                 move    $sp, $fp
.text:00000054                 lw      $ra, 0x20+var_4($sp)
.text:00000058                 lw      $fp, 0x20+var_8($sp)
.text:0000005C                 addiu   $sp, 0x20
; _EN(`return')_RU(`возврат')
.text:00000060                 jr      $ra
.text:00000064                 or      $at, $zero ; NOP