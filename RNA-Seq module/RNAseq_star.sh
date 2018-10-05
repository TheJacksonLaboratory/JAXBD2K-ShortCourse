#!/bin/bash

## RNAseq pipeline with STAR
export sample="$1"
export genome="$2"
export RNA_REF_GTF="$3"
export gtf_bed="$4"
export data="$5"
## Quality check (optional)
#module load fastqc
#mkdir fastqc
#fastqc ./data/*.fastq.gz -o fastqc

## STAR alignment (STAR is required)
# module load STAR/2.5.3

### PE alingment
mkdir -p $sample
cd $sample
STAR --runThreadN 12 --genomeDir $genome \
--sjdbGTFfile $RNA_REF_GTF --sjdbOverhang 100 \
--readFilesIn $data/${sample}_1.fastq.gz $data/${sample}_2.fastq.gz \
--readFilesCommand zcat \
--quantMode GeneCounts \
--outSAMtype BAM SortedByCoordinate --outFileNamePrefix $sample
## in the output count table, column 1 is geneid, column 2 for unstranded, column 3 for 'yes' as htseqct, and column 4 for 'reverse' as htseqct

## check strandedness (RSeQC is required)
# module unload python
# module load Anaconda/4.2.0
# source activate my_root
infer_experiment.py -i ${sample}Aligned.sortedByCoord.out.bam -r $gtf_bed > ${sample}.strandness.txt
cd ../..


