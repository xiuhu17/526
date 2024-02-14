#include <stdio.h>

typedef struct myStruct {
    double myDouble;     
    int myIntArray[5];   
} myStruct;

int main() {
    myStruct example = {3.14, {1, 2, 3, 4, 5}};

    printf("Double: %f\n", example.myDouble);

    printf("Int Array: ");
    for (int i = 0; i < 5; i++) {
        printf("%d ", example.myIntArray[i]);
    }
    printf("\n");

    return 0;
}
    