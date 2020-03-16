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

int main(void)
{   
    LATB = LATB & 0x80FF;
    TRISB = TRISB & 0x80FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    unsigned int segment;
    int i;
    while (1)
    {
        LATDbits.LATD5 = !LATDbits.LATD5;
        LATDbits.LATD6 = !LATDbits.LATD6;
        segment = 1;
        segment = segment << 8;
        for(i=0;i<7;i++){
            LATB = LATB & 0x00FF;
            LATB = LATB | segment;
            segment = segment << 1;
            delay(5);
        }
    }
    return 0;
}
