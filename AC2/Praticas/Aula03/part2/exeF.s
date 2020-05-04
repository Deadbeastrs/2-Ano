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
    lw $t1,LATE($t0)
    andi $t1,$t1,0xFFF0
    sw $t1,LATE($t0)
wi: bne $0,$0,w
    li $a0,1000
    jal delay
    lw $t1,LATE($t0)
    lw $t4,PORTB($t0)
    andi $t5,$t4,0x0004
    bne $t5,0x0004,contr
    srl $t2,$t1,3			#da shift de 3 para a ultimo bit set o + sig
    andi $t2,$t2,0x0001     #limpa info desnecessária para so haver info do 1 bit
    xori $t2,$t2,0x0001		#nega esse bit
	sll $t1,$t1,1			#Da espaço para a entrada do novo bit		
    or $t1,$t1,$t2          #Mete o bit negado
    j done
contr:andi $t2,$t1,0x0001     #limpa info desnecessária para so haver info do 1 bit
    xori $t2,$t2,0x0001		#nega esse bit
    sll $t2,$t2,3           #mete o bit negado na posicao 4
    andi $t3,$t1,0x000E     # tira os bits 
    srl $t3,$t3,1           # posiciona os bits no sitio certo
    srl $t1,$t1,4           #
	sll $t1,$t1,4			#Da espaço para a entrada do novo bit  cc c		
    or $t1,$t1,$t2          #Mete o bit negado
    or $t1,$t1,$t3
done:sw $t1,LATE($t0)
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