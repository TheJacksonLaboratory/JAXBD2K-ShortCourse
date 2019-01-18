## ChIP-Seq module 

### Objective

In ChIP-Seq module, one will perform ChIP-seq pipeline in terminal and do the following tasks.
- Sequence mapping
- Peak calling
- Motif analysis

### Data background

Target: CTCF
Biosample: Homo Sapiens GM12878 (A lymphoblastoid cell line)
Source: [Encode](encodeproject.org)
Accession id: ENCFF000ARP (sample) and ENCFF000ARK (control)

### Dependent Tools 

Since this module is terminal based, make sure you have installed all the denpendent software.

 [fastqc](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) (quality check)
 
 [bowtie](http://bowtie-bio.sourceforge.net/index.shtml) (sequence mapping or alignments)
 
 [samtools](http://samtools.sourceforge.net) (manipulating alignments in SAM format. BAM format is a compressed version of SAM file)
 
 [macs2](https://github.com/taoliu/MACS/releases) (peak calling)
 
 [bedtools](https://bedtools.readthedocs.io/en/latest/content/installation.html) (to handle sequence coordinate files in BED format)

### Obtain the sequence data

All the fastq files (.fastq) and genome files can be accessed at ftp://ftp.jax.org/encode/ChIPseq (copy and paste this address to your browser.)

To fit the whole analysis into manageable time frame, the sequence files were truncated to chromosome 1 (chr1). 

---------
In addition, we also provide scripts (/scripts) if you want to produce truncated sequences by yourself.
**Steps**
1. Download all the files into one folder (pptx is not required for data preparation)
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

----------- 

### Run the pipeline

Once you have all the data files ready:
1. Enter ChIPseq/:
```
cd ChIPseq
```
2. Run pipeline in ChIPseq/: 
```
./workflow.sh
```
