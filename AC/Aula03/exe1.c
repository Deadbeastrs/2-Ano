#include <stdio.h>

int check(int prev, int actual){
    if(prev == actual){
        return 0;
    }
    return 1;
}

int main()
{   
    int list[] = {0,1,2,3,4,5,6,7,8,9};
    int size = 10;
    int i;
    int resp = 0;
    int counter = 0;
    for(i = 1; i < size;i++){
        resp += check(list[i-1],list[i]);
        counter++;
    }
    printf("N exe: %d\n",counter);
    printf("Val %d\n",resp);
    return 0;
}
