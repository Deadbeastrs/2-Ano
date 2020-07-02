#include <detpic32.h>

static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

volatile int freq = 0;

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

void configADC(){
    TRISBbits.TRISB4 = 1; // RBx digital output disconnected
    AD1PCFGbits.PCFG4= 0; // RBx configured as analog input (AN4)
    AD1CON1bits.SSRC = 7; // Conversion trigger selection bits: in this
    // mode an internal counter ends sampling and
    // starts conversion
    AD1CON1bits.CLRASAM = 1; // Stop conversions when the 1st A/D converter
    // interrupt is generated. At the same time,
    // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16; // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 1-1; // Interrupt is generated after XX samples
    // (replace XX by the desired number of
    // consecutive samples)
    AD1CHSbits.CH0SA = 4; // replace x by the desired input
    // analog channel (0 to 15)
    AD1CON1bits.ON = 1; // Enable A/D converter

    IPC6bits.AD1IP = 5;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;
}

void _int_(27) isr_adc(void){
    printInt10(ADC1BUF0);
    putChar('\n');
    /*freq = 10000/val;*/
    AD1CON1bits.ASAM = 1; 
    IFS1bits.AD1IF = 0;
} 

int main(void){
    EnableInterrupts();
    int cont = 0;
    int ver = 0;
    TRISB = TRISB | 0x000F;
    configADC();
    AD1CON1bits.ASAM = 1;
    while(1){ 
        printStr("RB3: ");
        printInt10((PORTB & 0x0008) >> 3);
        putChar(',');
        printStr("RB2: ");
        printInt10((PORTB & 0x0004) >> 2);
        putChar(',');
        printStr("RB1: ");
        printInt10((PORTB & 0x0002) >> 1);
        putChar(',');
        printStr("RB0: ");
        printInt10(PORTB & 0x0001);
        putChar('\r');
        printInt10(freq);
        putChar('\n');
        delay(freq);
    }
}
