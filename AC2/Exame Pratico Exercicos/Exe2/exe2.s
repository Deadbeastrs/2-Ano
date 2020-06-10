    .equ TRISE, 0x6100 # TRISE address is 0xBF886100
    .equ PORTE, 0x6110 # PORTE address is 0xBF886110
    .equ LATE, 0x6120 # LATE address is 0xBF886120
    .data
    .text
    .globl main

main: lui $t0,0xBF88
      lw $t1,0x6100($t0)
      lui $t4,0x0131
      ori $t4,$t4,0x2D00
      andi $t1,$t1,0xFFF0
      sw $t1,0x6100($t0)
      lw $t2,0x6120($t0)
      bne $0,$0,end
      li $v0,2
      syscall
      bne $v0,'0',end0
      ori $t2,$t2,0x0001
      j end4
end0: bne $v0,'1',end1
      ori $t2,$t2,0x0002
      j end4
end1: bne $v0,'2',end2
      ori $t2,$t2,0x0004
      j end4
end2: bne $v0,'3',end3
      ori $t2,$t2,0x0008
      j end4
end3: beq $v0,$0,end4
      li $v0,12
      syscall
      ori $t2,$t2,0x000F
      sw $t2,0x6120($t0)
w1:   li $v0,11
      syscall
      ble $v0,$t4,w1
      andi $t2,$t2,0xFFF0
end4: sw $t2,0x6120($t0)
      j main
end:  jr $ra