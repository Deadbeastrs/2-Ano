    .data
    .text
    .globl main
main:addiu $sp,$sp,-4
	sw $ra,0($sp)  
    li $t0,0
while:li $a0,1000
    jal delay
    li $a0,' ' #
    li $v0,3 #
    syscall # putChar(' ');
    addi $t0,$t0,1 #
    move $a0,$t0 #
    li $a1,10 #
    li $v0,6 #
    syscall # printInt(++counter, 10);
    j while # }
    lw $ra,0($sp)
	addiu $sp,$sp,4
    jr $ra # 

delay:ble $a0,0,for
    li $v0,12 #
    syscall # resetCoreTimer();
while1:li $v0,11
    syscall    
    blt $v0,20000,while1
    addiu $a0,$a0,-1
    j delay
for:jr $ra
