#include <detpic32.h>

void delay(int c){
    while(c != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
        c--;
    }
}

int main(void){
    TRISE = TRISE & 0xFFF0;
    LATE = LATE & 0xFFF0;
    while(1){
        int key = inkey();
        if(key == '0'){
            LATE = LATE | 0x0001;
        }
        else if(key == '1'){ 
            LATE = LATE | 0x0002;
        }
        else if(key == '2'){
            LATE = LATE | 0x0004;
        }
        else if(key == '3'){
            LATE = LATE | 0x0008;
        }
        else if(key != 0){
            LATE = LATE | 0x000F;
            delay(1000);
            LATE = LATE & 0xFFF0;
        }
    }
}