#!/bin/bash

NOME=$(ls teste*-matriz.in 2>/dev/null | wc -l)
NOME=$((NOME + 1))

TAM=$(( RANDOM % 100 + 1 ))

echo $TAM > teste${NOME}-matriz.in

for ((i = 0; i < TAM*TAM; i++)); do
  echo -n "$(( RANDOM % 1001 )) " >> teste${NOME}-matriz.in  # números de 0 a 1000
  if (( (i + 1) % TAM == 0 )); then echo >> teste${NOME}-matriz.in; fi
done

for ((i = 0; i < TAM*TAM; i++)); do
  echo -n "$(( RANDOM % 1001 )) " >> teste${NOME}-matriz.in
  if (( (i + 1) % TAM == 0 )); then echo >> teste${NOME}-matriz.in; fi
done

opcoes=("a" "s" "m")
echo ${opcoes[$RANDOM % 3]} >> teste${NOME}-matriz.in

echo "Arquivo teste${NOME}-matriz.in gerado com sucesso (TAM=$TAM)."
