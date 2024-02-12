# 

#include <stdlib.h>
#include <stdio.h>

typedef struct inner { int M; double X; int N;} inner;
typedef struct outer { int a; inner b; inner c; double d; inner f; int g; inner* h;} outer;

typedef struct outerouter {int M; outer A; inner B; double N; inner* C;  outer* E; outer** F;} outerouter;

int main() {
outerouter Test;
outer A;

inner B;
B.M = 111111;
B.X = 11112.0;
B.N = 1113;

inner C;
C.M = 222221;
C.X = 22222.0;
C.N = 22223;

inner D;
inner* DD;
D.M = 33331;
D.X = 3332.0;
D.N = 33333;
DD = &D;

outer E;
inner K;

outer F;
outer* FF;
inner G;

Test.M= 1;

Test.A.a = 444441;
Test.A.b.M = 4441;
Test.A.b.X = 44442.0;
Test.A.b.N = 44443;
Test.A.c.M = 555551;
Test.A.c.X = 555552.0;
Test.A.c.N = 55553;
Test.A.d = 66661.0;
Test.A.f.M = 66661;
Test.A.f.M = 6661;
Test.A.f.M = 6661;
Test.A.f.X = 66661.0;
Test.A.f.N = 77774;
Test.A.g = 77779;
Test.A.h = &B;

Test.B.M = 888881;
Test.B.X = 88882.0;
Test.B.N = 88883;

Test.N = 7.0;

Test.C = &C;

K.M = 999991;
K.X = 99992.0;
K.N = 99993;
E.a = 9991;
E.b.M = 99991;
E.b.X = 9992.0;
E.b.N = 99993;
E.c.M = 9991;
E.c.X = 9992.0;
E.c.N = 9993;
E.d = 99991.0;
E.f.M = 9991;
E.f.M = 99991;
E.f.M = 9991;
E.f.X = 9991.0;
E.f.N = 9994;
E.g = 9999;
E.h = &K;

Test.E = &E;

G.M = 1000000;
G.X = 2.0;
G.N = 300000000;
F.a = 1000;
F.b.M = 100000;
F.b.X = 2.0;
F.b.N = 300000;
F.c.M = 100;
F.c.X = 2.0;
F.c.N = 3000000;
F.d = 1.0;
F.f.M = 10000000;
F.f.M = 10000000;
F.f.M = 100000000;
F.f.X = 1.0;
F.f.N = 400;
F.g = 90000;
F.h = &G;

FF = &F;
Test.F = &FF;

printf("The value is: %d %d %d %f %d", Test.A.c.M, Test.A.f.N, Test.B.N, Test.C->X, (*(Test.F))->h->N);

return 0;

}
