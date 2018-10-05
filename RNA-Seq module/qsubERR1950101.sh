#!/bin/sh

#PBS -N ERR1950101
#PBS -m abe
#PBS -M ada.zhan@jax.org
#PBS -j oe
#PBS -l nodes=1:ppn=12,mem=60GB,walltime=30:00:00

cd $PBS_O_WORKDIR
align=/projects/zhany/BD2K_RNAseq/RNAseq_star.sh
chop=/projects/zhany/BD2K_RNAseq/chop.sh
genomedir=/projects/zhany/genome/mm10_star
gtf=/projects/zhany/genome/mm10/gencode.vM16.annotation.gtf
gtf_bed=/projects/zhany/genome/mm10/gencode.vM16.genes.bed 
datadir=/projects/zhany/BD2K_RNAseq
$align ERR1950101 $genomedir $gtf $gtf_bed $datadir
cd ERR1950101
$chop ERR1950101 ERR1950101Aligned.sortedByCoord.out.bam chr2
