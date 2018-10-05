#!/bin/sh

#PBS -N build
#PBS -m abe
#PBS -M ada.zhan@jax.org
#PBS -j oe
#PBS -l nodes=1:ppn=12,mem=60GB,walltime=10:00:00

cd $PBS_O_WORKDIR
mkdir -p mm10_star
cd mm10
gunzip gencode.vM16.annotation.gtf.gz
cd ../mm10_star
module load STAR/2.5.3
### Build a genome index
STAR --runThreadN 12 --runMode genomeGenerate --genomeDir /projects/zhany/genome/mm10_star \
--genomeFastaFiles /projects/zhany/genome/mm10/mm10.fa \
--sjdbGTFfile /projects/zhany/genome/mm10/gencode.vM16.annotation.gtf \
--sjdbOverhang 100
