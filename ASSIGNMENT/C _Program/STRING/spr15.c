#include<stdio.h>
int main(){
    char str[100];
    printf("Enter a String : ");
    scanf("%s",str);
    char max = 'A';
    char min = 'Z';
    int i;
    for(i=0;i<strlen(str);i++) {
    
        if(str[i] < min) {
            min = str[i];
        }
    
        if 
        (str[i] > max) {
            max = str[i];
        }
    }
    printf("Max : %c", max);
    printf("\nMin : %c", min);
}