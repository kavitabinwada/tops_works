#include<stdio.h>
int main(){
    float triangle,a,b,c;
    printf("enter a lenth of side a");
    scanf("%f",&a );
    printf("enter lenth of side b");
    scanf("%f",&b  );
    printf("enter lenth of side c");
    scanf("%f",&c );
    triangle=a+b+c;
    printf("perimeter of triangle: %f",triangle);
}