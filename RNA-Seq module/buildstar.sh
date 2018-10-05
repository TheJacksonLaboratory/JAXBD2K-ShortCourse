#!/bin/bash

mkdir -p mm10_star
cd mm10_star
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_mouse/release_M16/gencode.vM16.annotation.gtf.gz
gunzip gencode.vM16.annotation.gtf.gz |sed -e '1,5d' - |awk '{if($1=="chr2") print}' OFS="\t" > gencode.vM16.annotation.chr2.gtf
awk -F '[";\t]' '{if($3=="gene"){print $1,$4,$5,$22,$10,$7}}' OFS="\t" gencode.vM16.annotation.chr2.gtf > gencode.vM16.genes.chr2.bed

wget http://hgdownload.cse.ucsc.edu/goldenpath/mm10/chromosomes/chr2.fa.gz
gunzip chr2.fa.gz && mv chr2.fa mm10.chr2.fa


# module load STAR/2.5.3 (Require STAR)
### Build a genome index
STAR --runThreadN 12 --runMode genomeGenerate --genomeDir ./ \
--genomeFastaFiles mm10.chr2.fa \
--sjdbGTFfile gencode.vM16.annotation.chr2.gtf \
--sjdbOverhang 100
