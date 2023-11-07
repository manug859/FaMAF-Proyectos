#include <stdio.h>
#include <assert.h>

int pedir_entero(char nombre) {
    int x;
        printf("Ingrese un valor para %c = ", nombre);
        scanf("%d", &x);
    return x;
}

void imprimir_entero(char nombre, int x) {
    printf("El valor de %c es = %d\n", nombre, x);
}

int main(void) {
    int X = pedir_entero('x');
    int Y = pedir_entero('y');
    int Z = pedir_entero('z');
    int x = X;
    int y = Y;
    int z = Z;

    assert(x==X && y==Y && z==Z && y!=0 && z>0);

    x = Y*Z;
    y = X % Z;
    z = X/Y;

    assert(x==Y*Z && y== X % Z && z == X/Y);

    imprimir_entero('x', x);
    imprimir_entero('y', y);
    imprimir_entero('z', z);

return 0;
}