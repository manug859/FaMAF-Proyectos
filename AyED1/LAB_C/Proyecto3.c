#include <stdio.h>
int x;
int y;
int z;

int main (void) {
printf("Escribí un valor x: ");
scanf("%d", &x);
printf("x = ");
printf("%d\n", x);

printf("Escribí un valor y: ");
scanf("%d", &y);
printf("y = ");
printf("%d\n", y);

printf("Escribí un valor z: ");
scanf("%d", &z);
printf("z = ");
printf("%d\n", z);

printf("x + y + 1= ");
printf("%d\n", x+y+1);

printf("z * z + y * 45 - 15 * x= ");
printf("%d\n", z*z+y*45-15*x);

printf("y - 2 == (x * 3 + 1)/5= ");
printf("%d\n", y - 2 == (x * 3 + 1) % 5);

printf("y / 2 * x= ");
printf("%d\n", y / 2 * x);

printf("y < x * z= ");
printf("%d\n", y < x * z);

/*¿En la ́ultima expresión, que tipo tiene el resultado en lenguaje “C”?
En la última expresión 'C' nos devuelve 1 o 0 según corresponda con el estado V o F.
*/

return(0);
}