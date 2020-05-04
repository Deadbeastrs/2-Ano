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
    LATE = LATE & 0xF0;
    TRISE = TRISE & 0xF0;  
    while (1)
    {
        LATE = LATE + 1;
        printf("contador : %d",LATE);
        delay(500); // half period = 0.5s
        if((LATE & 0x0F) == 15){
            LATE = LATE & 0xF0;
            delay(500);
        }
    }
    return 0;
}
