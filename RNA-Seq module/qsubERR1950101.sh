#!/bin/bash

align=./RNAseq_star.sh
chop=./chop.sh
genomedir=./mm10_star

# mm10 gene annotation
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M16/gencode.vM16.annotation.gtf.gz
gunzip gencode.vM16.annotation.gtf.gz |sed -e '1,5d' - \
  | awk -F '[";\t]' '{if($3=="gene"){print $1,$4,$5,$22,$10,$7}}' OFS="\t" > gencode.vM16.genes.bed
  
gtf=./gencode.vM16.annotation.gtf.gz
gtf_bed=./gencode.vM16.genes.bed 

mkdir RNAseq
datadir=./RNAseq
$align ERR1950101 $genomedir $gtf $gtf_bed $datadir
cd ERR1950101
$chop ERR1950101 ERR1950101Aligned.sortedByCoord.out.bam chr2
