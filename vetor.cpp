#include <cmath>
#include <iostream>

using namespace std;

int main() {

	int tamanho;
	cin >> tamanho;
	int vetor [(tamanho)];

	for (int i = 0; i < tamanho; i++ ) {
		cin >> vetor[i];
	}
	    int maior = vetor[0];
	    
	for (int i = 0; i < tamanho; i++ ) {

		if (vetor[i] > maior) {
			maior = vetor[i];
		}
	}

	cout << maior << endl;

// Assinado Zbk

	return 0;
}