#include <assert.h>
#include <stdio.h>

int pedir_entero(char nombre) {
    int x;
        printf("Ingrese un numero para '%c' = ", nombre);
        scanf("%d", &x);
    return x;
}

void imprimir_entero(char nombre, int n) {
    printf("%c = %d\n", nombre, n);
}

int main(void) {
    int X = pedir_entero('x'); 
    int Y = pedir_entero('y'); 
    int Z = pedir_entero('z');  
    int x = X;
    int y = Y;
    int z = Z;

    assert((x==X)&&(y==Y)&&(z==Z)&&(x!=0));

    x = 2*Y + X;
    y = Z+X;
    z = Y/X;

    assert((x == 2 * Y + X) && (y == Z + X) && (z == Y / X));

imprimir_entero('x', x);
imprimir_entero('y', y);
imprimir_entero('z', z);

return 0;
}