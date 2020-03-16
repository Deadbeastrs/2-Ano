	.data
str:	.space 33
str1:	.asciiz "\n"
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	li $s0,0 # val
do1:	li $v0,5
	syscall
	move $s1,$v0
	move $a0,$s1
	li $a1,2
	la $a2,str
	jal itoa
	move $a0,$v0
	li $v0,4
	syscall
	la $a0,str1
	syscall
	move $a0,$s1
	li $a1,8
	la $a2,str
	jal itoa
	move $a0,$v0
	li $v0,4
	syscall
	la $a0,str1
	syscall
	move $a0,$s1
	li $a1,16
	la $a2,str
	jal itoa
	move $a0,$v0
	li $v0,4
	syscall
	la $a0,str1
	syscall
	
	bne $s0,0,do1
	li $v0,0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	

itoa:	addiu $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	move $s0,$a2 # &P
	move $s1,$a0 # n
	move $s2,$a1 # b
do:	remu $a0,$s1,$a1 # digit
	divu $s1,$s1,$a1
	jal toascii
	sb $v0,0($s0)
	addiu $s0,$s0,1
	bgt $s1,0,do
	li $t0,'\0'
	sb $t0,0($s0)
	move $a0,$a2
	jal strrev
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
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
	
	
	
toascii:li $t0,'0'
	move $t1,$a0
	addu $t1,$t1,$t0
	ble $t1,'9',eIf3
	addiu $t1,$t1,7
eIf3:	move $v0,$t1
	jr $ra