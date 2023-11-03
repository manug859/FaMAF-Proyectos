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

int prim_iguales(int tam, int a[]) {
    int i = 0;
    int res = 0;
        while(i<tam) {
            if(a[i] == a[0]) {
                res = res + 1;
            }
                else {
                    return res;
                }
            i=i+1;
            
        }
return res;
}

int main(void) {
    
    int a[N];
    pedir_arreglo(N, a);
    int res = prim_iguales(N,a);
    printf("La longitud de los elementos iguales seguido del primero es = %d \n", res);

return 0;
}