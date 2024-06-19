#include<stdio.h>
int main() {
    int maths, physics, chemistry;
    printf("Enter marks in Mathematics: ");
    scanf("%d", &maths);

    printf("Enter marks in Physics: ");
    scanf("%d", &physics);

    printf("Enter marks in Chemistry: ");
    scanf("%d", &chemistry);

    if (maths >= 65 && physics >= 55 && chemistry >= 50 && (maths + physics + chemistry) >= 188 && (maths + physics) >= 137) {
        printf("the candidate is eligible for admission.\n");
    } else {
        printf("the candidate is not eligible for admission.\n");
    }
}
