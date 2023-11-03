//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int y;
int z;
int tempb;
int tempw;
bool b;
bool w;

int main(void) {
    printf("Ingrese un valor para x: ");
    scanf("%d", &x);
    printf("Ingrese un valor para y: ");
    scanf("%d", &y);
    printf("Ingrese un valor para z: ");
    scanf("%d", &z);
    
    printf("Ingrese un valor booleano para b: ");
    scanf("%d", &tempb);
    b = tempb;
    printf("Ingrese un valor booleano para w: ");
    scanf("%d", &tempw);
    w = tempw;

    printf("x + y + 1 = ");
    printf("%d\n", x+y+1);

    printf("z * z + y * 45 - 15 * x = ");
    printf("%d\n", z*z+y*45-15*x);

    printf("y - 2 == (x * 3 + 1) div 5 = ");
    printf("%d\n", y-2==(x*3+1)%5);

    printf("y / 2 * x = ");
    printf("%d\n", y/2*x);

    printf("y < x * z = ");
    printf("%d\n", y<x*z);

    printf("x mod 4 == 0 = ");                      // True
    printf("%d\n", (x%4)==0);

    printf("x + y == 0 && y - x == (-1) * z = ");   // True
    printf("%d\n", x+y == 0&&y-x == (-1)*z);

    printf("not b && w = ");                        // False
    printf("%d\n", ! b&&w );

    return 0;
}

/*
¿En la ultima expresion, que tipo tiene el resultado en lenguaje “C”?
Dado que es un resultado booleano, devuelve 1 para Verdadero y 0 para Falso.
*/