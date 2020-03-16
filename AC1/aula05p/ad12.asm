	.data
	.eqv SIZE,3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
str4:	.asciiz "\n"
arr:	.word str1,str2,str3
	.text
	.globl main
main:	li $t0,0 # $t0 -> i
	la $t1,arr
for:	bge $t0,SIZE,eFor
	sll $t3,$t0,2 # i + 4
	add $t2,$t1,$t3 # &arr + i + 4
	lw $a0,0($t2)
	li $v0, 4
	syscall
	la $a0,str4
	syscall
	addiu $t0,$t0,1
	j for
eFor:	jr $ra
	
