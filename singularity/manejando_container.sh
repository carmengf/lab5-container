#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno08/lab5-container/singularity
#SBATCH -J lab5-singularity-alumno08
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END
#SBATCH --mail-user=carmen.gonzalez1@um.es
#SBATCH --output=output_manejando_container.sh

module add singularity/3.8.0

#a)La versión de la imagen
echo "La versión del sistema operativo de la imagen es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo "                                  "

#b)El contenido del directorio
echo "El contenido del directorio que estamos viendo es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls -l
echo "                                  "

#c)El path del directorio
echo "El path del directorio en el que estamos es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo "                                  "

#d)La versión de python
echo "La versión de python es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version
echo "                                  "

#e) La versión de compilador de C++:
echo "La versión de C++ es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version
echo "                                  "

#f)Ejecuta el k-mers de longitud 13 compilado de C++ y mide su tiempo de ejecución
echo "El tiempo de ejecución del k-mers de longitud 13 es: "
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13
echo "                                  "

module unload singularity/3.8.0
