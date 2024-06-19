#include<stdio.h>
int main() {

    float height;
    printf("Enter the height in centimeters: ");
    scanf("%f", &height);

    if (height < 130.0) {
        printf("Person is short\n");
    } else if (height >= 130.0 && height < 160.0) {
        printf("Person is Average Height\n");
    } else {
        printf("Person is tall\n");
    }
}
