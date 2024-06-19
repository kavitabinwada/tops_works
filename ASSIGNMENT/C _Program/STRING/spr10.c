#include <stdio.h>
#include <string.h>

int main() {
    char str[100], sstr[100]; 
    int pos, l, c = 0; 
    printf("\nextract a substring from a given string:\n"); 
    printf("input the string : ");
    fgets(str, sizeof str, stdin); 

    printf("input the position to start extraction :");
    scanf("%d", &pos); 

    printf("input the length of substring :");
    scanf("%d", &l); 
    while (c < l) {
        sstr[c] = str[pos + c - 1]; 
        c++;
    }
    sstr[c] = '\0'; 
    printf("The substring retrieved from the string is : \" %s\" \n\n", sstr);  
