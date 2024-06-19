// WAP to find reverse of string using recursion

#include <stdio.h>
#include <string.h>
int main()
{
    char str[100]; 
    int l=0;
       printf("\nprint individual characters of string in reverse order :\n");
       printf("Input the string : ");
       fgets(str, sizeof str, stdin);
	   l=strlen(str);
	   printf("The characters of the string in reverse are : \n");
       for(str[l]='\0';l>=0;l--)
        {
          printf("%c  ", str[l]);
        }
    printf("\n");
}