//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int y;
int z;
int m;

int main(void) {

    printf("Ingresa cuatro valores para x, y, z & m = \n");
    scanf("%d", &x);
    scanf("%d", &y);
    scanf("%d", &z);
    scanf("%d", &m);

    printf("Los valores elegidos son x=%d, y=%d, z=%d, m=%d\n", x, y, z, m);
    
    if(x<y) {
        m=x;
        printf("Como 'x' es menor que 'y', m=%d\n", x);
    }
        else {
            m=y;
            printf("Como 'x' es mayor o igual que 'y', m=%d\n", y);
        }
    if(m>=z)  {
        m=z;
        printf("Y ademas 'm' es mayor o igual que 'z'. Entonces m=%d\n", z);
    }    
}

/*
|           σ2               |          Salida σ          |
| x:=5, y:=4, z:=8, m:=0     |            m=4             |
| x:=38, y:=23, z:=-5, m:=12 |            m=-5            |
*/