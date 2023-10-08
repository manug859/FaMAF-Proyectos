//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

bool pedir_booleano(char *name) {
    int x;
    printf("Ingrese un valor de verdad para %c = ", *name);
    scanf("%d", &x);
    return x >= 1;
}

void imprimir_booleano(char *name, bool x) {
    if (x) {
        printf("%c es True\n", *name);
    } else {
        printf("%c es False\n", *name);
    }
}

int main(void) {
    
    char name_variable;
    printf("Ingrese un nombre para su variable : ");
    scanf(" %c", &name_variable);

    bool y = pedir_booleano(&name_variable); 
    imprimir_booleano(&name_variable, y);

    return 0;
}
