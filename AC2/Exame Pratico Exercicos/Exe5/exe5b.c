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
    int tec = inkey();
    int c = 0;
    int freq = 1;
    int t = 100;
    while(1){
        c++;
        delay(t);
        printInt10(c);
        tec = inkey();
        if(tec == '0'){
            freq = 10 * (1+tec-0x30);
            t = 100;
        }
        if(tec == '1'){
            freq = 10 * (1+tec-0x30);
            t = 50;
        }
        if(tec == '2'){
            freq = 10 * (1+tec-0x30);
            t = 33;
        }
        if(tec == '3'){
            freq = 10 * (1+tec-0x30);
            t = 25;
        }
        if(tec == '\n'){
            printStr(">>");
            printInt10(c);
        }
        putChar('\r');
        if(c == 99){
            c = 0;
        }
    }
    return 1;
}