#include <detpic32.h>
#include <p32mx795f512h.h>

void putc(char byte2send){
    while(U1STAbits.UTXBF == 1);
    U1TXREG = byte2send;
}

char getc(void){
    if(U1STAbits.OERR == 1){
        U1STAbits.OERR = 0;
    }
    while(U1STAbits.URXDA == 0);
    return U1RXREG;
}


int main(void){
    U1MODEbits.BRGH = 0;    // Divide por 16 para p baudrate
    U1BRG = 10;             // Registo UxBRG para 115200 bps
    U1MODEbits.PDSEL = 0;   // Bit de paridade desligado
    U1MODEbits.STSEL = 1;   // Bit de paragem 1
    U1STAbits.UTXEN = 1;         // Ligar Tx (envio)
    U1STAbits.URXEN = 1;         // Ligar Rx (receção)
    U1MODEbits.ON = 1;       // Ligar UART
    //U1TX
    //U1RX
    return 1;
}
