//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int y;
int z;
int m;

int pedir_enteros(char name) {
    int var;
    printf("Ingrese un valor para la variable %c = ", name);
    scanf("%d", &var);
    return var;
}

int cuenta_enteros(int x, int y, int z, int m) {
    
    if(x<y) {
        m=x;
        printf("Como 'x' es menor que 'y' -> m=%d\n", x);
    }
        else {
            m=y;
            printf("Como 'x' es mayor o igual que 'y' -> m=%d\n", y);
        }
    if(m>=z)  {
        m=z;
        printf("Y ademas 'm' es mayor o igual que 'z'. -> m=%d\n", z);
    }
return m;
}
void imprimir_valores(char name, int var) {
    printf("Por lo tanto %c = %d\n", name, var);
}

int main(void) {

    int x = pedir_enteros('x');
	int y = pedir_enteros('y');
	int z = pedir_enteros('z');
	int m = pedir_enteros('m');
    int output = cuenta_enteros(x, y, z, m);
    imprimir_valores('m', output);
	return 0;
}