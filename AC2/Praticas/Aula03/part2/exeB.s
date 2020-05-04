    .equ SFR_BASE_HI, 0xBF88 # 16 MSbits of SFR area
    .equ TRISE, 0x6100 # TRISE address is 0xBF886100
    .equ PORTE, 0x6110 # PORTE address is 0xBF886110
    .equ LATE, 0x6120 # LATE address is 0xBF886120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB, 0x6060
    .data
    .text
    .globl main
main:lui $t0,SFR_BASE_HI
    lw $t1,TRISE($t0)
    andi $t1,$t1,0xFFF0
    sw $t1,TRISE($t0)
    lw $t1,TRISB($t0)
    ori $t1,$t1,0x000F
    sw $t1,TRISB($t0)
wi: bne $0,$0,w
    li $a0,1000
    jal delay
    lw $t1,LATE($t0)
    addi $t1,$t1,-1
    sw $t1,LATE($t0)
    andi $t2,$t1,0x000F
    bne $t2,0x0000,res
    j wi
res:ori $t1,$t1,0x000F
    j wi    
w:  jr $ra 
    

delay:ble $a0,0,for
    li $v0,12 #
    syscall # resetCoreTimer();
while1:li $v0,11
    syscall    
    blt $v0,20000,while1
    addiu $a0,$a0,-1
    j delay
for:jr $ra

print:li $v0,6
    li $a1,2
    syscall
    li $v0,3
    li $a0,' '
    syscall
    jr $ra