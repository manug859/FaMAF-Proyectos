#include <stdio.h>
#include <stdbool.h>

char pedir_letra() {
	char letra;
	printf("Ingrese una letra: ");
	scanf("%c", &letra);
	return letra;
}

bool es_vocal(char letra) {
	if (letra=='a' || letra=='A' || letra=='e' || letra=='E' || letra=='i' || letra=='I' || letra=='o' || letra=='O' || letra=='u' || letra=='U') {
        printf("La letra SI es vocal.\n");
		return true;
	} else {
        printf("La letra NO es vocal.\n");
		return false;
	}
}

int main(void) {
	char letra = pedir_letra();
	es_vocal(letra);
return 0;
}