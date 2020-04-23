#include <detpic32.h>
#include <p32mx795f512h.h>

#define DisableUart1RxInterrupt() IEC0bits.U1RXIE = 0
#define EnableUart1RxInterrupt() IEC0btis.U1RXIE = 1
#define DisableUart1TxInterrupt() IEC0btis.U1TXIE = 0
#define EnableUart1TxInterrupt() IEC0btis.U1TXIE = 1
#define INDEX_MASK (BUF_SIZE – 1)
#define BUF_SIZE 32 

typedef struct{
    unsigned char data[BUF_SIZE];
    unsigned int head;
    unsigned int tail;
    unsigned int count;
} circularBuffer;

volatile circularBuffer txb;
volatile circularBuffer rxb;

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

