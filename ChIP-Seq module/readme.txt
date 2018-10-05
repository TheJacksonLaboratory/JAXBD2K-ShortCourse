###################
# ChIP-seq module #
###################

# Prior class:
# Index reference genome: prepareGenome.hg38.sh
# Reduce the sequencing data to chr1: sequencelocation.txt; prepareSequence.chr1.sh

# Pipeline: workflow.sh

# Make two directories to host sequence data and genome
mkdir ChIPseq
mkdir hg38
# ChIP-seq data
In the directory ChIPseq/
 GM12878_control_chr1.fastq
 GM12878_CTCF_chr1.fastq 

# Genome
In the directory hg38/
 GRCh38.chr1.fa
 GRCh38.chr1.size

# Tools 
 fastqc (quality check)
 bowtie (sequence mapping or alignments)
 samtools (manipulating alignments in SAM format. BAM format is a compressed version of SAM file)
 macs2 (peak calling)
 bedtools (to handle sequence coordinate files in BED format)
