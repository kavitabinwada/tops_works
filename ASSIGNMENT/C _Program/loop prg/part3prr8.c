#include<stdio.h>
int main() {
    int num;
    printf("Enter a number (max digit is 6): ");
    scanf("%d", &num);
    if (num < 0) {
        printf("Please enter a positive number.\n");
        return 1;
    }
    int sum = 0;

    while (num > 0) {
        int digit = num % 10;

        if (digit > 6) {
            printf("Invalid digit found. The maximum digit allowed is 6.\n");
            return 1;
        }
        sum += digit;
        num /= 10;
    }
    printf("Sum of digits: %d\n", sum);
}