#!/bin/bash

# Summary: 
# Four tools are workable: samtools, bamutil, picard, and bedtools
# They fall into two categories:
# 1. Require readname sorted: bamutil and bedtools
# 2. Require randomization: samtools and picard 
export sample="$1"
export bamfile="$2"
export chr="$3"
module load samtools
#samtools view does not work with 'region' option unless you have indexed the BAM file

samtools sort $bamfile -o ${sample}.sort.bam
samtools index ${sample}.sort.bam 

# Get chromsome 1 (Cropping)
samtools view -@ 10 -bhS ${sample}.sort.bam $chr > ${sample}.${chr}.bam
samtools index ${sample}.${chr}.bam
# use bedtools (bedtools, two fastq for pair end)
module load bedtools/2.25.0
samtools sort -n ${sample}.${chr}.bam -o ${sample}.${chr}.nsort.bam
bedtools bamtofastq -i ${sample}.${chr}.nsort.bam \
	-fq ${sample}.${chr}.1.fq \
	-fq2 ${sample}.${chr}.2.fq 
rm ${sample}.${chr}.1.fq.gz ${sample}.${chr}.2.fq.gz
gzip ${sample}.${chr}.1.fq
gzip ${sample}.${chr}.2.fq
rm ${sample}.${chr}.nsort.bam 
