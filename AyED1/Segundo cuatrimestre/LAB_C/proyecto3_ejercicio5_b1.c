//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int y;
int i;

int main(void) {
    printf("Ingresa tres valores para x, y e i = ");
    scanf("%d", &x);
    scanf("%d", &y);
    scanf("%d", &i);
    printf("Los valores son x = %d, y = %d, i = %d \n", x, y ,i);
    i=0;

    
    while(x>=y) {
        x=x-y;
        i=i+1;

        printf("\nx = %d\n", x);
        printf("\ny = %d\n", y);
        printf("\ni = %d\n", i);

    }
    return 0;
}

/*
σ01 | x = 10, y = 3,  i = 1

σ11 | x = 7,  y = 3,  i = 2

σ21 | x = 4,  y = 3,  i = 3

σ31 | x = 1,  y = 3,  i = 4
*/