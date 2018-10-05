#!/bin/bash

align=./RNAseq_star.sh
chop=./chop.sh
genomedir=./mm10_star

# mm10 gene annotation
gtf=${genomedir}/gencode.vM16.annotation.chr2.gtf
gtf_bed=${genomedir}/gencode.vM16.genes.chr2.bed 

mkdir RNAseq
datadir=./RNAseq

# obtain sequences
./fethseq.sh

for i in ERR1950095 ERR1950098 ERR1950099 ERR1950101
do
$align ${i} $genomedir $gtf $gtf_bed $datadir
cd ${i}
$chop ${i} ${i}Aligned.sortedByCoord.out.bam chr2
cd ..
done
