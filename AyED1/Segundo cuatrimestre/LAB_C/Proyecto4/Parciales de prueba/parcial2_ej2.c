#include <stdio.h>
#include <limits.h>
#include <assert.h>

#define N 5

int pedir_entero(char nombre) {
    int x;
        printf("Ingrese un valor para la variable %c = ", nombre);
        scanf("%d", &x);
    return x;
}

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam) {
            printf("Ingrese un valor para la posicion a[%d] del arreglo = ", i);
            scanf("%d",&a[i]);
            i=i+1;
        }
}

int multiplo_minimo(int a[], int tam, int k) {
    int i = 0;
    int min = INT_MAX;
        while(i<tam) {
            if(a[i]%k==0){
                if(a[i]<min) {
                    min = a[i];
                }
            }
            i=i+1;
        }
    return min;
}

int main(void) {
    int a[N];
    pedir_arreglo(N, a);
    int k = pedir_entero('k');
    assert(k!=0);
    

    int min = multiplo_minimo(a, N, k);
    printf("El multiplo de %d, mas chico del arreglo es %d", k, min);

    return 0;
}