#include<stdio.h>
int main() {
    int i;
    for (i = 1; i <= 20; i++) {
        if (i < 10) {
            printf("0%d ", i);
        } else {
            printf("%d ", i);
        }
    }
    for (i = 41; i <= 50; i++) {
        printf("%d ", i);
    }
}