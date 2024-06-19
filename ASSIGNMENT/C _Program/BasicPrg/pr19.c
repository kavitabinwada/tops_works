//calculate compound interest
#include<stdio.h>
int main(){
    int pammount,rate,time,ammount,compound;
    printf("enter value of pammount");
    scanf("%d",&pammount);
    printf("enter value of rate");
    scanf("%d",&rate);
    printf("enter value of time");
    scanf("%d",&time);
    ammount =pammount*(1+rate/100)*time;
    printf("value of ammount%d:",ammount);
    compound=ammount-pammount;
    printf("enter value of compound%d:",compound);


}