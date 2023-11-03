#include <stdio.h>
#include <assert.h>

int main(void) {
    int X = 0;
    int Y = 1;
    int Z = 2;
    int x = X;
    int y = Y;
    int z = Z;

assert(x == X && y == Y && z == Z);

    z = y + x;
    x = y;
    y = y + z + x;

assert((x == Y)&&(y == Y + Z + X)&&(z == Y + X));

    printf("\nx = %d\n", x);
    printf("\ny = %d\n", y);
    printf("\nz = %d\n", z);
    printf("\nX = %d\n", X);
    printf("\nY = %d\n", Y);
    printf("\nZ = %d\n", Z);

return 0;
}