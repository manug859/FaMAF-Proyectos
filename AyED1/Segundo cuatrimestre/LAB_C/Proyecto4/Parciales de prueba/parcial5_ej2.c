#include <stdio.h>
#include <assert.h>

#define N 5

int pedir_entero(char nombre) {
    int x; 
    printf("Ingrese un valor para %c = ", nombre);
    scanf("%d", &x);
return x;
}

void pedir_arreglo(int tam, int a[]) {
    int i = 0;
        while(i<tam)  {
            printf("Ingrese un valor del arreglo en la posicion a[%d] = ", i);
            scanf("%d", &a[i]);
            i=i+1;
        }
}

int multiplica_multiplos(int a[], int tam, int k) {
    int i = 0;
    int multiplos = 1;
        while(i<tam) {
            if(a[i]%k==0) {
                multiplos = multiplos * a[i];
            }
          i = i+1;   
        }
       
return multiplos;
}

int main(void) {
    int a[N];
    int k = pedir_entero('k');
    assert(k!=0);
    pedir_arreglo(N, a);

    int multiplos = multiplica_multiplos(a, N, k);
    printf("El valor final es = %d\n", multiplos);
    assert(k!=0);

return 0;
}