#include <stdio.h>
#include <assert.h>
#include <limits.h>

#define N 5

int pedir_entero(char nombre) {
    int x;
        printf("Ingrese un valor para %c = ", nombre);
        scanf("%d", &x);
    return x;
}

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam) {
            printf("Ingrese un valor para el arreglo cuyo indice es el numero a[%d] = ", i);
            scanf("%d",&a[i]);
            i=i+1;
        }
}

int mulitplo_maximo(int a[], int tam, int k) {
    int i=0;
    int num_max = -INT_MAX;
        while(i<tam) {
            if(a[i]%k == 0) {
                if(a[i]>num_max) {
                    num_max = a[i];
                }
            }
        i = i+1;
    }
    return num_max;
}

int main(void) {
    int a[N];
    pedir_arreglo(N, a);
    int k = pedir_entero('k');
    assert(k!=0);
    int num_max = mulitplo_maximo(a, N, k);

    printf("El mayor multiplo de '%d' es el numero %d", k, num_max);
    
    return 0;
}