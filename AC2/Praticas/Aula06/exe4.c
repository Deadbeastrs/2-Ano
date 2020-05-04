#include <detpic32.h>
#include <p32mx795f512h.h>

volatile unsigned char voltage = 0;

void delay(int val)
{
    while (val != 0)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
        {
        }
        val = val - 1;
    }
}

void send2displays(unsigned char value)
{
    LATB = LATB & 0x00FF;
    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    static unsigned char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0;
    unsigned int low = display7Scodes[value & 0x0F] << 8;
    unsigned int high = display7Scodes[value >> 4] << 8;
    if (displayFlag == 0)
    {
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        LATB = LATB | low;
        if(value % 2 != 0){
            LATBbits.LATB15 = 1;
        }else{
            LATBbits.LATB15 = 0;
        }
    }
    else
    {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        LATB = LATB | high;
        if(value % 2 == 0){
            LATBbits.LATB15 = 1;
        }else{
            LATBbits.LATB15 = 0;
        }
    }
    displayFlag = !displayFlag;
}

unsigned char toBcd(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

int main(void)
{
    TRISEbits.TRISE0 = 0;
    TRISBbits.TRISB4 = 1;     // Porta Desligar volatile int aux; int aux;
    AD1PCFGbits.PCFG4 = 0;    //Porta Ligar Ler Analogico
    AD1CHSbits.CH0SA = 4;     //POrta a ir buscar para o multiplexer analogico
    AD1CON1bits.CLRASAM = 1;  // Precisamos de dar ordem de inicio
    AD1CON1bits.SSRC = 7;     // Trigger para inicio da conversão
    AD1CON3bits.SAMC = 32;    // Duração do tempo de amostragem
    AD1CON2bits.SMPI = 4 - 1; // Numero de BUFx que vai usar (nº conversoes)
    IPC6bits.AD1IP = 2;       //Prioridade da interrupção A/D
    IEC1bits.AD1IE = 1;       // enable A/D interrupts 
    IFS1bits.AD1IF = 0;       // clear A/D interrupt flag 
    AD1CON1bits.ON = 1;       //Ligar a conversor A/D
    EnableInterrupts();
    AD1CON1bits.ASAM = 1;
    int i = 0;
    while (1)
    {
        delay(10);
        if(i++ == 25){
            AD1CON1bits.ASAM = 1;
            i=0;
        }
        send2displays(toBcd(voltage));
    }
    return 0;
}


void _int_(27) isr_adc(void) { 
    int *p = (int *)(&ADC1BUF0);
    int val;
    for (; p <= (int *)(&ADC1BUFF); p += 4)
    {
        val = *p + val;
    }
    voltage = ((val / 4) * 33) / 1023;
    IFS1bits.AD1IF = 0; // Reset AD1IF flag
 }

