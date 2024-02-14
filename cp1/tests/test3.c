#include <stdio.h>

typedef struct innerStruct {
    int array[10];
} innerStruct;

typedef struct outerStruct {
    double value;      
    innerStruct inner; 
} outerStruct;

int main() {
    outerStruct example = {5.55, {{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}}};

    printf("Doule: %f\n", example.value);

    printf("Array inner structure: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", example.inner.array[i]);
    }
    printf("\n");

    return 0;
}
