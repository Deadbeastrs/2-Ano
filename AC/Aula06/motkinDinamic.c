#include <stdio.h>
volatile int mDin = 0;

int motzkin(int n){
    int i;
    int k;
    int sum = 0;
    int mem[n + 1];
    mem[0] = 1;
    mem[1] = 1;

    for (i = 2; i <= n; i++) {
        for(k=0;k<= i-2;k++){
            mDin++;
            sum = sum + mem[k] * mem[i-2-k];
        }
        mem[i] = mem[i-1] + sum;
        sum = 0;
    }
    return mem[n];
}

int main(void){
    int i;
    int temp;
    for(i=0;i<16;i++){
        temp = motzkin(i);
        printf("%d\t%d\n",temp,mDin);
        mDin = 0;
    }
    return 0;
}