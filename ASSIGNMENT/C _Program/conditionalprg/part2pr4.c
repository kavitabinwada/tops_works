#include<stdio.h>
int main(){
    double num1,num2,res=0;
    char opr;
    printf("enter any one operator such as(+,-,*,/,%):");
    scanf("%c",&opr);
    printf("enter the values of num1 and num2:");
    scanf("%lf,%lf",&num1,&num2);
    switch(opr)
    {
    case'+':
      res=num1+num2;
      printf("the result is:%lf",res);
      break;
    case'-':
      res=num1-num2;
      printf("the result is:%lf",res);
      break;
    case'*':
      res=num1*num2;
      printf("the result is:%lf",res);
      break; 
    case'/':
      res=num1/num2;
      printf("the result is:%lf",res);
      break; 
    case'%':
      res=num1%num2;
      printf("the result is:%lf",res);
      break;  
    default:
      printf("this operator is not valid");    

    }

    
}