#include <stdio.h>


int unoA(void) {
  printf("\nEjercicio 3.a\n");
    int x;
    printf("Escribite una equis, y rapido\n");
    scanf("%d",&x);
    x=5;
    printf("%d\n", x);
    return 0;
}

int unoB(void) {
  printf("\nEjercicio 3.b\n");
  int x; 
  int y;
  
  printf("Ingrese un valor para x e y = ");
  scanf("%d", &x);
  scanf("%d", &y);

  printf("Ingresaste para tu x=%d y para tu y=%d\n", x, y);

  printf("Ahora tu 'x' vale = ");
  printf("%d\n", x+y);

  printf("Y tu 'y' vale = ");
  printf("%d\n", y+y);
  
return 0;
}

int main(void) {
  unoA();
  unoB();
  return 0;
}






/*
|      programa      | usuario ingresa un σ0 | produce una salida σ |
1.a ejecución 1      |           1           |          5           |
1.a ejecución 2      |           2           |          5           |
1.a ejecución 3      |         46372         |          5           |
1.b ejecución 1      |       x:=5, y:=2      |       x=7, y=10      |
1.b ejecución 2      |       x:=1, y:=2      |       x=3, y=4       |
1.b ejecución 3      |      x:=45, y:=123    |     x=168, y=246     |
1.c ejecución 1      |       x:=5, y:=2      |      y=10, x=7       |
1.c ejecución 2      |       x:=1, y:=2      |       y=4, x=3       |
1.c ejecución 3      |      x:=45, y:=123    |     y=246, x=168     |
*/