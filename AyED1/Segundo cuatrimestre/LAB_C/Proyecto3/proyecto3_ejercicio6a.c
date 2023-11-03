//Proyecto 3
//Manuel Gomez

#include <stdio.h>

int pedir_entero(char *name) {
    int x;
    printf("Ingrese un valor para la variable %c: ", *name);
    scanf("%d", &x);
    return x;
}

int imprimir_entero(char *name, int x) {
    printf("%c = %d\n", *name, x);
    return 0;
}

int main(void) {
    char var;
    printf("Ingrese un nombre para su variable: ");
    scanf("%c", &var);

    int y = pedir_entero(&var);
    imprimir_entero(&var, y);
    return 0;
}