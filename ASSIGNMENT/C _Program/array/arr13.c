// WAP to accept 5 numbers from user and check entered number is even 
// or oddusing of array

#include <stdio.h>
int main() {
    const int numNumbers = 5;
    int numbers[numNumbers];
    printf("Enter 5 numbers:\n");
    for (int i = 0; i < numNumbers; i++) {
        printf("Number %d: ", i + 1);
        scanf("%d", &numbers[i]);
    }

    printf("\nresults:\n");
    for (int i = 0; i < numNumbers; i++) {
        if (numbers[i] % 2 == 0) {
            printf("%d is even.\n", numbers[i]);
        } else {
            printf("%d is odd.\n", numbers[i]);
        }
    }
}
