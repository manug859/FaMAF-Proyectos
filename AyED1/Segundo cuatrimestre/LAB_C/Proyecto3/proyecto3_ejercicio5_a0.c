//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int i;

int main(void) {
    printf("Ingresa un numero para i = ");
    scanf("%d", &i);
    printf("\ni = %d \n", i);

    while(i!=0) {
        i=i-1;
        printf("\ni = %d\n ", i);
    }

}