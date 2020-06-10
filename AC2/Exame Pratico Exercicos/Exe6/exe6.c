#include <detpic32.h>
#include <p32mx795f512h.h>
#include <math.h>

static volatile int mult;
volatile int d = 0;
volatile int c = 0;

void delay(int c){
    while(c != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000){}
        c--;
    }
}

void _int_(12) isr_timer3(void)
 {
    if(d == mult){
        printInt10(c);
        putChar('\r');
        if(c == 99){
            c = 0;
        }
        c++;
        d = 0;
    }
    d++;
    IFS0bits.T3IF = 0; // Reset AD1IF flag
 } 


int main(void){
    TMR3 = 0; // Reset timer T2 count register
    PR3 = 62500;
    EnableInterrupts();
    T3CONbits.TCKPS = 3; // 1:32 prescaler (i.e Fout_presc = 625 KHz)
    IPC3bits.T3IP = 5; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T2 interrupts
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag 
    T3CONbits.TON = 1; // Enable timer T2 (must be the last command of the
    mult = 4;
    // timer configuration sequence)
    while(1){
        int tec = inkey();
        if(tec == '0'){
            mult = 4;
            d = 0;
        }
        if(tec == '1'){
            mult = 3;
            d = 0;
        }
        if(tec == '2'){
            mult = 2;
            d = 0;
        }
        if(tec == '3'){
            mult = 1;
            d = 0;
        }
        if(tec == '\n'){
            printStr(">>");
            printInt10(c);
        }
    }
    return 1;
}
