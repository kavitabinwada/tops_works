#include<stdio.h>
#include<string.h>
void main()
{
    char str1[50];
    int i, l= 0;
    printf("Enter a String:");
    scanf("%s",str1);
    for(i=0; str1[i]!='\0'; i++)
    {
        l++;
    }
    printf("Length of string  is : %d \n \n " ,str1,l);
}