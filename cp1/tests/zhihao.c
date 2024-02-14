#include <stdlib.h>
#include <stdio.h>

typedef struct basic {
    int id;
    double rating;
    int count;
} basic;

typedef struct intermediate {
    int code;
    basic* detail; 
    double factor;
    basic* extra; 
} intermediate;

typedef struct advanced {
    int number;
    intermediate* part1; 
    intermediate* part2; 
    double coefficient;
    int total;
} advanced;

int main() {
    // Declare 'basic' structures on the stack
    basic detail1 = {1, 9.5, 100};
    basic extra1 = {2, 8.5, 200};
    basic detail2 = {3, 7.5, 300};
    basic extra2 = {4, 6.5, 400};

    intermediate part1, part2;

    part1.detail = &detail1;
    part1.extra = &extra1;
    part2.detail = &detail2;
    part2.extra = &extra2;

    part1.code = 101;
    part1.factor = 1.1;
    part2.code = 202;
    part2.factor = 2.2;

    advanced complexExample;
    complexExample.part1 = &part1;
    complexExample.part2 = &part2;

    complexExample.number = 1000;
    complexExample.coefficient = 3.3;
    complexExample.total = 500;

    printf("Detail1 ID: %d, aaaaa: %.1f, bbbbb: %d\n", complexExample.part1->detail->id, complexExample.part1->detail->rating, complexExample.part1->detail->count);
    printf("Part1 Code: %d, aaaa: %.1f\n", complexExample.part1->code, complexExample.part1->factor);
    printf("Complex Total: %d, aaa: %.1f\n", complexExample.total, complexExample.coefficient);

    return 0;
}
