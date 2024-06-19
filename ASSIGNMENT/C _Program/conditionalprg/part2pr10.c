#include<stdio.h>

int main() {

    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("this number is negative.\n");
    } else if (number > 0) {
        printf("this number is positive.\n");
    } else {
        printf("this number is zero.\n");
    }
}