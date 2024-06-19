#include<stdio.h>

int main() {
    int i = 1;  
    int num;    
    int sum = 0; 

    while (i <= 10) {
        printf("Enter number %d: ", i);
        scanf("%d", &num);

        sum += num;
        i++;
    }
    printf("Sum of the 10 numbers is: %d\n", sum);
}