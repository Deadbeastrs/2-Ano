	.data
str:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	la $a0,str
	jal strrev
	move $a0,$v0
	li $v0,4
	syscall
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	
strrev:	addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	move $s0,$a0
	move $s1,$a0 # p1
	move $s2,$a0 # p2
w1:	lb $s3,0($s2)
	beq $s3,'\0',endW1
	addiu $s2,$s2,1
	j w1
endW1:	addiu $s2,$s2,-1
w2:	bge $s1,$s2,endW2
	move $a0,$s1
	move $a1,$s2
	jal exchange
	addiu $s1,$s1,1
	addiu $s2,$s2,-1
	j w2
endW2:	move $v0,$s0
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addiu $sp,$sp,16
	jr $ra	

exchange:lb $t0,0($a0) # aux = *c1
	lb $t2,0($a1) # *c2
	sb $t2,0($a0)
	sb $t0,0($a1)
	jr $ra