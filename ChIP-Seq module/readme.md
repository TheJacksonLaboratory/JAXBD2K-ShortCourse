## ChIP-seq module 

### Usage:
1. Download all the files into one folder (pptx is not required)
2. Run prepareGenome.hg38.sh to download and index reference genome
```
./prepareGenome.hg38.sh
```
3. Run prepareSequence.chr1.sh to obtain sequence files with chr1
```
./prepareSequence.chr1.sh
```
The above steps would create:
* ChIP-seq data:

In the directory ChIPseq/
 
 GM12878_control_chr1.fastq
 
 GM12878_CTCF_chr1.fastq 

* Genome:

In the directory hg38/
 
 GRCh38.chr1.fa
 
 GRCh38.chr1.size
 
 and indexed files

4. Enter ChIPseq/:
```
cd ChIPseq
```
5. Run pipeline in ChIPseq/: 
```
./workflow.sh
```

### Dependent Tools 
 fastqc (quality check)
 bowtie (sequence mapping or alignments)
 samtools (manipulating alignments in SAM format. BAM format is a compressed version of SAM file)
 macs2 (peak calling)
 bedtools (to handle sequence coordinate files in BED format)
