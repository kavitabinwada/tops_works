#include<stdio.h>
int main(){
    int years,months,days;
    printf("enter the number of years:%d",years);
    scanf("%d",&years);
    months=12*years;
    days=days%30;
    printf("\n months are %d,days are %d",months,days);
}