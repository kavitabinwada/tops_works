// find the area of rectengular prism formula:A=2(wl+hl+hw)
#include<stdio.h>
int main(){
    int width,lenth,hieght,result;
    printf("enter value of width");
    scanf("%d",&width);
    printf("enter value of lenth");
    scanf("%d",&lenth);
    printf("enter value of hieght");
    scanf("%d",&hieght);
    result=2*((width*lenth)+(hieght*lenth)+(hieght*width));
printf("area of prism=%d",result);
}


