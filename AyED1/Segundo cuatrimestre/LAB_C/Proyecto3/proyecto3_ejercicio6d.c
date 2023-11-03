//Proyecto 3
//Manuel Gomez

#include <stdio.h>

void imprimir_hola(void) {
    printf("hola ");
}

void imprimir_chau(void) {
    printf("chau ");
}

int main (void) {
    for(int x; x<=2; x++)
    {
    imprimir_hola(); imprimir_hola();
    }
    for(int x; x<=2; x++){
    imprimir_chau(); imprimir_chau();
    }
return 0;
}