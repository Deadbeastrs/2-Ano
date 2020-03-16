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
    unsigned int display7Scodes[] = {0x3F, 0x06, 0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E,0x79,0x71};
    LATB = LATB & 0x80FF;
    TRISB = TRISB & 0x80FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    unsigned int val;
    while (1)
    {   
        val = PORTB & 0x000F; 
        LATB = display7Scodes[val] << 8;
    }
    return 0;
}
