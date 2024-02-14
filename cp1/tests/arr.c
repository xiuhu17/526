#include <stdlib.h>
#include <stdio.h>

typedef struct inner { int A; int B;} inner;
typedef struct outer { int M; inner a[5]; int N;} outer;
int main() {
    outer a[3];
    a[2].a[3].A = 2;
    
    printf("The value of array a: %d", a[2].a[3].A);
    return 0;
}

// int* a;