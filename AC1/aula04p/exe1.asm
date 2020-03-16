	.data
str:	.space 20
	.eqv SIZE, 20
	.text
	.globl main
main:	li $t0,0   #t0 -> i
	li $t1,0   #t1 -> num
	li $v0,8
	la $a0,str
	li $a1,SIZE
	syscall
while:	lb $t2,0($a0)
	la $a0,str
	beq $t2,'\0',endW
	blt $t2,'0',endIf
	bgt $t2,'9',endIf
	addiu $t1,$t1,1
endIf:	addiu $t0,$t0,1
	add $a0,$t0,$a0
	j while
endW:	li $v0,1
	move $a0,$t1
	syscall
	jr $ra	