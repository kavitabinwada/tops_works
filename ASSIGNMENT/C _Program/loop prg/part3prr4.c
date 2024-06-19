#include<stdio.h>
int main() {
    int number, limit;
    printf("Enter the number for the table: ");
    scanf("%d", &number);
    printf("Enter the limit for the table: ");
    scanf("%d", &limit);

    printf("Multiplication table for %d up to %d:\n", number, limit);
    
    for (int i = 1; i <= limit; i++) {
        printf("%d x %d = %d\n", number, i, number * i);
    }
}