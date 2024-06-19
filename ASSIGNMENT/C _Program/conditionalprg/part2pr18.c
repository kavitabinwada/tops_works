#include<stdio.h>
int main() {

    float costPrice,sellingPrice,profitloss;

    printf("Enter the cost price: ");
    scanf("%f", &costPrice);

    printf("Enter the selling price: ");
    scanf("%f", &sellingPrice);
    profitloss = sellingPrice - costPrice;

    if (profitloss > 0) {
        printf("Profit: %f\n", profitloss);
    } else if (profitloss < 0) {
        printf("Loss: %f\n", profitloss);  
    } else {
        printf("No profit, no loss.\n");
    }

}