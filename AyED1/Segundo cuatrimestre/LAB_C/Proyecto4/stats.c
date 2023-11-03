#include <stdio.h>
#include <float.h>

#define N 5

struct datos_t {
float maximo;
float minimo;
float promedio;
};

void pedir_arreglo(int tam, float a[]) {
    int i = 0;
    while (i < tam) {
        printf("Ingrese un valor para el indice a[%d] = ", i);
        scanf("%f", &a[i]);
        i=i+1;
    }
}

struct datos_t stats(float a[], int tam) {
    struct datos_t res;
    float maximo = -FLT_MAX;
    float minimo = FLT_MAX;
    float promedio = 0;
    int i = 0;

    while (i < tam) {
        if (a[i] > maximo) {
            maximo = a[i];
        }
        if (a[i] < minimo) {
            minimo = a[i];
        }
        promedio = promedio + a[i];
        i=i+1;
    }
    res.promedio = promedio/i;
    res.maximo = maximo;
    res.minimo = minimo;
return res;
}

void resultados(struct datos_t res) {
    printf("\nMaximo = %f\n", res.maximo);
    printf("Minimo = %f\n", res.minimo);
    printf("Promedio = %f\n", res.promedio);
}

int main(void) {
    struct datos_t res;
    float a[N];
    pedir_arreglo(N, a);

    res = stats(a, N);
    resultados(res);

return 0;
}