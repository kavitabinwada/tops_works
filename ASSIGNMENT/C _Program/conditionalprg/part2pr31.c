#include<stdio.h>
int main() {
    int months;
    printf("Enter the month number (1-12): ");
    scanf("%d", &months);

    if (months < 1 || months > 12) {
        printf("Invalid month number. Please enter a number between 1 and 12.\n");
        return 1; 
    }

    int days;
    switch (months) {
        case 1: case 3: case 5: case 7: case 8: case 10: case 12:
            days = 31;
            break;
        case 4: case 6: case 9: case 11:
            days = 30;
            break;
        case 2:
            days = 28;
            break;
        default:
            break; 
    }

    printf("The number of days in month %d is %d.\n", months, days);
}