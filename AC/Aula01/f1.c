#include <stdio.h>

unsigned int f1(unsigned int n)
{
    unsigned int i, j, r = 0;
    for (i = 1; i <= n; i++)
        for (j = 1; j <= n; j++)
            r += 1;
    return r;
}
unsigned int f2(unsigned int n)
{
    unsigned int i, j, r = 0;
    for (i = 1; i <= n; i++)
        for (j = 1; j <= i; j++)
            r += 1;
    return r;
}

unsigned int f3(unsigned int n)
{
    unsigned int i, j, r = 0;
    for (i = 1; i <= n; i++)
        for (j = i; j <= n; j++)
            r += j;
    return r;
}

unsigned int f4(unsigned int n)
{
    unsigned int i, j, r = 0;
    for (i = 1; i <= n; i++)
        for (j = i; j >= 1; j /= 10)
            r += i;
    return r;
}

int main()
{   
    int a,b,c,d;
    for(int i=1;i<=15;i++){
        a = f1(i);
        b = f2(i);
        c = f3(i);
        d = f4(i);
        printf("%d | %d | %d | %d | %d \n",i,a,b,c,d);
    }
    return 0;
}