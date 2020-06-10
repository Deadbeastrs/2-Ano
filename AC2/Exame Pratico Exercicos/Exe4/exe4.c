#include <detpic32.h>
#include <p32mx795f512h.h>
void delay(int ms){
    while(ms != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000){}
        ms = ms - 1;
    }
}

void toDisplay(int value){
    static char flip = 0;
    LATB = LATB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    unsigned int low = display7Scodes[value & 0x0F] << 8;
    unsigned int high = display7Scodes[value >> 4] << 8;
    if(flip == 0){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = LATB | low;
    }else{
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = LATB | high;
    }
    flip = !flip;
}

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

int main(void){
    TRISE = TRISE & 0xFFF0;
    LATE = LATE & 0xFFF0;
    TRISB = TRISB & 0x00FF;
    int num = 0x20;
    while(1){
        int c = inkey();
        if(c == '0'){
            TRISB = TRISB & 0x00FF;
            num = 0x00;
            LATEbits.LATE0 = 1;
        }
        else if(c == '1'){
            TRISB = TRISB & 0x00FF;
            num = 0x01;
            LATEbits.LATE1 = 1;
        }
        else if(c == '2'){
            TRISB = TRISB & 0x00FF;
            num = 0x02;
            LATEbits.LATE2 = 1;
        }
        else if(c == '3'){
            TRISB = TRISB & 0x00FF;
            num = 0x03;
            LATEbits.LATE3 = 1;
        }
        else if(c != 0){
            TRISB = TRISB & 0x00FF;
            LATE = LATE | 0xF;
            int d = 0;
            while(d < 1000){
                toDisplay(0xFF);
                delay(1);
                d++;
            }
            d = 0;
            LATE = LATE & 0xFFF0;
            TRISB = TRISB | 0xFF00;
        }
        toDisplay(num);
        delay(10);
    }
    return 1;
}
