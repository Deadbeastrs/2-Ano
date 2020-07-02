#include <detpic32.h>

int main(void){
    TRISB = TRISB | 0x000F;
    TRISE = TRISE & 0xFFF0;
    while(1){
        int val0 = (PORTB & 0x0001) << 3;
        int val1 = (PORTB & 0x0002) << 1;
        int val2 = (PORTB & 0x0004) >> 1;
        int val3 = (PORTB & 0x0008) >> 3;
        int val = val0 | val1 | val2 | val3;
        LATE = LATE & 0xFFF0; 
        LATE = LATE | val;
    }
    return 1;
}