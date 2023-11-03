#include <stdio.h>
#include <assert.h>


int suma_hasta(int n) {
int i = 0;
int suma = 0;
    while(n>=i) {
        suma = (suma+i);
        i++;
    }
return suma;
}

int main(void) {
    int numero;
    printf("Ingrese un valor entero = ");
    scanf("%d", &numero);

        if(numero>0) {
            int res = suma_hasta(numero);
            printf("\nEl resultado es : %d\n",res);
        }
            else {
                printf("\nERROR. El numero a ingresar debe ser mayor estricto que '0'\n");
            }  
return 0;
}