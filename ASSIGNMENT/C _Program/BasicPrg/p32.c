#include<stdio.h>
int main(){
    int num1,num2,sum;
    printf("enter value of num1: ");
    scanf("%d",&num1);
    printf("enter value of num2: ");
    scanf("%d",&num2);
    sum=num1+num2;
    printf("sum of num1 and num2:%d,%d ",sum,sizeof(sum));
}