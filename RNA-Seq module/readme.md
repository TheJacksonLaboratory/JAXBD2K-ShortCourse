## RNA-Seq module

### Objective

In this module, we'll perform basic RNA-Seq workflow and do differential expression analysis on Galaxy.

### Data background

The RNA-seq data is from the research by [Mitchell RK *et al* 2017](http://www.jbc.org/content/292/21/8892). The authors investigated significant transcriptional differences underlying the defective glucose-stimulated insulin secretion of Pax6 knockout mice in comparison to floxed littermate controls. In human, heterozygous mutations in the gene PAX6 lead to impaired glucose tolerance. Embryonic deletion of the Pax6 gene in mice causes loss of most pancreatic islet cell types. In this study, the authors revealed that in adult mice the inactivating Pax6 genes leads to reduced expression in many key beta cell genes but increase in some other genes that contribute to the reduction total islet insulin content.

### Obtain the sequence data

All the compressed fastq files (.fq.gz or .fastq.gz) can be accessed at **ftp://ftp.jax.org/encode/RNAseq** (copy and paste this address to your browser.)

There are four pair-end experiments on two conditions:
(read 1: .1.fq.gz or .1.fastq.gz; read 2: .2.fq.gz or .2.fastq.gz)
- Wild type: ERR1950095 and ERR1950098 
- Pax6 gene knock out: ERR1950099 and ERR1950101

To fit the whole analysis into manageable time frame, the sequence files were truncated to chromosome 2 (chr2) that hosts Pax6 gene. 

### Practice on [Galaxy](https://usegalaxy.org)

Once you have all the sequence data, you are ready to proceed with RNA-seq analysis. Galaxy has all the tools and technical support. [UseGalaxy](https://usegalaxy.org) is open to everyone and allow you to work on datasets smaller than 250GB. Galaxy also provides other [options](https://galaxyproject.org/choices/) to meet diverse needs. 

In this module, you need to
1. Register an account on Galaxy if you haven't yet
2. Open up the tutorial document 'BD2K_RNAseqModule_JAX2018_online' (.docx or .pdf) and follow the steps

*Lecture slides are also supplied ('BD2K_RNAseqModule2018')*

### Bonus module material

'miniMouse' module (/Mini_RNAseq_Module) was created by Prof. [Andrea R. Tilden](https://www.colby.edu/directory/profile/artilden/), our BD2K course alumna, from Colby College. We appreciate her generosity to allow us to share her files here. 
