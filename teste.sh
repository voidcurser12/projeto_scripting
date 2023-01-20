#! /usr/bin/bash 

#!/bin/bash

#!/bin/bash

echo "Insira nome do ficheiro: "
read filename

echo "Insira o nome do projeto: "
read projeto
echo "Insira o obejtivo do projeto: "
read objetivo
echo "Qual é a disciplina: "
read disciplina

echo "Introdução: O nosso projeto $projeto tem como objetivo $objetivo, este trabalho é para a disciplina de $disciplina." > $filename.txt