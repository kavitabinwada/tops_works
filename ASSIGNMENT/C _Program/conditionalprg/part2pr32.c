#include<stdio.h>
int main() {

    float basicSalary, grossSalary, hra, da;

    printf("Enter the basic salary: ");
    scanf("%f", &basicSalary);

    if (basicSalary <= 10000) {
        hra = 0.2 * basicSalary;
        da = 0.8 * basicSalary;
    } else if (basicSalary <= 20000) {
        hra = 0.25 * basicSalary;
        da = 0.9 * basicSalary;
    } else {
        hra = 0.3 * basicSalary;
        da = 0.95 * basicSalary;
    }

    grossSalary = basicSalary + hra + da;

    printf("\nBasic Salary: %f\n", basicSalary);
    printf("HRA: %f\n", hra);
    printf("DA: %f\n", da);
    printf("Gross Salary: %f\n", grossSalary);

}