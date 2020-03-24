#include <detpic32.h>
#include <p32mx795f512h.h>

void setPWM(int dutyCycle){
    OC1RS = (int) (6250 * dutyCycle) / 100;
}

int main(void){
    T3CONbits.TCKPS = 5;//Prescaler T3
    PR3 = 6249;        //PRT3 a 100hz
    TMR3 = 0;           //Reset ao timer T3
    IFS0bits.T3IF = 0;  //Reset a flag de interrupção T3
    T3CONbits.TON = 1;  //Ligar o timer T3

    OC1CONbits.OCM = 6;   //PWN no OCx
    OC1CONbits.OCTSEL =1; //Usar o timer T3 -> 1, o T2 -> 0
    setPWM(80);
    OC1CONbits.ON = 1;
    while(1);
    return 0;
}
