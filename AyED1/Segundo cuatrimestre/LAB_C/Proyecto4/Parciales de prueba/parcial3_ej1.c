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
    int x = X;
    int y = Y;

    assert((x==X) && (y==Y) && (X*Y != 0));

    x = Y * X;
    y = X * Y;

    assert((x == X*Y) && (x == y));

    imprimir_entero('x', x);
    imprimir_entero('y', y);

return 0;
}