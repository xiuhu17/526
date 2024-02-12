#include <stdlib.h>
#include <stdio.h>

struct S1 {
    double a;
    int b;
};

struct S2 {
    struct S1* child;
    double c;
    struct S1 nested_child;
};

struct S3 {
    struct S2* child1;
    struct S1** child2;
    int d;
};

struct S4 {
    struct S3* child1;
    struct S2** child2;
    struct S1*** child3;
};

int main() {
    struct S1 s1;
    s1.a = 999.0;
    s1.b = 666;
    struct S1 s11;
    s11.a = 999.0;
    s11.b = 666;
    struct S1 s111;
    s111.a = 999.0;
    s111.b = 666;

    s1.a = 9999;
    s1.b = 6666;
    
    struct S2 s2;
    s2.c = 888.0;
    s2.child = &s1;
    s2.nested_child.a = 1294780193812;
    s2.nested_child.b = 1422078111;

    s2.c = 8888.0;
    s2.child->a = 99999;
    s2.child->b = 66666;

    struct S3 s3;
    s3.d = -961633963;
    s3.child1 = &s2;
    s3.child2 = &(s3.child1->child);

    struct S2 s22;
    s22.c = 1111111111111111.0;
    s22.child = &s111;
    s3.child1->c = 88888;
    *(s3.child2) = s22.child;

    struct S4 s4;
    s4.child1 = &s3;
    s4.child2 = &s3.child1;
    s4.child3 = &s3.child2;
    (*(s4.child2))->nested_child.a = 7777777;
    (*(s4.child2))->nested_child.b = 2222222;

    struct S1* s11111 = **(s4.child3);
    s11111->a = s2.child->a;
    s11111->b = s2.child->b;


    // Accessing all fields in printf statement
    printf("s1.a: %f, s1.b: %d\n", s1.a, s1.b);
    printf("s11.a: %f, s11.b: %d\n", s11.a, s11.b);
    printf("s111.a: %f, s111.b: %d\n", s111.a, s111.b);

    printf("s2.c: %f, s2.child->a: %f, s2.child->b: %d, s2.nested_child.a: %f, s2.nested_child.b: %d\n",
           s2.c, s2.child->a, s2.child->b, s2.nested_child.a, s2.nested_child.b);
    printf("s3.d: %d, s3.child1->c: %f, s3.child2->a: %f, s3.child2->b: %d\n",
           s3.d, s3.child1->c, (*(s3.child2))->a, (*(s3.child2))->b);
    printf("s22.c: %f, s22.child->a: %f, s22.child->b: %d, s22.nested_child.a: %f, s22.nested_child.b: %d\n",
           s22.c, s22.child->a, s22.child->b, s22.nested_child.a, s22.nested_child.b);     
    printf("s4.child1->d: %d, (*s4.child2)->c: %f, (*(*s4.child3))->a: %f, (*(*s4.child3))->b: %d\n",
           s4.child1->d, (*s4.child2)->c, (*(*s4.child3))->a, (*(*s4.child3))->b);


    return 0;
}