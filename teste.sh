#! /usr/bin/bash 

#!/bin/bash

data=$(date '+%d-%m-%Y')
echo $data

echo "Insira nome do ficheiro: "
read filename

echo "Insira o nome do projeto: "
read projeto
echo "Insira o objetivo do projeto: "
read objetivo
echo "Qual é a disciplina: "
read disciplina

echo -e "Introdução: O nosso projeto $projeto tem como objetivo $objetivo,\nEste trabalho é para a disciplina de $disciplina." > $filename.txt
echo -e "Data: $data " >> $filename.txt