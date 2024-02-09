#include <stdio.h>
#include <stdlib.h>

typedef struct SimpleStruct { int M; double X; int N;} SimpleStruct;

/* Although this is a trivial case of scalar replacement, it is
 * instructive to study the unoptimized code.  Run "make trivial.llvm.bc",
 * disassemble the resulting file, and study it carefully to understand the
 * LLVM code that is generated.
 */
int test_func(SimpleStruct input) {
  SimpleStruct input_ = input;
  printf("testSimple: %d %f % d\n", input_.M, input_.X, input_.N);
  return 0;
}
int test_func_ptr(SimpleStruct* input) {
  SimpleStruct input_ = *input;
  printf("testSimple: %d %f % d\n", input_.M, input_.X, input_.N);
  return 0;
}
int
main(int argc, char** argv)
{
  SimpleStruct S;
  S.M = 10;
  S.X = 0.142857;
  S.N = 12;
  printf("testSimple: %d %f % d\n", S.M, S.X, S.N);
  test_func(S);
  test_func_ptr(&S);
  // test_func(S);

  // test_func_ptr(&S);

  // test_func(S);

  // test_func_ptr(&S);

  // test_func(S);
  return 0;
}
