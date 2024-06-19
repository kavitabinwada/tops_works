//convert temperature fahrunheit to celsius.
#include<stdio.h>
int main(){
    float f,c,x,y;
    printf("enter value of fahrenheit:");
    scanf("%f",&f);
    c=(f-32)*5/9;
    printf("display value of c:%f",c);
    //here x=f,y=c
    printf("\nenter value of y:");
    scanf("%f",&y);
    x=(1.08*y)+32;
    printf("display value of x:%f",x);



}