#include <stdio.h>
#include <assert.h>

#define N 5

struct sum_t {
int total_multiplo ;
int total_no_multiplo ;
};

int pedir_entero(char nombre) {
    int x;
    printf("Ingrese un valor para %c = ", nombre);
    scanf("%d",&x);
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

struct sum_t suma_multiplo (int k, int a[], int tam) {
    struct sum_t res;
    int i = 0;
    res.total_multiplo = 0;
    res.total_no_multiplo = 0;
        while(i<tam) {
            if(a[i]%k==0) {
                res.total_multiplo = res.total_multiplo + a[i];
            }
            else {
                res.total_no_multiplo = res.total_no_multiplo + a[i];
            }
        i = i+1;
        }
        
return res;
}

void print_res(struct sum_t res) {
    printf("Total multiplo = %d\n", res.total_multiplo);
    printf("Total no multiplo = %d\n", res.total_no_multiplo);
}

int main(void) {
    struct sum_t res;
    int a[N];
    int mul = pedir_entero('k');
    pedir_arreglo(N,a);

    res = suma_multiplo(mul, a, N);
    print_res(res);

return 0;    
}