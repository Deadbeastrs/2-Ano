#include <stdio.h>
volatile int mRec = 0;

int motzkin(int n){
    if(n <= 1){
        return 1;
    }
    else if(n >=2){
        int sum = 0;
        int k;
        for(k=0;k<=n-2;k++){
            mRec++;
            sum = sum + motzkin(k)*motzkin(n-2-k);
        }
        return motzkin(n-1)+ sum;
    }
}

int main(void){
    int i;
    int temp;
    for(i=0;i<16;i++){
        temp = motzkin(i);
        printf("%d\t%d\n",temp,mRec);
        mRec = 0;
    }
    return 0;
}
