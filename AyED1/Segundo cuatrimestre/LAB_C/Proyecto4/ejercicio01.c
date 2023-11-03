#include <stdio.h>
#include <assert.h>

int pedir_entero(char name) {
    int entero;
    printf("Ingrese un valor para %c : ", name);
    scanf("%d", &entero);
return entero;
}

int hola_hasta(int n) {
    assert(n>0);
    while(n>0) {
        printf("Hola\n");
        n--;
    }
return n;
}

int main(void) {
    int n;
    n = pedir_entero('n');
    hola_hasta(n);
return 0;
}