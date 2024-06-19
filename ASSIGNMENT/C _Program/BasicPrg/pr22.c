#include<stdio.h>
int main(){
    int a,b;
    printf("enter value of a,b");
    scanf("%d %d",&a,&b);
    a=a*b;
    b=a/b;
    a=a/b;
    printf("\n after swapping multiplication and division of two values %d %d:",a ,b);
    
}