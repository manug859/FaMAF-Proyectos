#include <stdio.h>

#define N 5

struct multiplos_t {
int n_multiplos_dos;
int n_multiplos_tres;
int n_multiplos_cinco;
};

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam) {
            printf("Ingrese un valor para el arreglo cuyo indice es a[%d] = ", i);
            scanf("%d",&a[i]);
            i=i+1;
        }
}

struct multiplos_t contar_multiplos(int a[], int tam) {
    struct multiplos_t res;
    int i = 0;
    int mul2 = 0;
    int mul3 = 0;
    int mul5 = 0;
        while(i<tam) {
            if(a[i]%2==0) {
                mul2 = mul2 + 1;
            }
            if(a[i]%3==0) {
                mul3 = mul3 + 1;
            }
            if(a[i]%5==0) {
                mul5 = mul5 + 1;
            }
        i = i+1;
        }
    res.n_multiplos_dos = mul2;
    res.n_multiplos_tres = mul3;
    res.n_multiplos_cinco = mul5;

return res;
}

void imprimir_resultados(struct multiplos_t res) {
    printf("\nLos numeros multiplo de 2 son = %d\n", res.n_multiplos_dos);
    printf("\nLos numeros multiplo de 3 son = %d\n", res.n_multiplos_tres);
    printf("\nLos numeros multiplo de 5 son = %d\n", res.n_multiplos_cinco);
}

int main(void) {
    int a[N];
    pedir_arreglo(N,a);
    struct multiplos_t res;

    res = contar_multiplos(a,N);
    imprimir_resultados(res);

return 0;
}