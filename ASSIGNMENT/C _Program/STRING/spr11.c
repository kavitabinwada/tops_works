#include <stdio.h>
#include <string.h>

int main()
{
    char str[100]; 
    int ctr, ch, i; 
    printf("\nreplace lowercase characters by uppercase and vice-versa :\n"); 
    printf("Input the string : ");
    fgets(str, sizeof str, stdin); 
    i = strlen(str);
    ctr = i; 
    printf("\nthe given sentence is   : %s", str); 
    printf("After Case changed the string  is: ");
    for (i = 0; i < ctr; i++) {
        ch = islower(str[i]) ? toupper(str[i]) : tolower(str[i]);
        putchar(ch); 
    }
    printf("\n");
}