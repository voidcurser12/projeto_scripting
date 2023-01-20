#! /usr/bin/bash 

#!/bin/bash

echo "Insira nome do ficheiro: "
read filename

echo "A data currente é: $(date)" > $filename.txt