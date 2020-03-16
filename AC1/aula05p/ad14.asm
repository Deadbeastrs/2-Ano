	.data
str:	.asciiz "Nr. de parametros: "
str1:	.asciiz "\nP"
str2:	.asciiz ": "
	.text
	.globl main
main:	li $v0,4
	li $s3,0 # i
	move $s0,$a0 #a0
	move $s1,$a1 #a1
	la $a0,str
	syscall
	li $v0,1
	move $a0,$s0
	syscall
f:	bge $s3,$s0,eF
	la $a0,str1
	li $v0,4
	syscall
	li $v0,1
	move $a0,$s3
	syscall
	li $v0,4
	la $a0,str2
	syscall
	sll $s4,$s3,2
	addu $s4,$s4,$s1
	lw $a0,0($s4)
	syscall
	addiu $s3,$s3,1
	j f
eF:	li $v0,0
	jr $ra
	