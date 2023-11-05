#include <stdio.h>
#include <assert.h>

int pedir_entero(char nombre) {
    int x;
    printf("Ingrese un valor para %c = ", nombre);
    scanf("%d",&x);
return x;
}

void imprimir_entero(char nombre, int n) {
    printf("%c = %d\n", nombre, n);
}

int main(void) {
    
    int x = pedir_entero('x');
    int y = pedir_entero('y');
    int z = pedir_entero('z');
    int X = x;
    int Y = y;
    int Z = z;

    assert((x == X) && (y == Y) && (z == Z)&& (X!=0) && (Y % X == 0));

    x = y / z;
    y = y + z;
    z = x * y;

    assert((x == Y / X)&&(y == Y + Z)&&(z == X * Y));

    imprimir_entero('x', x);
    imprimir_entero('y', y);
    imprimir_entero('z', z);


return 0;
}