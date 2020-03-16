	.data
str:	.asciiz "2016 e 2020 sao anos bissextos"
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,str
	jal atoi
	move $a0,$v0
	li $v0,1
	syscall
	li $v0,0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	

atoi:	li $t0,0 # digit
	li $t1,0 # res
w:	lb $t2,0($a0)
	blt $t2,'0',eW
	bgt $t2,'9',eW
	sub $t0,$t2,'0'
	addiu $a0,$a0,1
	mul $t4,$t1,10
	add $t1,$t4,$t0
	j w
eW:	move $v0,$t1
	jr $ra
	
