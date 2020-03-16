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
    andi $t1,$t1,0xFFFE
    sw $t1,TRISE($t0)
    lw $t1,TRISB($t0)
    ori $t1,$t1,0x0001
    sw $t1,TRISB($t0)
wi: bne $0,$0,w
    lw $t1,PORTB($t0)
    andi $t2,$t1,0x0001
    lw $t1,LATE($t0)
    beq $t2,1,one
    #beq $t2,0,one
    andi $t1,$t1,0xFFFE
    j zero;
one:ori $t1,$t1,0x0001
zero:sw $t1,LATE($t0)
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
