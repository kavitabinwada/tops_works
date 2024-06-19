//wap to convert years into days and days into years.
#include<stdio.h>
int main(){
    int years,months,days1,days2;
    printf("enter the years:%d",years);
    scanf("%d",&years);
    days1=years*365;
   // days=days%30;
    printf("years into days1:%d",days1);
    printf("\n enter the days2:");
    scanf("%d",&days2);
    months=days2/30;
    years=months/12;
    printf("\n days2 into years:%d",years);
}