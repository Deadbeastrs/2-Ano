#include <stdio.h>

int main()
{   
    int list[] = {9,10,11,12,13,14,15,16,17,18};
    int size = 10;
    int i;
    int ops = 0;
    for(i = 1; i < size;i++){
        if(!((list[i] - list[i-1]) == 1)){
            printf("%d",ops);
            return 0;
        }
        ops++;
    }
    printf("%d",ops);
    return 1;
}
