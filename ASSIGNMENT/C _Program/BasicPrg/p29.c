//convert minutes into seconds and hours.
#include<stdio.h>
int main(){
    int sec, h ,m ,s;
    printf("input seconds: ");
    scanf("%d", &sec);

    h=(sec/3600);
    m=(sec-(3600*h)/60);
    s=(sec-(3600*h)-(m*60));
    printf("%d,%d,%d\n",h,m,s);
}