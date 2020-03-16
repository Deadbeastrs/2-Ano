#include<stdio.h>
#include<string.h>

int main ( void )
{
    char nome[20],apelido[20],final[60];
    puts ( "Nome:" );
    scanf("%s",nome);
    puts ( "Apelido:" );
    scanf("%s",apelido);
    strcpy(final, "Hello ");
    strcat(final, nome);
    strcat(final, " ");
    strcat(final, apelido);
    puts ( final );
    return 0;
}
