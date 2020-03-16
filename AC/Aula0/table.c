#include<stdio.h>
#include<string.h>
#include<math.h>

int main ( void )
{
    char line[100];
    puts ( "Numero|Quadrado|Raiz" );
    puts ( "------|--------|----" );
    double sqroot;
    for ( int i = 1; i<10; i++ ) {
      sqroot = sqrt(i);
      printf("%d     | %d      | %lf\n",i,i*i,sqroot);
    }
    return 0;
}
