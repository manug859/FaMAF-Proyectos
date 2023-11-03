#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

struct div_t {
    int cociente;
    int resto;
};

int pedir_entero (char nombre) {
    int x;
    printf("Ingrese un valor entero para %c : ", nombre);
    scanf("%d",&x);
return x;
}

struct div_t division (int x, int y) {
    struct div_t res;

    assert(x>=0 && y>0);
    res.cociente = x/y;
    res.resto = x%y;

return res;      
};

void muestra_div_t(struct div_t res) {
    printf("Cociente = %d, Resto = %d\n", res.cociente, res.resto);
}

int main(void) {
    struct div_t div;

    int x = pedir_entero('x');
    int y = pedir_entero('y');

    div = division(x,y);
    muestra_div_t(div);
return 0;
}