#include <stdio.h>
#include <assert.h>

struct lapso_t {
int horas;
int minutos;
int segundos;
};


int pedir_segundos() {
    int x;
        printf("Ingrese una cantidad de segundos = ");
        scanf("%d", &x);
    return x;
}

struct lapso_t calcular_lapso(int segs) {
    assert(segs>=0);
    struct lapso_t res;
    res.segundos = (segs);
    res.minutos =  (segs)/60;
    res.horas =    (segs/3600); 

return res;
}

void imprimir_res(struct lapso_t res) {
    printf("Segundos : %ds\n", res.segundos);
    printf("Minutos : %dmin\n", res.minutos);
    printf("Horas : %dHs\n", res.horas);
}

int main(void) {
    struct lapso_t res;
    int segs = pedir_segundos();
        if(segs<0) {
            printf("ERROR. Programa finalizado.");
            return 0;
        }
    res = calcular_lapso(segs);
    imprimir_res(res);

return 0;
}

