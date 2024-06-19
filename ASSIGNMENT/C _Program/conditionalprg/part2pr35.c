#include<stdio.h>
int main() {
    int month;
    printf("Enter the month number (1-12): ");
    scanf("%d", &month);
    if (month >= 1 && month <= 12) {
        int days;

        switch (month) {
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
                printf("Invalid month number\n");
                return 1; 
        }
        printf("The number of days in month %d is: %d\n", month, days);
    } else {
        printf("Invalid month number\n");
    }
}