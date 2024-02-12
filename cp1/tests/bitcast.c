#include <stdio.h>
#include <stdlib.h>

struct Struct1 { int A; double B; };
struct Struct2 { int M; double X; };

/* Although this is a trivial case of scalar replacement, it is
 * instructive to study the unoptimized code.  Run "make trivial.llvm.bc",
 * disassemble the resulting file, and study it carefully to understand the
 * LLVM code that is generated.
 */
int
main(int argc, char** argv)
{
  struct Struct1 s1;
  s1.A = 10;
  s1.B = 0.142857;

  struct Struct1* S1 = &s1;

  struct Struct2* S2 = (struct Struct2 *) S1;
  S2->M = 100; // actually modifying S1->A
  S2->X = 1.42857; // actually modifying S1->B

  if (S1->A == S2->M) {
    printf("They are equal!\n");
  }
  
  return 0;
}
