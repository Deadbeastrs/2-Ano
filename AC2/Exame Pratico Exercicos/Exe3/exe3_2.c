#include <detpic32.h>
#include <p32mx795f512h.h>
int delay(int ms){
    while(ms != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000){}
        ms = ms - 1;
    }
}

int main(){
    TRISE = TRISE & 0xFFF0;
    LATE = LATE & 0xFFF0;
    while(1){
        int c = getChar();
        if(c == 0x30){
            LATEbits.LATE0 = 1;
        }
        else if(c == 0x31){
            LATEbits.LATE1 = 1;
        }
        else if(c == 0x32){
            LATEbits.LATE2 = 1;
        }
        else if(c == 0x33){
            LATEbits.LATE3 = 1;
        }
        else{
            LATE = LATE | 0xF;
            delay(1000);
            LATE = LATE & 0xFFF0;
        }
    }
    return 1;
}