#include<stdio.h>

int main() {
    int number;

    printf("Enter the number: ");
    scanf("%d", &number);
      (number % 2 == 0) ?printf("%d is even.\n", number) : printf("%d is odd.\n");



}