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

    if (&example.inner == NULL) {
        printf("Is null?");
    } else {
        printf("null ");
    }

    return 0;
}
