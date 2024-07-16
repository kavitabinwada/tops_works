// WAP to find factorial using recursion
#include<stdio.h>
long int mn(int n);
int main() {
    int n;
    printf("Enter a positive integer: ");
    scanf("%d",&n);
    printf("Factorial of %d = %ld", n, mn(n));
}
long int mn(int n) {
    if (n>=1)
        return n*mn(n-1);
    else
        return 1;
}
