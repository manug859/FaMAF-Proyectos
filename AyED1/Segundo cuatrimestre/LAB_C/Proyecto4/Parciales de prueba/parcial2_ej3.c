#include <stdio.h>

#define N 5

struct paridad_t {
int n_pares;
int n_impares;
int n_ceros;
};

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam) {
            printf("Ingrese un valor para la posicion a[%d] del arreglo = ", i);
            scanf("%d",&a[i]);
            i=i+1;
        }
}

struct paridad_t contar_pares_impares(int a[], int tam) {
    struct paridad_t res;
    res.n_pares = 0;
    res.n_impares = 0;
    res.n_ceros = 0;
    int i = 0;
        while(i<tam) {
            if(a[i]%2==0 && a[i]!=0) {
                res.n_pares = res.n_pares + 1;
            }
            
            if(a[i]%2==1 && a[i]!=0) {
                res.n_impares = res.n_impares + 1;
            }
            
            if(a[i]==0) {
                res.n_ceros = res.n_ceros + 1;
            }
            i=i+1;
        }
return res;
}

void print_res(struct paridad_t res) {
    printf("Cantidad de pares = %d\n", res.n_pares);
    printf("Cantidad de impares = %d\n", res.n_impares);
    printf("Cantidad de ceros = %d\n", res.n_ceros);


}

int main(void) {
    struct paridad_t res;
    int a[N];
    pedir_arreglo(N, a);
    res = contar_pares_impares(a, N);
    print_res(res);
    
return 0;
}