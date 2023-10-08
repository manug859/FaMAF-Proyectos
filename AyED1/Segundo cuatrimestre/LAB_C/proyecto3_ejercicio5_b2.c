//Proyecto 3
//Manuel Gomez

#include <stdio.h>
#include <stdbool.h>

int x;
int i;
bool res;

int main(void) {
    
    i=2;
    res=true;

    while(i<x&&res) {
        res = res && (x%i != 0);
        i = i + 1;
    }
    printf("res = %d", res);

return 0;
}