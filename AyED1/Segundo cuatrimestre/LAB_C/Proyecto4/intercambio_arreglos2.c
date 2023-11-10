#include <stdio.h>
#include <assert.h>

#define N 5

int pedir_entero(char nombre) {
    int x;
    printf("Ingrese un valor para %c = ", nombre);
    scanf("%d", &x);
    return x;
}

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
    while (i < tam) {
        printf("Ingrese un numero para el indice a[%d] = ", i);
        scanf("%d", &a[i]);
        i = i + 1;
    }
}

void intercambiar(int tam, int a[], int i, int j) {
    int temp = a[i];
    a[i] = a[j];
    a[j] = temp;

    assert(i < tam && j < tam && i != j);
}

void imprimir_arreglo(int tam, int a[]) {
    printf("[");  // Agregar un corchete de apertura al principio

    for (int i = 0; i < tam; ++i) {
        printf("%d", a[i]);

        // Imprimir coma y espacio si no es el último elemento
        if (i < tam - 1) {
            printf(", ");
        }
    }

    printf("]\n");  // Agregar un corchete de cierre al final
}

int main(void) {
    int a[N];

    int i = pedir_entero('i');
    assert(i>=0 && i<N);
    int j = pedir_entero('j');
    assert(j>=0 && j<N);
    
    pedir_arreglo(N, a);
    intercambiar(N, a, i, j);
    imprimir_arreglo(N, a);

    return 0;
}
