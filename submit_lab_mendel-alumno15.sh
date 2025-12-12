#!/bin/bash

#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno15/Lab3
#SBATCH -J Lab3-cutfiles
#SBATCH --cpus-per-task=4
#SBATCH --output=cutfiles-alumno15.out

#Ejecución en paralelo
echo "Ejecución en paralelo: "
echo "Usando &"

#Cogemos los ficheros .fastq del directorio /Lab3/
lista_ficheros=( $(ls *.fastq) )

#Los procesamos
for fichero in ${lista_ficheros[@]}; do
	./file-cut.sh "$fichero" &
done

#Nos aseguramos de que no acabe sin haber procesado los ficheros
wait

echo "--------------------------------"
echo "Procesamiento terminado"
