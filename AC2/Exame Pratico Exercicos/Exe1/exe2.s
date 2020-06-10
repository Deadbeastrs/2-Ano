    .equ TRISE, 0x6100 # TRISE address is 0xBF886100
    .equ PORTE, 0x6110 # PORTE address is 0xBF886110
    .equ LATE, 0x6120 # LATE address is 0xBF886120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB, 0x6060
    .data
    .text
    .globl main

main: lui $t0,0xBF88
      lw $t1,0x6040($t0)
      ori $t1,$t1,0x000F
      sw $t1,0x6040($t0)
      lw $t2,0x6100($t0)
      andi $t2,$t2,0xFFF0
      sw $t2,0x6100($t0)
      bne $0,$0,end
      lw $t3,0x6050($t0)
      lw $t5,0x6120($t0)
      srl $t5,$t5,4
      sll $t5,$t5,4
      li $t4,0
      andi $t4,$t3,0x0008
      srl $t4,$t4,3
      or $t5,$t5,$t4
      li $t4,0
      andi $t4,$t3,0x0004
      srl $t4,$t4,1
      or $t5,$t5,$t4
      li $t4,0
      andi $t4,$t3,0x0002
      sll $t4,$t4,1
      or $t5,$t5,$t4
      li $t4,0
      andi $t4,$t3,0x0001
      sll $t4,$t4,3
      or $t5,$t5,$t4
endW: sw $t5,0x6120($t0)
      j main
end:  jr $ra  
# why no work?