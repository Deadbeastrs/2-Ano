#include <detpic32.h>
#include <p32mx795f512h.h>
int delay(int c){
    while(c != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000){}
        c--;
    }
}


int main(void){
    int c = 0;
    while(1){
        c++;
        delay(100);
        printInt10(c);
        putChar('\r');
        if(c == 99){
            c = 0;
        }
    }
    return 1;
}