#include<stdio.h>
int main() {
    float billAmount, surcharge, totalAmount;

    printf("Enter the bill amount: ");
    scanf("%f", &billAmount);

if (billAmount > 800) {

    surcharge = 0.18 * billAmount;

     totalAmount = billAmount + surcharge;
    } else {
        surcharge = 0;
        totalAmount = (billAmount < 256) ? 256 : billAmount;
    }

    printf("Bill Amount: Rs %f\n", billAmount);
    printf("Surcharge: Rs %f\n", surcharge);
    printf("Total Amount: Rs %f\n", totalAmount);

}