#include <stdio.h>

#define N 5

void pedir_arreglo(int tam, int a[]) {
  int i = 0;
    while(i<tam) {
      printf("Ingrese un numero para el indice a[%d] = ", i);
      scanf("%d", &a[i]);
      i=i+1;
    }
}

int sumatoria(int tam, int a[]) {
  int i = 0;
  int res = 0;
    while(i<tam) {
      res = res + a[i];
      i=i+1;
    }
return res;
}

int main(void) {
int a[N];

pedir_arreglo(N, a);
int res = sumatoria(N, a);
printf("El resultado de la suma de los elementos del arreglo es : %d\n", res);
return 0;
}

