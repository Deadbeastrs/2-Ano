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

void _int_(4) isr_T1(void){
    AD1CON1bits.ASAM = 1; // Comemçar conversao A/D
    IFS0bits.T1IF = 0;
}

void _int_(12) isr_T3(void){
    send2displays(toBcd(voltage));
    IFS0bits.T3IF = 0;
}

void _int_(27) isr_adc(void) { 
    int *p = (int *)(&ADC1BUF0);
    int val = 0;
    for (; p <= (int *)(&ADC1BUFF); p += 4)
    {
        val = *p + val;
    }
    voltage = ((val / 4) * 33) / 1023;
    IFS1bits.AD1IF = 0; // Reset AD1IF flag
 }

void setPWM(int dutyCycle){
    OC1RS = (int) (6250 * dutyCycle) / 100;
}

 void configureAll(void){
    // A/D Setup
    TRISEbits.TRISE0 = 0;
    TRISBbits.TRISB4 = 1;     // Porta Desligar 
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
    AD1CON1bits.ASAM = 1;     //Começar conversao A/D
    
    // Timer Setup
    T3CONbits.TCKPS = 5;//Prescaler T3
    T1CONbits.TCKPS = 3;//Prescaler T1
    PR3 = 6249;        //PRT3 a 100hz
    PR1 = 19530;        //PRT1 a 4hz
    TMR3 = 0;           //Reset ao timer T3
    TMR1 = 0;           //Reset ao timer T1
    IPC3bits.T3IP = 2;  //Prioridade de interrupção T3
    IPC1bits.T1IP = 2;  //Prioridade de interrupção T1
    IEC0bits.T3IE = 1;  //Ligar o as interrupções no T3
    IEC0bits.T1IE = 1;  //Ligar o as interrupções no T1
    IFS0bits.T3IF = 0;  //Reset a flag de interrupção T3
    IFS0bits.T1IF = 0;  //Reset a flag de interrupção T1
    
    OC1CONbits.OCM = 6;   //PWN no OCx
    OC1CONbits.OCTSEL =1; //Usar o timer T3 -> 1, o T2 -> 0
    setPWM(0);
    OC1CONbits.ON = 1;
    
    T3CONbits.TON = 1;  //Ligar o timer T3
    T1CONbits.TON = 1;  //Ligar o timer T1

    //Switch Setup
    TRISB = TRISB | 0x0003;

    EnableInterrupts();
 }

int main(void)
{   
    int dutyCycle;
    configureAll();
    int portVal;
    while (1){
        portVal = PORTB & 0x0003;
        printInt10(portVal);
        putChar(' ');
        switch(portVal){
            case 0:
                IEC0bits.T1IE = 1;
                setPWM(0);
                break;
            case 1:
                IEC0bits.T1IE = 0;
                setPWM(100);
                break;
            default:
                IEC0bits.T1IE = 1;
                dutyCycle = voltage * 3;
                setPWM(dutyCycle);
                break;
        }
    }
    return 0;
}

