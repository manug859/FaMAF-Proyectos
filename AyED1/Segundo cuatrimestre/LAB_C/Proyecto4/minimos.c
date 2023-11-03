#include <stdio.h>
#include <assert.h>
#include <limits.h>

#define N 5

void pedir_arreglo(int tam, int a[]) {
int i = 0;
    while(i<tam) {
      printf("Ingrese un numero para el indice a[%d] = ", i);
      scanf("%d", &a[i]);
      i=i+1;
    }
}

//escirbir de nuevo usando bien las identaciones

int minimo_pares(int tam, int a[]) {
    int i = 0;
    int min_p = INT_MAX;
        while(i<tam) {
            if(a[i]%2==0) {
                if(a[i] < min_p){
                    min_p = a[i];
                }
        }
        i = i+1;
    }
return min_p;
}

int minimo_impares(int tam, int a[]) {
    int i = 0;
    int min_i = INT_MAX;
        while(i<tam) {
            if(a[i]%2==1) {
                if(a[i]<min_i) {
                    min_i = a[i];
                }
            }
            i = i+1;
        }
return min_i;
}

int main(void) {
    int a[N];
    int minimo_global;
    pedir_arreglo(N, a);

    int min_par = minimo_pares(N,a);
    int min_impar = minimo_impares(N,a);

    printf("\nEl valor minimo PAR es igual %d\n", min_par);
    printf("\nEl valor minimo IMPAR es igual %d\n", min_impar);

    if(min_par<min_impar) {
        minimo_global = min_par;
        printf("El minimo del arreglo global es = %d", minimo_global);
    }
        else {
            minimo_global = min_impar;
            printf("El minimo del arreglo global es = %d", minimo_global);
        }
return 0;
}