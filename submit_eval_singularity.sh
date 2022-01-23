#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08/lab5-container/
#SBATCH -J lab5-singularity-alumno08
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=carmen.gonzalez1@um.es
#SBATCH --output=RESULTADOS.txt

module load singularity/3.7.0


echo "Tiempo para longitud 13 con Python:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py &
wait
echo

echo "Tiempo para longitud 13 con C++:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13 &
wait
echo

echo "Tiempo para longitud 14 con Python:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py &
wait
echo

echo "Tiempo para longitud 14 con C++:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14

