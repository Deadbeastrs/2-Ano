	.data
	.eqv SIZE,3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "-"
str5:	.asciiz "\nString #"
str6:	.asciiz  ": "
arr:	.word str1,str2,str3
	.text
	.globl main
main:	la $t0,arr   # &arr
	li $t1,0     # i
for:	bge $t1,SIZE,endF
	la $a0,str5
	li $v0,4
	syscall
	li $v0,1
	move $a0,$t1
	syscall
	li $v0,4
	la $a0,str6
	syscall
	li $t2,0    #j
	sll $t3,$t1,2
	add $t3,$t3,$t0
	lw $t4,0($t3)   # array[i]
while:	add $t6,$t4,$t2
	lb $t5,0($t6)   # array[i][j]
	beq $t5,'\0',eW
	li $v0,11
	move $a0,$t5
	syscall
	li $v0,4
	la $a0,str4
	syscall
	addiu $t2,$t2,1
	j while
eW:	addiu $t1,$t1,1	
	j for
endF:	jr $ra

	