#include <detpic32.h>
#include <p32mx795f512h.h>

int main(void){
    T3CONbits.TCKPS = 7;//Prescaler
    PR3 = 39063;        //PRT3
    TMR3 = 0;           //Reset ao timer
    T3CONbits.TON = 1;  //Ligar o timer
    while(1){
        while(IFS0bits.T3IF == 0);
        putChar('.');
        IFS0bits.T3IF = 0;
    }
    return 0;
}
