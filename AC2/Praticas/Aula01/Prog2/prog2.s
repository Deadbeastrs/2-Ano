# int main(void)
# {
# printStr("AC2 – DETPIC32\n"); // system call
# return 0;
# }
 .data
 .text
 .globl main
main: li $s0,0
do: li $v0,2
    syscall
    move $s0,$v0
    beq $s0,'\n',if0
    li $v0,3
    move $a0,$s0
    syscall
if0:bne $s0,'\n',do
 li $v0,0 # return 0;
 jr $ra