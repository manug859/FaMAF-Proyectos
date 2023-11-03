#include <stdio.h>
#include <stdbool.h>

#define N 5

typedef char clave_t;
typedef int valor_t;

struct asoc {
    clave_t clave;
    valor_t valor;
};

void pedir_arreglo_a(int tam, struct asoc a[]) {
    int i = 0;
    while (i < tam) {
        printf("Ingrese una clave y un valor para a[%d]: ", i);
        scanf(" %c", &a[i].clave);  
        scanf(" %d", &a[i].valor);
    i=i+1;
    }
}

clave_t pedir_clave() {
    clave_t clave;
    printf("Ingrese su clave para verificar su existencia en el arreglo: ");
    scanf(" %c", &clave);  
    return clave;
}

bool asoc_existe(int tam, struct asoc a[], clave_t c) {
    int i = 0;
    while (i < tam) {
        if (a[i].clave == c) {
            return true;
        }
        i = i + 1;
    }
    return false;
}

int main(void) {
    struct asoc a[N];
    pedir_arreglo_a(N, a);
    clave_t clave = pedir_clave();
    bool existe_clave = asoc_existe(N, a, clave);

    if (existe_clave) {
        printf("La clave '%c' si existe en el arreglo\n", clave);
    } else {
        printf("La clave '%c' no existe en el arreglo\n", clave);
    }
    return 0;
}
