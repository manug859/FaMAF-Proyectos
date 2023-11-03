#include <stdio.h>
#include <assert.h>
#include <stdbool.h>

int pedir_entero(char nombre) {
    int x;
    printf("Ingrese un numero para la variable %c : ", nombre);
    scanf("%d", &x);
    assert(x >= 0 || x <= 0);
    return x;
}

int modulo (int x) {
    if(x>=0) {
       return x;
    }
        else {
           return -x;
        }
    assert(x>0);
return x;
}

int main(void) {
    int n = pedir_entero('X');
    int modulo_res = modulo(n);
    printf("El modulo es = %d", modulo_res);
return 0;
}

