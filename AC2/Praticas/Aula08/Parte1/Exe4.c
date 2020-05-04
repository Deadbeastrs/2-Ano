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

void putc(char byte2send){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte2send;
}

void puts(char *str){
    while(1){
        putc(*str);
        str++;
        if(*str == '\0'){
            break;
        }
    }
}

char getc(void){
    if(U1STAbits.OERR == 1){
        U1STAbits.OERR = 0;
    }
    while(U1STAbits.URXDA == 0);
    return U1RXREG;
}

void configUart(unsigned int baud, char parity, unsigned int stopbits){
    if(parity == 'N'){
        U1MODEbits.PDSEL = 0;               // Bit de paridade desligado
    }else if(parity == 'E'){
        U1MODEbits.PDSEL = 1;               // Bit de paridade desligado
    }else if(parity == 'O'){
        U1MODEbits.PDSEL = 2;               // Bit de paridade desligado
    }
    if(stopbits == 1){
        U1MODEbits.STSEL = 0;               // Bit de paragem 1 ou 2 (neste caso 1)
    }else if(stopbits == 2){
        U1MODEbits.STSEL = 1;               // Bit de paragem 1 ou 2 (neste caso 1)
    }

    U1MODEbits.BRGH = 0;                // Divide por 16 para p baudrate
    U1BRG = ((20*(pow(10,6))+8*115200) / (16*115200))-1;  // Registo UxBRG para 115200 bps
    U1STAbits.UTXEN = 1;                // Ligar Tx (envio)
    U1STAbits.URXEN = 1;                // Ligar Rx (receção)
    U1MODEbits.ON = 1;                  // Ligar UART
}


int main(void){
    configUart(115200,'N',1);
    while(1){
        puts("sou bueda fixe\n");
        delay(1000);
    }
    //U1TX
    //U1RX
    return 1;
}
