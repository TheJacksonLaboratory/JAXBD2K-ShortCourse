# quality check
fastqc GM12878_control_chr1.fastq
fastqc GM12878_CTCF_chr1.fastq

# Prepare genome
bowtie-build hg38/GRCh38.chr1.fa hg38/GRCh38.chr1

# Mapping
bowtie -m 1 -S ./hg38/GRCh38.chr1 GM12878_control_chr1.fastq > GM12878_control_chr1.sam
bowtie -m 1 -S ./hg38/GRCh38.chr1 GM12878_CTCF_chr1.fastq > GM12878_CTCF_chr1.sam

# Further processing
## compress to BAM
samtools view -bSo GM12878_control_chr1.bam GM12878_control_chr1.sam
samtools view -bSo GM12878_CTCF_chr1.bam GM12878_CTCF_chr1.sam
## sort
samtools sort GM12878_control_chr1.bam -o GM12878_control_chr1.sorted.bam
samtools sort GM12878_CTCF_chr1.bam -o GM12878_CTCF_chr1.sorted.bam
## index
samtools index GM12878_control_chr1.sorted.bam
samtools index GM12878_CTCF_chr1.sorted.bam

# Peak calling
macs2 callpeak -t GM12878_CTCF_chr1.sorted.bam -c GM12878_control_chr1.sorted.bam -f BAM -g 175000000 -n GM12878_CTCF_chr1 -B -q 0.01

# Check the peak model
Rscript GM12878_CTCF_chr1_model.r

# Motif analysis
## extend summits 100bp on both directions
bedtools slop -i GM12878_CTCF_chr1_summits.bed -g hg38/GRCh38.chr1.size -b 100 > GM12878_CTCF_chr1_summits_ext.bed
## get sequence file (i.e. fasta)
bedtools getfasta -fi hg38/GRCh38.chr1.fa -bed  GM12878_CTCF_chr1_summits_ext.bed -fo GM12878_CTCF_chr1_summits_ext.fa
## The .fa file will be uploaded to MEME online server for motif discovery (http://meme-suite.org/tools/meme-chip)
