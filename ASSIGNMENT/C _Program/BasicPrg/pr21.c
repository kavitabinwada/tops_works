#include<stdio.h>
int main(){
    int a,b,c;
    printf("enter value of a,b");
    scanf("%d %d",&a,&b);
    printf("without using third variable%d %d:",a,b);
    c=a;
    a=b;
    b=c;
    printf("\n after using third variable value of a,b %d %d:",a,b);
    return 0;
    
}
    
    
    