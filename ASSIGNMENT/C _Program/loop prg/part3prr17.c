#include<stdio.h>
int main() {
    int num, evenCount = 0, oddCount = 0;
    int i = 0;
    printf("Enter 5 numbers:\n");
    while (i < 5) {
        printf("Enter number %d: ", i + 1);
        scanf("%d", &num);

        if (num % 2 == 0) {
            evenCount++;
        } else {
            oddCount++;
        }
        i++;
    }
    printf("\nnumber of even numbers: %d\n", evenCount);
    printf("number of odd numbers: %d\n", oddCount);
}