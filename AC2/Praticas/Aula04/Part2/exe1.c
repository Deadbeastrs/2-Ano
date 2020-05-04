#include <detpic32.h>
#include <p32mx795f512h.h>

void delay(int val){
    while(val != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000 ){

        }
        val = val - 1;
    }
}

void send2displays(unsigned char value){
    LATB = LATB & 0x00FF;
    TRISB = TRISB & 0x80FF;
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    LATB = LATB | display7Scodes[value & 0x0F]<<8;
    delay(100);
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;
    LATB = LATB & 0x00FF;
    LATB = LATB | display7Scodes[value >> 4]<<8;
    delay(100);
    //LATB = LATB | display7Scodes[c >> 4];
}// O Codigo do exe3 e bues de melhor e faz +/- a mesma coisa


int main(void)
{   
    int c = 0;
    while (1)
    {   
        send2displays(c);
        delay(200);
        if(c == 0xFF){
            c = 0;
        }
        c = c + 1;
    }
    return 0;
}
