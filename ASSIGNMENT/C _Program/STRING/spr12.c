#include <stdio.h>
#include <string.h>

int main() {
    int ctr = 0, i, freq = 0; 
    int t, h; 
    char str[100]; 
    printf("\nfind the number of times the word 'is ' in any combination appears :\n"); 
    printf("Input the string : ");
    fgets(str, sizeof str, stdin); 
    ctr = strlen(str); 
    for (i = 0; i <= ctr - 3; i++) {
        t = (str[i] == 'i' || str[i] == 'I');
        h = (str[i + 1] == 's' || str[i + 1] == 'S');
        
        if ((t && h) == 1)
            freq++;
    }
    printf("The frequency of the word \'is\' is : %d\n\n", freq); 

}