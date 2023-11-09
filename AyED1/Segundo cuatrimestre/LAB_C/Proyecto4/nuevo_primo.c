#include <stdio.h>
#include <stdbool.h>

int pedir_entero(char nombre) {
    int x;
    printf("Ingrese un valor entero mayor a 0 para '%c' = ", nombre);
    scanf("%d", &x);
return x;
}

bool es_primo(int N) {
    int i = 2;
    bool res = true;

    while (i < N && res) {
        res = res && !(N%i==0);
        i = i+1;
    }
    return res;
}

int nesimo_primo(int N) {
    int i = 1;
    int contador_primo = 0;
    int numero_primo = 0;

        while(contador_primo<=N) {
            
            if(es_primo(i)) {
                contador_primo = contador_primo + 1;
                numero_primo = i;
            }
        i = i+1;         
    }
    
return numero_primo;
}

int main(void) {
    int num0 = pedir_entero('x');
        if(num0<=0) {
            printf("Error. Ingrese un numero entero no negativo \n");
            num0 = pedir_entero('x');
        }
        

    int res = nesimo_primo(num0);

        printf("El primo numero %d es = %d", num0, res);
return 0;
}