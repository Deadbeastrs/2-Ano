#include <detpic32.h>
#include <p32mx795f512h.h>

volatile int i = 0;

void _int_(4) isr_T1(void){
    putChar('1');
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
    putChar('3');
    IFS0bits.T3IF = 0;
}

int main(void){
    T3CONbits.TCKPS = 5;//Prescaler T3
    T1CONbits.TCKPS = 7;//Prescaler T1
    //PR3 = 62500;        //PRT3 a 10hz
    PR3 = 31250;        //PRT3 a 20hz
    PR1 = 39063;        //PRT1
    TMR3 = 0;           //Reset ao timer T3
    TMR3 = 1;           //Reset ao timer T1
    IPC3bits.T3IP = 2;  //Prioridade de interrupção T3
    IPC1bits.T1IP = 2;  //Prioridade de interrupção T1
    IEC0bits.T3IE = 1;  //Ligar o as interrupções no T3
    IEC0bits.T1IE = 1;  //Ligar o as interrupções no T1
    IFS0bits.T3IF = 0;  //Reset a flag de interrupção T3
    IFS0bits.T1IF = 0;  //Reset a flag de interrupção T1
    T3CONbits.TON = 1;  //Ligar o timer T3
    T1CONbits.TON = 1;  //Ligar o timer T1
    EnableInterrupts(); 
    while(1);
    return 0;
}
