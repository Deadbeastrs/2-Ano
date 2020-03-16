    .data
    .text
    .globl main
main: lui $s1,0xBF88
w:  lb $s2,0x6050($s1)
    li $v0,6
    andi $s2,$s2,0x000F
    move $a0,$s2
    li $a1,0x00040002
    syscall
    li $a0,' ' #
    li $v0,3 #
    syscall # putChar(' ');
    addi $s2,$s2,1
    li $s4,1000
    div $s3,$s4,$s2
    move $a0,$s3
    jal delay
    j w
    jr $ra

delay:ble $a0,0,for
    li $v0,12 #
    syscall # resetCoreTimer();
while1:li $v0,11
    syscall    
    blt $v0,20000,while1
    addiu $a0,$a0,-1
    j delay
for:jr $ra
