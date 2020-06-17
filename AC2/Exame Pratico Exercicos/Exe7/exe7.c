#include <detpic32.h>
#include <p32mx795f512h.h>

volatile int c;

void delay(unsigned int ms){
    while(ms != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
        ms--;
    }
}

void toDisplay(char value){
    LATB = LATB & 0x00FF;
    static int flip = 0;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    unsigned int low = display7Scodes[value & 0x0F] << 8;
    unsigned int high = display7Scodes[value >> 4] << 8;
    if(flip == 1){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = LATB | low;
    }else {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = LATB | high;
    }
    flip = !flip;
}

void _int_(27) isr_adc(void) // Replace VECTOR by the A/D vector
 {  
    c = ADC1BUF0;
    AD1CON1bits.ASAM = 1;
    IFS1bits.AD1IF = 0; // Reset AD1IF flag
 }

int main(void){
    EnableInterrupts();
    TRISB = TRISB | 0x001F;
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
    // This must the last command of the A/D
    // configuration sequence 
    AD1CON1bits.ASAM = 1;
    IPC6bits.AD1IP = 5;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;
    double freq;
    while(1){
        freq = 10 + (c*10 / 255);
        int lo = 10000/freq;
        delay(lo);
        printStr("RB3: ");
        printInt10(PORTBbits.RB3);
        putChar(',');
        printStr("RB2: ");
        printInt10(PORTBbits.RB2);
        putChar(',');
        printStr("RB1: ");
        printInt10(PORTBbits.RB1);
        putChar(',');
        printStr("RB0: ");
        printInt10(PORTBbits.RB0);
        putChar('\n');
    }
    return 1;
}
