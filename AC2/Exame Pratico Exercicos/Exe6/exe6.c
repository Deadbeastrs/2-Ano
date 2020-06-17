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

void toDisplay(char value){
    LATB = LATB & 0x00FF;
    static int flip = 0;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    unsigned int low = display7Scodes[value & 0x0F] << 8;
    unsigned int high = display7Scodes[value >> 4] << 8;
    if(flip == 1){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = LATB | low;
    }else {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = LATB | high;
    }
    flip = !flip;
}

void _int_(12) isr_timer3(void)
 {
    if(d == mult){
        putChar('\r');
        printInt10(c);
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
    PR3 = 62499;
    EnableInterrupts();
    T3CONbits.TCKPS = 3; // 1:32 prescaler (i.e Fout_presc = 625 KHz)
    IPC3bits.T3IP = 5; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T2 interrupts
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag 
    T3CONbits.TON = 1; // Enable timer T2 (must be the last command of the
    mult = 4;
    int value1 = 0;
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
            TRISB = TRISB & 0x00FF;
            printStr(">>");
            printInt10(c);
            value1 = c;
        }
        delay(20);
        toDisplay(value1);
    }
    return 1;
}
