//wap to show defference between structure and union.
#include<stdio.h>
union student{
    int rollno;
    char name[20];
    float marks;
}s1,s2;
int main(){
    printf("enter rollno:");
    scanf("%d",&s1.rollno);
    printf("enter name:");
    scanf("%s",&s1.name);
    printf("enter marks:");
    scanf("%f",&s1. marks);
    printf("\n the student details are:");
    printf( "\n rollno is:%d",s1.rollno);
    printf("\n name is:%s",s1.name);
    printf("\n marksis:%f",s1.marks);

}
