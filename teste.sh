#!/bin/bash

data=$(date '+%d-%m-%Y')
echo $data

#Nome do ficheiro 
echo "Insira nome do ficheiro: "
read filename

#Input do numero de pessoas que fizeram trabalho
echo "Quantas pessoas fizeram o trabalho:"
read nrp

autores=()

#Se numero de pessoa maior que 1, então entra no loop e pede inputs até inserir "para", se numero igual a 1 então pede apenas inputs 1x
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

#inputs de informação para inserir no ficheiro 
echo "Insira o nome do projeto: "
read projeto

echo "Insira o objetivo do projeto: "
read objetivo

echo "Qual é a disciplina: "
read disciplina

#escrita no ficheiro txt
echo -e "Introdução: O nosso projeto $projeto tem como objetivo $objetivo,\nEste trabalho é para a disciplina de $disciplina." > $filename.txt


if [[ $nrp -eq 1 ]]; then
  echo -e "Data: $data\nTrabalho realizado por: $pessoa" >> $filename.txt
else
  echo -e "Trabalho realizado por:\n${autores[0]}" >> $filename.txt
  for ((i=1; i < ${#autores[@]}; i++))
  do
    echo -n "${autores[i]}" >> $filename.txt
  done
fi

#Define nome da pasta como a data atual
nome_pasta=$(date '+%d-%m-%Y')

#Verifica se a pasta existe e cria 
if [ ! -d "$nome_pasta" ]; then
  mkdir $nome_pasta
  echo "Pasta criada: $nome_pasta"
fi

#Copiar ficheiro para dentro da pasta criada 
cp $filename.txt $nome_pasta

#Abre browser e email
start chrome https://gmail.com