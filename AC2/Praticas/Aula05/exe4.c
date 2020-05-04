#include <detpic32.h>
#include <p32mx795f512h.h>

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

int main(void)
{
    TRISBbits.TRISB4 = 1;     // Porta Desligar Digital
    AD1PCFGbits.PCFG4 = 0;    //Porta Ligar Ler Analogico
    AD1CHSbits.CH0SA = 4;     //POrta a ir buscar para o multiplexer analogico
    AD1CON1bits.CLRASAM = 1;  // Precisamos de dar ordem de inicio
    AD1CON1bits.SSRC = 7;     // Trigger para inicio da conversão
    AD1CON3bits.SAMC = 16;    // Duração do tempo de amostragem
    AD1CON2bits.SMPI = 4 - 1; // Numero de BUFx que vai usar (nº conversoes)
    AD1CON1bits.ON = 1;       //Ligar a cena
    while (1)
    {
        delay(500);
        AD1CON1bits.ASAM = 1;
        while (IFS1bits.AD1IF == 0);
        int *p = (int *)(&ADC1BUF0);
        char c  = ' ';
        int val = 0;
        for (; p <= (int *)(&ADC1BUFF); p += 4)
        {   
            val = *p + val;
            putChar(c);
        }
        printInt(((val/4)*33)/1023,10);
        IFS1bits.AD1IF = 0;
        putChar(',');
    }
    return 0;
}
