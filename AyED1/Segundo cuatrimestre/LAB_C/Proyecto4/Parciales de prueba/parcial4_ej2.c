#include <stdio.h>
#include <assert.h>

struct color_t {
int rojo ;
int verde ;
int azul ;
};

int pedir_entero() {
    int x;
        printf("Ingrese un color (valor entero) para calcular su composicion = ");
        scanf("%d", &x);
    return x;
}

struct color_t calcular_color (int color_id) {
    assert(color_id>0 && color_id<=16777215);
    struct color_t res;
    res.azul =  (color_id) / 65536;
    res.verde = (color_id % 65536) / 256;
    res.rojo =  (color_id % 65536) % 256;

return res;
}

void imprimir_res(struct color_t res) {
    printf("Azul  : %d\n", res.azul);
    printf("Verde : %d\n", res.verde);
    printf("Rojo  : %d\n", res.rojo);
}

int main(void) {
    struct color_t res;
    int color = pedir_entero();
        if(color>16777215) {
            printf("ERROR. Programa finalizado.");
            return 0;
        }
    res = calcular_color(color);
    imprimir_res(res);
return 0;
}