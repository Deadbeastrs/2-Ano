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
    LATB = LATB & 0x00FF;
    TRISB = TRISB & 0x00FF;
    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 1;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    unsigned char tec;
    unsigned int val;
    while (1)
    {   
        tec = getChar();
        if(((tec >=0x61) & (tec <= 0x67))  | (tec == 0x2E)){
            val = tec << 8;
            LATB = val | (LATB & 0x00FF);
        }
    }
    return 0;
}
