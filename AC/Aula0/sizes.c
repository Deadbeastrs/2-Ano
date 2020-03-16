#include<stdio.h>
#include<string.h>

int main ( void )
{
    printf("%lu\n%lu\n%lu\n%lu\n%lu\n%lu\n%lu\n%lu\n%lu\n", sizeof(void *),sizeof(void),sizeof(char),sizeof(short),sizeof(int),sizeof(long),sizeof(long long),sizeof(float),sizeof(double) );
    return 0;
}
