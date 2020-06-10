#include <detpic32.h>
#include <p32mx795f512h.h>
int main(){
    TRISB = TRISB | 0x000F;
    TRISE = TRISE & 0xFFF0;
    while(1){
        int val = PORTB & 0xF;
        LATE = (4 >> LATE) << 4;
        LATE = LATE | val; 
    }
    return 0;
}
