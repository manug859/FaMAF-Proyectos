#include <stdio.h>
#include <stdbool.h>

#define N 5

int pedir_entero(char nombre) {
  int x;
  printf("Ingrese un valor para %c para verificar existencia de multiplos : ", nombre);
  scanf("%d",&x);
return x;
}

void pedir_arreglo(int n_max, int a[]) {
  int i = 0;
    while(i<n_max) {
      printf("Ingrese un numero para el indice a[%d] = ", i);
      scanf("%d", &a[i]);
      i=i+1;
    }
}

bool todos_pares(int tam, int a[]) {
int i = 0;
bool par;
  while(i<tam) {
   par = a[i]%2==0;
   i=i+1;
  }
return par;
}

bool existe_multiplo(int m, int tam, int a[]) {
int i = 0;
bool multiplo;

  while(i<tam) {
    multiplo = a[i]/m == 0;
    i=i+1;
  }
return multiplo;
}

int main(void) {
  int a[N];
  pedir_arreglo(N,a);
  int m = pedir_entero('m');

bool par = todos_pares(N, a);
bool multiplo = existe_multiplo(m,N, a);

  if(par) {
    printf("Todos pares = True\n");
  } 
    else {
      printf("Todos pares = False\n");
    }
  
  if(multiplo) {
    printf("Existe multiplo = True\n");
  }
    else {
      printf("Existe multiplo = False\n");
    }

}