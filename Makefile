# Compilador e flags
CXX = g++
CXXFLAGS = -Wall -Wextra

# Fontes e binários
SRC_PRIMO = primo.cpp
SRC_VETOR = vetor.cpp
SRC_MATRIZ = matriz.cpp

BIN_PRIMO = primo
BIN_VETOR = vetor
BIN_MATRIZ = matriz

# Regra padrão: compilar todos os cpp
all: $(BIN_PRIMO) $(BIN_VETOR) $(BIN_MATRIZ)

# Compilações individuais
$(BIN_PRIMO): $(SRC_PRIMO)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_VETOR): $(SRC_VETOR)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BIN_MATRIZ): $(SRC_MATRIZ)
	$(CXX) $(CXXFLAGS) $< -o $@

# Regra para gerar TODOS os arquivos de teste de uma vez
generate-tests: test-primo test-vetor test-matriz

# Gerar testes
test-primo:
	chmod +x generate-test-primo.sh
	./generate-test-primo.sh

test-vetor:
	chmod +x generate-test-vetor.sh
	./generate-test-vetor.sh

test-matriz:
	chmod +x generate-test-matriz.sh
	./generate-test-matriz.sh

# Rodar programa com o último teste (ordem alfabética, o último será o maior número)
run-primo: $(BIN_PRIMO)
	$(BIN_PRIMO) < $$(ls teste*-primo.in | sort | tail -n1)

run-vetor: $(BIN_VETOR)
	$(BIN_VETOR) < $$(ls teste*-vetor.in | sort | tail -n1)

run-matriz: $(BIN_MATRIZ)
	$(BIN_MATRIZ) < $$(ls teste*-matriz.in | sort | tail -n1)

# Limpeza
clean:
	rm -f $(BIN_PRIMO) $(BIN_VETOR) $(BIN_MATRIZ)
