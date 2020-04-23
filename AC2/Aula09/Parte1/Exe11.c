#include <detpic32.h>
#include <p32mx795f512h.h>

#define DisableUart1RxInterrupt() IEC0bits.U1RXIE = 0
#define EnableUart1RxInterrupt() IEC0bits.U1RXIE = 1
#define DisableUart1TxInterrupt() IEC0bits.U1TXIE = 0
#define EnableUart1TxInterrupt() IEC0bits.U1TXIE = 1
#define INDEX_MASK (BUF_SIZE - 1)
#define BUF_SIZE 32 

typedef struct{
    unsigned char data[BUF_SIZE];
    unsigned int head;
    unsigned int tail;
    unsigned int count;
} circularBuffer;

volatile circularBuffer txb;
volatile circularBuffer rxb;

void _int_(24) isr_uart1(void){
    if(IFS0bits.U1TXIF == 1){
        if(txb.count > 0){
            U1TXREG = txb.data[txb.head];
            txb.head = (txb.head + 1) & INDEX_MASK;
            txb.count = txb.count - 1;
        }
        if(txb.count == 0){
            DisableUart1TxInterrupt();
        }
        IFS0bits.U1TXIF = 0;
    }
    if(IFS0bits.U1RXIF == 1){
        rxb.data[rxb.tail] = U1RXREG;
        rxb.tail = (rxb.tail + 1) & INDEX_MASK;
        if(rxb.count < BUF_SIZE){
            rxb.count++;
        }else{
            rxb.head++;
        }
        IFS0bits.U1RXIF = 0;
    }   
}

void comDrv_flushRx(void){
    rxb.head = 0;
    rxb.tail = 0;
    rxb.count = 0;
}

void comDrv_flushTx(void){
    txb.head = 0;
    txb.tail = 0;
    txb.count = 0;
}

char comDrv_getc(char *pchar){
    if(rxb.count == 0){
        return 0;
    }
    DisableUart1RxInterrupt();
    *pchar = rxb.data[rxb.head];
    rxb.count = rxb.count - 1;
    rxb.head = (rxb.head + 1) & INDEX_MASK;
    EnableUart1RxInterrupt();
    return 1;
}

void comDrv_putc(char ch){
    while(txb.count == BUF_SIZE){}
    txb.data[txb.tail] = ch;
    txb.tail = (txb.tail + 1) & INDEX_MASK;
    DisableUart1TxInterrupt();
    txb.count = txb.count + 1;
    EnableUart1TxInterrupt();
}

void comDrv_puts(char *s){
    while(1){
        comDrv_putc(*s);
        s++;
        if(*s == '\0'){
            break;
        }
    }
}

void comDrv_config(unsigned int baud, char parity, unsigned int stopbits){
    
    //Interrupts
    U1STAbits.URXISEL = 0;
    U1STAbits.UTXSEL = 0;
    IPC6bits.U1IP = 5;
    IEC0bits.U1TXIE = 1;
    IEC0bits.U1RXIE = 1; //MUDAR%
    IFS0bits.U1RXIF = 0;
    IFS0bits.U1TXIF = 0;

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
    comDrv_config(115200,'N',1);
    comDrv_flushRx();
    comDrv_flushTx();
    EnableInterrupts();
    int c = '0';
    int boolean = 0;
    while(1){
        boolean = comDrv_getc(&c);
        if(c == 's' && boolean == 1){
            comDrv_puts("PIC32 UART Device-driver teste 1234\n");
        };
    }
    return 0;
}
