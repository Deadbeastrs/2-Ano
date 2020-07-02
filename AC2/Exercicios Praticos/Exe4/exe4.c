#include <detpic32.h>

static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

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

int main(void){
    int cond = 1;
    int value = 0;
    TRISE = TRISE & 0xFFF0;
    LATE = LATE & 0xFFF0;
    while(1){
        int key = inkey();
        if(key == '0'){
            LATE = LATE | 0x0001;
            value = 0;
            cond = 1;
        }
        else if(key == '1'){ 
            LATE = LATE | 0x0002;
            value = 1;
            cond = 1;
        }
        else if(key == '2'){
            LATE = LATE | 0x0004;
            value = 2;
            cond = 1;
        }
        else if(key == '3'){
            LATE = LATE | 0x0008;
            value = 3;
            cond = 1;
        }
        else if(key != 0){
            int counter = 0;
            LATE = LATE | 0x000F;
            while(counter < 1000){
                toDisplay(0xFF);
                delay(1);
                counter++;
            }
            LATDbits.LATD5 = 1;
            LATDbits.LATD6 = 1;
            LATE = LATE & 0xFFF0;
            cond = 0;
        }
        if(cond == 1){
            toDisplay(value);
        }
        delay(10);
    }
}