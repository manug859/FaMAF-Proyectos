#include <stdio.h>

#define N 5

struct comp_t {
int menores; 
int iguales; 
int mayores;
};

int pedir_entero(char nombre) {
    int x;
        printf("Ingrese un valor para %c = ",nombre);
        scanf("%d", &x);
return x;
}

void pedir_arreglo(int tam, int a[]) {
  int i = 0;
    while(i<tam) {
      printf("Ingrese un numero para el indice a[%d] = ", i);
      scanf("%d", &a[i]);
      i=i+1;
    }
}


struct comp_t cuantos(int tam, int a[], int elem) {
    struct comp_t res;
    int i = 0;
    res.menores = 0;
    res.iguales = 0;
    res.mayores = 0;
        while(i<tam) {
            if(a[i]<elem) {
                res.menores = res.menores + 1;
            }
             if(a[i]>elem) {
                res.mayores = res.mayores + 1;
            }
             if(a[i]==elem) {
                res.iguales = res.iguales + 1;
            }
            i=i+1;
        }
return res;
}

void resultados(struct comp_t res) {
    printf("\nMenores = %d\n", res.menores);
    printf("\nIguales = %d\n", res.iguales);
    printf("\nMayores = %d\n", res.mayores);
}

int main(void) {
    
    struct comp_t res;
    int a[N];
    int elem = pedir_entero('x');
    pedir_arreglo(N,a);
    res = cuantos(N, a, elem);
    resultados(res);

return 0;
}