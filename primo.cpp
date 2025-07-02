#include <cmath>
#include <iostream>

using namespace std;

bool teste_primo(int num) {

	if (num <= 1) {
		return false;
	}

	for (int i = 2; i <= sqrt(num); ++i) {

		if (num % i == 0) {
			return false;
		}
	}

	return true;
}
int main() {

	int numero;
	cin >> numero;

	if (teste_primo(numero)) {
		cout << "Primo" << endl;
	} else {
		cout << "Não é primo" << endl;
	}

// Assinado Zbk

	return 0;
}