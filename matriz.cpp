#include <iostream>
using namespace std;

int main() {
    int n;
    string operacao;
    cin >> n;
    int tamanho = n * n;
    int matriz1[tamanho];
    int matriz2[tamanho];
    int matrizr[tamanho];

    for (int i = 0; i < tamanho; i++) {
        cin >> matriz1[i];
    }
    for (int i = 0; i < tamanho; i++) {
        cin >> matriz2[i];
    }

    while (operacao != "a" and operacao != "s" and operacao != "m") {
        cin >> operacao;
    }

    if (operacao == "a") {  // soma
        for (int i = 0; i < tamanho; i++) {
            matrizr[i] = matriz1[i] + matriz2[i];
        }
    } 
    else if (operacao == "s") {  // subtração
        for (int i = 0; i < tamanho; i++) {
            matrizr[i] = matriz1[i] - matriz2[i];
        }
    }
    else if (operacao == "m") {  // multiplicação de matrizes (n x n) (Usei ajuda do GPT)
        // multiplicação matriz: matrizr[i,j] = soma_k matriz1[i,k] * matriz2[k,j] (Usei ajuda do GPT)
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                int soma = 0;
                for (int k = 0; k < n; k++) {
                    soma += matriz1[i * n + k] * matriz2[k * n + j];
                }
                matrizr[i * n + j] = soma;
            }
        }
    }

    // impressão formatada da matriz resultado (Usei ajuda do GPT)
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cout << matrizr[i * n + j];
            if (j < n - 1) cout << " ";
        }
        cout << "\n";
    }

// Assinado Zbk e GPT
    return 0;
}
