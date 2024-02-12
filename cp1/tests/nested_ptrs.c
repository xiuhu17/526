#include <stdio.h>

struct SimpleStruct1 {
  int A;
};

struct SimpleStruct2 { 
  int M; 
  struct SimpleStruct1* S1; 
};
 
int main() {
  struct SimpleStruct1 S1; 
  S1.A = 1;
  struct SimpleStruct2 S = {10, &S1};
  printf("nested_ptrs: %d %d\n", S.M, S.S1->A );
  return 0;
}