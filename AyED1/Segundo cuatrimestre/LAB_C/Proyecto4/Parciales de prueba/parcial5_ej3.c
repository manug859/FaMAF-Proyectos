#include <stdio.h>
#include <limits.h>

#define N 5
 
struct paridad_t {
int maximo_par;
int minimo_impar;
};

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam)  {
            printf("Ingrese un valor del arreglo en la posicion a[%d] = ", i);
            scanf("%d", &a[i]);
            i=i+1;
        }
}

struct paridad_t maxmin_paridad(int a[], int tam) {
    struct paridad_t res;
    res.maximo_par = -INT_MAX;
    res.minimo_impar = INT_MAX;
    int i = 0;
        while(i<tam) {
            if(a[i]%2==0) {
                if(a[i]>res.maximo_par) {
                res.maximo_par = a[i];
                }
            }
            if(a[i]%2==1) {
                if(a[i]<res.minimo_impar) {
                res.minimo_impar = a[i];
                }
            }
        i = i+1;
        }
    return res;
}

void print_res (struct paridad_t res) {
    printf("El valor PAR MAXIMO es = %d\n", res.maximo_par);
    printf("El valor IMPAR MINIMO es = %d\n", res.minimo_impar);
}

int main(void) {
    struct paridad_t res;
    int a[N];
    pedir_arreglo(N, a);

    res = maxmin_paridad(a, N);
    print_res(res);

return 0;
}