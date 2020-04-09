#include <stdio.h>
volatile int c0 = -1;
volatile int c1 = -1;
volatile int c2 = -1;

int T1(int n){
    c0++;
    if(n == 0){
        return 0;
    }else{
        return T1(n/3)+n;
    }
}

int T2(int n){
    c1++;
    if(n == 0 || n==1 || n==2){
        return n;
    }else{
        return T2(n/3)+T2((n+2)/3)+n;
    }
}

int T3(int n){
    c2++;
    if(n == 0 || n==1 || n==2){
        return n;
    }else if(n%3 == 0){
        return 2*T3(n/3) + n;
    }
    else{
        return T3(n/3) + T3((n+2)/3) + n;
    }
}

int main()
{   
    int i;
    int n0 = 0;
    int n1 = 0;
    int n2 = 0;
    printf("Iter\tT1\tCompT1\tT2\tCompT2\tT3\tCompT3\n");
    for(i=0;i<82;i++){
        n0 = T1(i);
        n1 = T2(i);
        n2 = T3(i);
        printf("%d\t%d\t%d\t%d\t%d\t%d\t%d\n",i,n0,c0,n1,c1,n2,c2);
        c0 = -1;
        c1 = -1;
        c2 = -1;
    }
    return 1;
}
