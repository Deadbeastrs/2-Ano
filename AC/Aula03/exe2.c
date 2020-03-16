#include <stdio.h>
int main()
{
    int list[] = {3, 4, 1, 5, 2, 1 , 3 , 4 , 9 , 10};
    int size = 10;
    int i;
    int j;
    int resp = 0;
    int counter = 0;
    int counterComp = 0;
    int max = 0;
    int index = -1;
    for (i = size-1; i >= 0;i--)
    {
        if(i <= max){
            break;
        }
        for (j = 0; j < i; j++)
        {
            counterComp++;
            if (list[j] < list[i])
            {
                counter++;
            }
        }
        if (counter > max)
        {
            max = counter;
            index = i;
        }
        counter = 0;
    }
    printf("Indice: %d\n", index);
    printf("N de menores %d\n", max);
    printf("Comp %d\n",counterComp);
    return 0;
}
