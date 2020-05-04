#include <detpic32.h>
#include <p32mx795f512h.h>

void _int_(12) isr_T3(void){
    putChar('.');
    IFS0bits.T3IF = 0;
}

int main(void){
    T3CONbits.TCKPS = 7;//Prescaler
    PR3 = 39063;        //PRT3
    TMR3 = 0;           //Reset ao timer
    IPC3bits.T3IP = 2;  //Prioridade de interrupção
    IEC0bits.T3IE = 1;  //Ligar o as interrupções no Timer3
    IFS0bits.T3IF = 0;  //Reset a flag de interrupção
    T3CONbits.TON = 1;  //Ligar o timer
    EnableInterrupts(); 
    while(1);
    return 0;
}
