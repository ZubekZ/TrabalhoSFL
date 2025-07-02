**Aluno:** João Pedro da Veiga Zubek  
**Disciplina:** Sistemas de Software Livre   

## 🔧 Como Usar

### 1. Compilação:
Use o Makefile para compilar todos os programas ou individualmente:

```
make          # Compila todos os programas
make primo    # Compila apenas primo.cpp
make vetor    # Compila apenas vetor.cpp
make matriz   # Compila apenas matriz.cpp
make clean    # Remove os executáveis gerados
```

### 2. Execução dos Programas:
Após compilar, execute os programas:

```
./primo
./vetor
./matriz
```

### 3. Testes Automatizados:

```
# Dar permissão aos scripts
chmod +x generate-test-*.sh

# Gerar testes
./generate-test-primo.sh    # Gera teste1-primo.in
./generate-test-vetor.sh    # Gera teste1-vetor.in
./generate-test-matriz.sh   # Gera teste1-matriz.in

# Executar com testes
./primo < teste1-primo.in
./vetor < teste1-vetor.in
./matriz < teste1-matriz.in
```

### -Descrição dos Programas-

**(primo.cpp)**

```
Função: Verifica se um número é primo
Entrada: Um número inteiro via stdin
Saída: "Primo" ou "Não é primo"

Exemplo:
bash---
echo 7 | ./primo

```

**(vetor.cpp)**

```
Função: Encontra o maior valor em um vetor
Entrada:
 Primeiro: tamanho do vetor (n)
 Depois: n números inteiros
Saída: O maior número do vetor

Exemplo:
bash---
echo -e "3\n5 1 9" | ./vetor

```

**(matriz.cpp)**

```
Função: Calculadora de matrizes (soma, subtração e multiplicação)
Entrada:
 Tamanho da matriz (n)
 Matriz 1 (n×n)
 Matriz 2 (n×n)
 Operação ('a' para soma, 's' para subtração, 'm' para multiplicação)
Saída: Matriz resultante

Exemplo:
bash---
echo -e "2\n1 2\n3 4\n5 6\n7 8\na" | ./matriz
```

### -Scripts de Teste-

**(generate-test-primo.sh)**
```

Gera um número aleatório entre 1 e 1000 em testeN-primo.in
```

**(generate-test-vetor.sh)**
```

Gera:
 Tamanho aleatório do vetor (1-100)
 Elementos aleatórios (0-1000)
Salva em testeN-vetor.in
```

**(generate-test-matriz.sh)**
```

Gera:
 Tamanho aleatório da matriz (1-100)
 Duas matrizes com valores 0-1000
 Operação aleatória (a/s/m)
Salva em testeN-matriz.in

```
