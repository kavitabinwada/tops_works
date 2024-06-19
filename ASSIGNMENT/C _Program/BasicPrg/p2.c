//simple caculator
#include<stdio.h>
int main(){
    int num1,num2,res;
    printf("enter number1,number2");
    scanf("%d %d",&num1,&num2);
    res=num1+num2;
    printf("\n addition of num1 and num2 %d",res);
    res=num1-num2;
    printf("\n substraction of num1 and num2 %d",res);
    res=num1*num2;
    printf("\n multiplication of num1 and num2 %d",res);
    res=num1/num2;
    printf("\n division of num1 and num2 %d",res);
    res=num1%num2;
    printf("\n modulo of num1 and num2 %d",res);

}