#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

int pedir_enteros(char nombre) {
    int x;
    printf("Ingrese un valor para %c : ", nombre);
    scanf("%d", &x);
    assert((x<=0 || x>0));
return x;
}

int calcular_minimo (int x, int y) {
    assert(x!=y);
    if(x<y) {
        return x;
    }
        else {
            return y;
        }
}

int main(void) {
    int n; int k; int minimo;
    n = pedir_enteros('n');
    k = pedir_enteros('k');
    minimo = calcular_minimo(n, k);
    printf("El minimo es %d\n", minimo); 
return 0;
}