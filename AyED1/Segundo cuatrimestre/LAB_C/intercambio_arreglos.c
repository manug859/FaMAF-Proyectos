#include <stdio.h>
#include <assert.h>

#define N 5

int pedir_entero(char nombre) {
int x;
  printf("Ingrese un valor para %c = ", nombre);
  scanf("%d",&x);
return x;
}

void pedir_arreglo(int tam, int a[]) {
int i = 0;
  while(i<tam) {
    printf("Ingrese un numero para el indice a[%d] = ", i);
    scanf("%d", &a[i]);
    i = i + 1;
  }
}

void intercambiar(int tam, int a[], int i, int j) {
  int temp = a[i];
  a[i] = a[j];
  a[j] = temp;

  assert(i<tam && j<tam && i!=j);
}

void imprimir_arreglo(int tam, int a[]) {
  int i = 0;
  while(i<tam) {
    printf("\nEl valor de la posicion %d es = %d\n", i, a[i]);
    i=i+1;
  }
}

int main(void) {
  int a[N];

  int i = pedir_entero('i');
  int j = pedir_entero('j');
  pedir_arreglo(N, a);
  intercambiar(N, a, i, j);
  imprimir_arreglo(N,a);

return 0;
}
