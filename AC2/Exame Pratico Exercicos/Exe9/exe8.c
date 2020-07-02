#include <detpic32.h>
#include <p32mx795f512h.h>
#define BUF_SIZE 16
#define INDEX_MASK 15

static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
volatile int c;
volatile int freq;

void delay(unsigned int ms){
    while(ms != 0){
        resetCoreTimer();
        while(readCoreTimer() < 20000);
        ms--;
    }
}

int toBcd(int c){
    return ((c / 10) << 4) + (c % 10);
}

void toDisplay(int c){
    static int flag = 0;
    TRISB = TRISB & 0x00FF;
    LATB = LATB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    int high = display7Scodes[c & 0x0F] << 8;
    int low = display7Scodes[c >> 4] << 8;
    if(flag == 0){
        LATB = LATB | high;
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
    }else{
        LATB = LATB | low;
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
    }
    flag = !flag;
}


void putc(char byte2send)
{
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte2send;
}

char getc(void)
{   
    while(U1STAbits.URXDA == 0);
    if(U1STAbits.OERR == 1){
        U1STAbits.OERR = 0;
    }
    return U1RXREG;
} 

char putS(char* string)
{   
    while(*string != '\0'){
        putc(*string);
        string++;
    }
} 

int toBcd(int value)
{
    return ((value / 10) << 4) + (value % 10);
}

void toDisplay(int value){
    TRISB = TRISB & 0x00FF;
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

 void _int_(8) isr_timer2(void) // Replace VECTOR by the A/D vector
 {  
    toDisplay(toBcd(freq));
    IFS0bits.T2IF = 0; // Reset AD1IF flag
 }

 void _int_(24) isr_UART1(void) // Replace VECTOR by the A/D vector
 {  
    if(IFS0bits.U1RXIF == 1){
        putChar(U1RXREG);
        IFS0bits.U1RXIF = 0;
    }
    if(IFS0bits.U1TXIF == 1){
        
    }
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
    AD1CON2bits.SMPI = 4-1; // Interrupt is generated after XX samples
    // (replace XX by the desired number of
    // consecutive samples)
    AD1CHSbits.CH0SA = 4; // replace x by the desired input
    // analog channel (0 to 15)
    AD1CON1bits.ON = 1; // Enable A/D converter
    // This must the last command of the A/D
    // configuration sequence 
    
    AD1CON1bits.ASAM = 1;

    T2CONbits.TCKPS = 3;
    PR2 = 49999;
    TMR2 = 0;
    T2CONbits.TON = 1;
    IPC2bits.T2IP = 2;
    IEC0bits.T2IE = 1;
    IFS0bits.T2IF = 0;

    IPC6bits.AD1IP = 5;
    IEC1bits.AD1IE = 1;
    IFS1bits.AD1IF = 0;

    U1BRG = ((20000000 + 8 * 1200) / (16 * 1200)) - 1;
    //U1BRG = ((20*(pow(10,6))+8*115200) / (16*115200))-1;  // Registo UxBRG para 115200 bps
    U1MODEbits.BRGH = 0;
    U1MODEbits.PDSEL = 00;
    U1MODEbits.STSEL = 0;
    U1STAbits.UTXEN = 1;
    U1STAbits.URXEN = 1;

    U1STAbits.UTXSEL = 00;
    U1STAbits.URXISEL = 00;
    IPC6bits.U1IP = 4;
    IEC0bits.U1RXIE = 1;
    IEC0bits.U1TXIE = 0;

    U1MODEbits.ON = 1;

    IFS0bits.U1RXIF = 0;
    IFS0bits.U1TXIF = 0;

    while(1){
        freq = 10 + (c*10 / 255);
        int ll = 10000/freq;
        delay(ll);
        putS("RB3: ");
        printInt10(PORTBbits.RB3);
        putc(',');
        putS("RB2: ");
        printInt10(PORTBbits.RB2);
        putc(',');
        putS("RB1: ");
        printInt10(PORTBbits.RB1);
        putc(',');
        putS("RB0: ");
        printInt10(PORTBbits.RB0);
        putc('\n');
    }
    return 1;
}