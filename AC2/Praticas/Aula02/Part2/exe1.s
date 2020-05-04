    #(1/freq) / (1/(20*10^6))
    .data
    .text
    .globl main
main: li $t0,0
while:li $v0,11 # while (1) {
    syscall #
    #blt $v0,20000000,while; -> 1hz
    #blt $v0,2000000,while   -> 10hz
    blt $v0,4000000,while
    li $v0,12 #
    syscall # resetCoreTimer();
    li $a0,' ' #
    li $v0,3 #
    syscall # putChar(' ');
    addi $t0,$t0,1 #
    move $a0,$t0 #
    li $a1,10 #
    li $v0,6 #
    syscall # printInt(++counter, 10);
    j while # }
    jr $ra # 