#include <stdio.h>
#include <stdlib.h>

struct Struct1 { int A; };
struct Struct2 { struct Struct1 X; };

int
main(int argc, char** argv)
{
  struct Struct2 s2;
  struct Struct2* s2_ptr;
  s2_ptr = &s2;
   
  printf("empty_embed_struct: %d\n", s2_ptr->X.A);
  return 0;
}
