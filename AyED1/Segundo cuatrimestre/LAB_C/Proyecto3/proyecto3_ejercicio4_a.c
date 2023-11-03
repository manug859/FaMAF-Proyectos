//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int y;

int main(void) {
    printf("Ingrese un valor para x e y\n");
    scanf("%d", &x);
    scanf("%d", &y);
    
    printf("Los valores son para x = '%d' e y = '%d'\n",x ,y);

    if(x>=y) {
        x=0;
        printf("Como 'x' es mayor o igual a 'y', entonces x = %d\n", x);

    }
    if(x<=y) {
        x=2;
        printf("Como 'x' es menor o igual a 'y', entonces x = %d\n", x);
    }

}

