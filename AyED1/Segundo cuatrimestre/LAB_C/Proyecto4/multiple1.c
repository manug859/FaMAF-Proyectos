#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

int main() {
    int X = 10;  //Cualquier valor entero.
    int Y = 36;  //Cualquier valor entero.
    int x = X;
    int y = Y;
    assert(x == X && y == Y);

    y = x + y;
    x = x + 1;
    
    assert(x == (X + 1) && y == (X + Y));

    printf("x = %d\n", x);
    printf("y = %d\n", y);
    printf("X = %d\n", X);
    printf("Y = %d\n", Y);

    return 0;
}