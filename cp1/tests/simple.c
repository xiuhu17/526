#include <stdlib.h>
#include <stdio.h>


typedef struct inner { int M; double X; int N;} inner;
typedef struct outer { int a; inner b; inner c; double d; inner f; int g;} outer;

int main() {
    outer S;
    S.a = 10;
    S.d = 0.142857;
    S.g = 12;
    
    S.b.M = 1;
    S.b.X = 2.0;
    S.b.N = 3;
    S.c.M = 10;
    S.c.X = 19.0;
    S.c.N = 199;
    S.f.M = 7;
    S.f.X = 77.0;
    S.f.N = 17;

    printf("The value is: %d %d %d %f", S.a, S.b.M, S.f.N, S.c.X);

    return 0;
}