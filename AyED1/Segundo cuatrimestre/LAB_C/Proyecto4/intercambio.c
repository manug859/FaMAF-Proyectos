#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

int a;
int b;

int pedir_enteros (char nombre) {
    int x;
    printf("Ingrese una variable para %c : ", nombre);
    scanf("%d", &x);
    assert(x<=0 || x>0);

return x;
}

void intercambio () {
    int temp = a;
    a = b;
    b = temp;
}

int main(void) {
    a = pedir_enteros('X');
    b = pedir_enteros('Y');
    printf("\nVariables originales de X = %d, Y = %d\n", a, b);
    intercambio();
    printf("\nVariables originales post-intercambio de X = %d, Y = %d\n", a, b);
return 0;
}