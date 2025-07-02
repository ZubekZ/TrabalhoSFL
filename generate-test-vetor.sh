#!/bin/bash

NOME=$(ls teste*-vetor.in 2>/dev/null | wc -l)
NOME=$((NOME + 1))

TAM=$(( RANDOM % 100 + 1 ))

echo $TAM > teste${NOME}-vetor.in

for ((i = 0; i < TAM; i++)); do
  echo -n "$(( RANDOM % 1001 )) " >> teste${NOME}-vetor.in
done

echo >> teste${NOME}-vetor.in

echo "Arquivo teste${NOME}-vetor.in gerado com sucesso (TAM=$TAM)."
