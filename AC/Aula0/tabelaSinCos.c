#include<stdio.h>
#include<string.h>
#include<math.h>

int main ( void )
{
    FILE *fp;
    fp = fopen("test.txt", "w+");
    puts ( "ang|sin(ang)|cos(ang)" );
    puts ( "---|-------|----" );
    double sqroot;
    int start;
    int end;
    int space;
    puts ( "Start:" );
    scanf("%d",&start);
    puts ( "End:" );
    scanf("%d",&end);
    puts ( "Spacing:" );
    scanf("%d",&space);
    for ( int i = start; i<=end; i=i+space ) {
      double sinVal = sin(i);
      double cosVal = cos(i);
      printf("%.3d|%.5lf|%.5lf\n",i,sinVal,cosVal);
      fprintf(fp, "%.3d|%.5lf|%.5lf\n",i,sinVal,cosVal);
    }
    fclose(fp);
    return 0;
}
