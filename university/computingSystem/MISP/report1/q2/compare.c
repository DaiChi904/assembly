#include <stdio.h>

int main(void) {
    int num1, num2;
    
    int _ = scanf("%d", &num1);
    int __ = scanf("%d", &num2);

    if (num1 > num2) {
        printf("num1 is greater than num2\n");
    } else if (num2 > num1) {
        printf("num2 is greater than num1\n");
    } else {
        printf("num1 and num2 are equal\n");
    }

    return 0;
}
