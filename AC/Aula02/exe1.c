#ifdef __linux__

#include <stdio.h>
#include <time.h>
#include <math.h>

int rec(int val){
    if(val == 0){
        return 0;
    }
    if(val == 1){
        return 1;
    }
    return 3*rec(val-1) + 2*rec(val-2);  
}

void iter(int res1[]){
    int val = 0;
    int old0 = 1;
    int old1 = 0;
    for(int i=0;i<15;i++){
        if(i == 0){
            val = 0;
        }
        if(i == 1){
            val = 1;
        }
        if(i >= 2){
            val = 3*old0+2*old1;
        }
        old1 = old0;
        old0 = val;
        res1[i] = val;
    }
}

void formula(int res2[]){
    for(int i=0;i<15;i++){
        res2[i] = floor((1/sqrt(17)) * pow(((0.5)*(3+sqrt(17))),i) + (0.5));
    }
}

void expon(int res3[]){
    double c1 = 0.24253562503633297352;
    double c2 = 1.27019663313689157536;
    for(int i=0;i<15;i++){
        res3[i] = round(c1 * exp(c2*i));
    }
}

int main()
{   
    clock_t begin0 = clock();
    int res0[15];
    int res1[15];
    int res2[15];
    int res3[15];
    for(int i=0;i<15;i++){
        res0[i] = rec(i);
    }
    clock_t end0 = clock();
    double time0 = (double)(end0 - begin0) / CLOCKS_PER_SEC;
    clock_t begin1 = clock();
    iter(res1);
    clock_t end1 = clock();
    double time1 = (double)(end1 - begin1) / CLOCKS_PER_SEC;
    clock_t begin2 = clock();
    formula(res2);
    clock_t end2 = clock();
    double time2 = (double)(end2 - begin2) / CLOCKS_PER_SEC;
    clock_t begin3 = clock();
    expon(res3);
    clock_t end3 = clock();
    double time3 = (double)(end3 - begin3) / CLOCKS_PER_SEC;
    printf("Iteração|Valor iter|Valor rec|Valor formula|Valor exp\n");
    for(int i=0;i<15;i++){
        printf("%d|%d|%d|%d|%d\n",i,res0[i],res1[i],res2[i],res3[i]);
    }
    printf("Tempo rec : %lf \nTempo iter: %lf\nTempo Formula: %lf\nTempo Exp: %lf \n3", time0,time1,time2,time3);
    return 0;
}
#endif
