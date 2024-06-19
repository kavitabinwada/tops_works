#include<stdio.h>
int main() {
    int num, reversedNum = 0, originalNum, remainder, sum = 0;
    printf("Enter an number: ");
    scanf("%d", &num);
    originalNum = num;

    for (; num != 0; num /= 10) {
        remainder = num % 10;
        reversedNum = reversedNum * 10 + remainder;
    }

    for (int i = 1; i <= originalNum; ++i) {
        sum += i;
    }

    printf("Reversed number: %d\n", reversedNum);
    printf("Sum of the series 1+2+3+...+%d: %d\n", originalNum, sum);
}