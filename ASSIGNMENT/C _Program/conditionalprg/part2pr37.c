#include<stdio.h>
int main() {
    int choice;
    char alphabet;

    printf("Menu:\n");
    printf("1. Display day of the week\n");
    printf("2. Check vowel or consonant\n");
    printf("Enter your choice (1 or 2): ");
    scanf("%d", &choice);

    switch (choice) {
        case 1:
            printf("Enter a number between 1 and 7: ");
            scanf("%d", &choice);
            
            switch (choice) {
                case 1:
                    printf("Monday\n");
                    break;
                case 2:
                    printf("Tuesday\n");
                    break;
                case 3:
                    printf("Wednesday\n");
                    break;
                case 4:
                    printf("Thursday\n");
                    break;
                case 5:
                    printf("Friday\n");
                    break;
                case 6:
                    printf("Saturday\n");
                    break;
                case 7:
                    printf("Sunday\n");
                    break;
                default:
                    printf("Invalid choice for day\n");
            }
            break;

        case 2:
            printf("Enter an alphabet: ");
            scanf(" %c", &alphabet); 

            switch (alphabet) {
                case 'a':
                case 'e':
                case 'i':
                case 'o':
                case 'u':
                case 'A':
                case 'E':
                case 'I':
                case 'O':
                case 'U':
                    printf("%c is a vowel.\n", alphabet);
                    break;
                default:
                    printf("%c is a consonant.\n", alphabet);
            }
            break;

        default:
            printf("Invalid choice\n");
    }
}