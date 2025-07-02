#!/bin/bash

N=$(ls teste*-primo.in 2>/dev/null | wc -l)

N=$((N + 1))

echo $(( RANDOM % 1000 + 1 )) > teste${N}-primo.in

echo "Arquivo teste${N}-primo.in gerado com sucesso."