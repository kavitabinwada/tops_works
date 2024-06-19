#include<stdio.h>
int main() {
    const float rateFirst50Units = 0.50;
    const float rateNext100Units = 0.75;
    const float rateRemainingUnits = 1.50;
    const float surchargeRate = 0.20;

    float unitCharges, totalBill;
    printf("Enter the electricity unit charges: ");
    scanf("%f", &unitCharges);

    if (unitCharges <= 50) {
        totalBill = unitCharges * rateFirst50Units;
    } else if (unitCharges <= 150) {
        totalBill = 50 * rateFirst50Units + (unitCharges - 50) * rateNext100Units;
    } else {
        totalBill = 50 * rateFirst50Units + 100 * rateNext100Units + (unitCharges - 150) * rateRemainingUnits;
    }

    totalBill += totalBill * surchargeRate;

    printf("Total Electricity Bill: RS. %f\n", totalBill);

}