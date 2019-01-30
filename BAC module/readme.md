## Bacterial Artificial Chromosomes (BACs) Module 
## (Human Disease Variant Discovery Module)

### Objective

The goal of this exercise is identify the gene and potential pathogenic genotypes (variants) in a series of BAC sequences on the platform of Galaxy.

### Data background

The Jackson Laboratory (JAX) acquired the anonymous Bacterial Artificial Chromosomes (BACs) human DNA fragments in order to engineer a humanized mouse model. The human genomic regions (~250 kb in size) were used to create transgenic mice that carry a large fragment of human chromosome 12. In order to attempt to duplicate the human disease in mice JAX has made a wide range of transgenic mice carrying numerous mutations found in humans; additionally the normal (non-mutation) region of human chromosome 12 has been engineered (inserted via transgenesis) into mice as a control. The BACs were prepared by library preparation and sequenced at JAX on an Illumina miSeq platform. Sequencing was done as paired-end with 150 bp reads. Sequencing ~250 kb is a small project by modern high throughput standards and by aligning to a single human chromosome during data analysis this module is computationally less demanding.

### Obtain the sequence data

All 24 fastq files (.fastq.gz) and a genome file (.fa) can be accessed at **ftp://ftp.jax.org/encode/BAC_Module** (copy and paste this address to your browser.) To fit the whole analysis into manageable time frame, the sequence files were already truncated to chromosome 1 (chr1).

- 1_**S1**\_L001\_**R1**_001.fastq.gz: 1 = just #; S1 = experimental Sample1; L001 = Lane; R1 = Read 1 “forward read”; 001 = just #; fastq = file type
- 1_**S1**\_L001\_**R2**_001.fastq.gz: The reverse reads paired with 1_S1_L001_R1_001.fastq.gz

(Note: There are 12 paired-end reads. Each student or student group can or may work on one pair of reads.)

- chr12.fa: A single fasta file for human chromosome 1, used for 	mapping reads as reference

### Practice on [Galaxy](https://usegalaxy.org)

Once you have all the sequence data, you are ready to proceed with RNA-seq analysis. Galaxy has all the tools and technical support. [UseGalaxy](https://usegalaxy.org) is open to everyone and allow you to work on datasets smaller than 250GB. Galaxy also provides other [options](https://galaxyproject.org/choices/) to meet diverse needs. 

In this module, you need to
1. Register an account on Galaxy if you haven't yet
2. Open up the tutorial document '20180BAC ModuleSummary for Prof' (.docx or .pdf) and follow the steps
