	.data
str:	.asciiz "Nr. de parametros: "
str1:	.asciiz "\nP: "
	.text
	.globl main
main:	move $s0,$a0
	move $s1,$a1
	li $v0,4
	la $a0,str
	syscall
	li $v0,1
	move $a0,$s0
	syscall
	sll $s3,$s0,2
	addu $s4,$s3,$s1
f:	bge $s1,$s4,eF
	lw $s2,0($s1)
	la $a0,str1
	li $v0,4
	syscall
	move $a0,$s2
	syscall
	addiu $s1,$s1,4
	j f
eF:	li $v0,0
	jr $ra
	