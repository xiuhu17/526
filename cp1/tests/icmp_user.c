#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <assert.h>

struct Struct1 { int A; int* B; };


int
main(int argc, char** argv)
{
  struct Struct1 s1;
  s1.A = 10;
  s1.B = NULL;


  // Really?? 
  bool temp = (&s1 == NULL);
  assert(temp);
//   if (&s1 == NULL) {
//     printf("ababababababalololol\n");
//   }

  
  return 0;
}
