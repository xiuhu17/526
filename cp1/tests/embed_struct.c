#include <stdio.h>
#include <stdlib.h>

struct Struct1 { int A; double B; };
struct Struct2 { int M; struct Struct1 X; };

/* Although this is a trivial case of scalar replacement, it is
 * instructive to study the unoptimized code.  Run "make trivial.llvm.bc",
 * disassemble the resulting file, and study it carefully to understand the
 * LLVM code that is generated.
 */
int
main(int argc, char** argv)
{
  struct Struct1 S1;
  S1.A = 10;
  S1.B = 0.142857;
  struct Struct2 S2;
  S2.M = 100;
  S2.X.A = S1.A;
  S2.X.B = S1.B;

  // struct Struct2 S22;

  printf("embed_struct: %d %f %d %d\n", S1.A, S1.B, S2.M, S2.X.A);
  return 0;
}
