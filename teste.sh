#! /usr/bin/bash 

#!/bin/bash

data=$(date '+%d-%m-%Y')
echo $data

echo "Insira nome do ficheiro: "
read filename

echo "Quantas pessoas fizeram o trabalho:"
read nrp

autores=()
if [[ $nrp -gt 1 ]]
then
    echo "Insira quem fez o trabalho (quando não houver mais elementos do grupo insira 'para'):"
    while true; do
        read pessoa
        if [[ $pessoa == "para" ]]; then
            break
        fi
        autores+=($pessoa)
    done
else
    echo "Insira quem fez o trabalho:"
    read pessoa 
fi

echo ${autores[@]}

echo "Insira o nome do projeto: "
read projeto

echo "Insira o objetivo do projeto: "
read objetivo

echo "Qual é a disciplina: "
read disciplina

#escrita no ficheiro txt
echo -e "Introdução: O nosso projeto $projeto tem como objetivo $objetivo,\nEste trabalho é para a disciplina de $disciplina." > $filename.txt

#Fazer outro if para quando é 1 ou mais que 1
echo -n -e "Trabalho realizado por:\n${autores[0]}" > $filename.txt
for ((i=1; i < ${#autores[@]}; i++))
do
  echo -n ", ${autores[i]}" >> $filename.txt
done

start chrome https://gmail.com