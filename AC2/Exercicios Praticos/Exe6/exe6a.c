#include <detpic32.h>

static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
volatile int cont = 0;

void delay(int c){
    while(c != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
        c--;
    }
}

void toDisplay(int c){
    static int flip = 0;
    TRISB = TRISB & 0x00FF;
    LATB = LATB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    int low = display7Scodes[c & 0x0F] << 8;
    int high = display7Scodes[c >> 4] << 8;
    if(flip == 0){
        LATB = LATB | low;
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
    }else{  
        LATB = LATB | high;
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
    }
    flip = !flip;
}

void _int_(12) isr_T3(void){
    cont++;
    IFS0bits.T3IF = 0;
} 

int main(void){
    int freq = 10;
    T3CONbits.TCKPS = 5; // 1:32 prescaler (i.e Fout_presc = 625 KHz)
    PR3 = 62499; // Fout = 20MHz / (32 * (62499 + 1)) = 10 Hz
    TMR3 = 0; // Reset timer T2 count register
    T3CONbits.TON = 1; // Enable timer T2 (must be the last command of the
    IPC3bits.T3IP = 4; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T2 interrupts
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag 
    while(1){
        int key = inkey();
        putChar('\r');
        printInt10(cont);
        if(key >= '0' && key <= '4'){
            freq = 10 * (1+(key-'0'));
        }else if(key == '\n'){
            printStr(">>");
            printInt10(cont);
        }
        int temp = 1000/freq;
        delay(temp);
        if(cont == 100){
            cont = 0;
            printStr("  ");
            printStr(">>");
            putChar('\r');
        }
    }
}
