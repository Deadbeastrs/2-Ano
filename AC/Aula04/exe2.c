#include <stdio.h>

void removeDuplicates(int* list, int *size)
{   
    int troca = 0;
    int comp = 0;
    int i;
    int p;
    int c = 0;
    int d = 0;
    int newSize = 0;
    for (i = 0; i < *size; i++)
    {
        for (p = 0; p < newSize; p++){
            comp++;
            if(list[i] != list[p]){
                c++;
            }
        }
        if(c == newSize){
            list[d] = list[i];
            d++;
            newSize++;
            troca++;
        }
        c = 0;
    }
    *size = newSize;
    printf("\ncomp: %d\nCopias: %d\nsize: %d\n", comp, troca, *size);
}

int main()
{
    int list[] = {9, 9, 9, 9, 9, 9, 9, 9, 9, 9};
    int size = 10;
    removeDuplicates(list, &size);
    printf("\nArray elements after deleting duplicates : ");
    for (int s = 0; s < size; s++)
    {
        printf("%d | ", list[s]);
    }
    printf("\n");
    return 1;
}