#include <stdio.h>

#define N 5

struct sum_t {
int inferior;
int superior;
};

int pedir_cota() {
    int x;
        printf("Ingrese un valor para la cota = ");
        scanf("%d", &x);
    return x;
}

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam) {
            printf("Ingrese un valor para la posicion a[%d] en el arreglo =  ", i);
            scanf("%d", &a[i]);
            i = i+1;
        }
}

struct sum_t suma_acotada(int cota, int a[], int tam) {
    struct sum_t res;
    int i = 0;
    res.inferior = 0;
    res.superior = 0;
        while(i<tam) {
            if(a[i]<cota) {
                res.inferior = res.inferior + a[i];
            }
            else {
                res.superior = res.superior + a[i];
            }
        i = i+1;
        }
return res;
}

void print_res(struct sum_t res) {
    printf("Suma superior a cota = %d\n", res.superior);
    printf("Suma inferior a cota = %d\n", res.inferior);
}

int main(void) {
    struct sum_t res;
    int a[N];
    int cota = pedir_cota();
    pedir_arreglo(N, a);

    res = suma_acotada(cota, a, N);
    print_res(res); 
return 0;
}