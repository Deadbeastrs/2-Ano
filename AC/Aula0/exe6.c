#include<stdio.h>
void printArray2(char*,int*,int);
void cumSum(int*,int*,int);
int main ( void ){

	int list[12] = {31,28,31,30,31,30,31,31,30,31,30,31};
    int list1[12];
	int size = (int) sizeof(list)/sizeof(list[0]);
	printArray2("a",list,size);
    cumSum(list,list1,size);
	return 0;
}

void printArray2(char* s, int a[],int size){
	printf("%s:\n",s);
	for(int i=0;i<size;i++){
		printf("%d ",a[i]);
	}
	printf("\n");
}

void cumSum(int a[],int b[],int size){
    int c = 0;
    for(int i=0;i<size;i++){
		c += a[i];
        b[i] = c;
	}
}