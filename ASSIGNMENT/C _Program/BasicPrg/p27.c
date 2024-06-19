#include<stdio.h>
int main(){
    int days,months;
    printf("enter the days:%d",days);
    scanf("%d",&days);
    months=days/30;
    days=days%30;
    printf("\n months are %d,days are %d",months,days);
    
    
}