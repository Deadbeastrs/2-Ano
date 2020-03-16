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
    lw $t3,PORTB($t0)
    andi $t4,$t3,0x0008 # isolar o bit de entrada
    lw $t1,LATE($t0)
    andi $t2,$t1,0x000F # isolar os 4 bits dos leds
    beq $t4,0x0008,els # dar check ao botao
    bne $t2,0x0000,res1 #check ao contrario reset
    ori $t1,$t1,0x000F #reset contrario
    sw $t1,LATE($t0) 
    j wi
res1:addi $t1,$t1,-1 # adicionar -1 caso nao seja reset contrario
    j end
els:bne $t2,0x000F,res # check reset normal
    andi $t1,$t1,0xFFF0 # reset normal
    sw $t1,LATE($t0)
    j wi
res:addi $t1,$t1,1 # adicionar 1 caso nao reset normal
end:move $a0,$t1
    jal print
    sw $t1,LATE($t0)
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