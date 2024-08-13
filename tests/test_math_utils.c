#include <stdio.h>
#include <assert.h>
#include "math_utils.h"

void test_sum() {
    assert(sum(2, 3) == 5);
    assert(sum(-1, 1) == 0);
    assert(sum(0, 0) == 0);
    assert(sum(-5, -5) == -10);
}

int main() {
    test_sum();
    printf("All tests passed!\n");
    return 0;
}
