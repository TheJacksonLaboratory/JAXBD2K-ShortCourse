## Microbiome module

### Objective

This module aims to advance participants skills not only in the area of computation and data science, but also in our current biological understanding of the microbiome and metagenomics. Explicitly, the following goals will be achieved:

* File/Directory manipulation from the command line
* Writing and executing “for loops”
* Analyzing file content with basic bash commands
* Aligning paired end 16S sequencing reads (FLASh)
* Clustering unique 16S sequences (usearch)
* Assigning taxonomy to sequences (RDP classifier)
* Processing and visualizing 16S data in R (phyloseq)
* Figure generation in R (ggplot2)

### Background

A major aim of microbiome research is to identify diseases that are associated with a change in the human microbial community at a body site of interest (e.g. skin, gut, etc). If the microbiomes of diseased and healthy individuals are different, then follow up studies can determine if microbial changes are causative or correlative with disease and evaluate potential therapeutics aimed at the microbiota.

Here, we are studying two groups of individuals – a control group and a disease group – and we would like to understand if these groups have different microbial communities. Skin swabs were taken for all patients and were sequenced by paired end 16S sequencing. 

By the end of this exercise, participants should be able to answer the following questions:

* What species are present on healthy skin?
* Do diseased and healthy individuals support different skin microbial communities?
* Are microbial communities more diverse for healthy or diseased patients? 

### Pre-requisite software packages

* FLASh v 1.2.11: https://ccb.jhu.edu/software/FLASH/
* FASTX-Toolkit v 0.0.14: http://hannonlab.cshl.edu/fastx_toolkit/download.html
* usearch v 10.0.240: https://www.drive5.com/usearch/
* UPARSE python scripts: https://drive5.com/python/
* RDP Classifier tool: https://rdp.cme.msu.edu/tutorials/classifier/classifer_cover_page.html
* Rstudio v1.1 (or later): https://www.rstudio.com/products/rstudio/download/
* R package phyloseq: https://github.com/joey711/phyloseq
* R package metaseq:http://bioconductor.org/packages/release/bioc/html/metaSeq.html
* R v3.5
* Python v2.7
* Java v1.7

### Practice

Users are encouraged to familarize themselves with the background knowledge covered in the lecture slides prior to the hands-on. Software packages need to be installed properly. When you are ready, please download and save files to your local directory from **ftp://ftp.jax.org/encode/microbiome_module**. Open up the 'BD2K_Rnotebook.Rmd' in Rstudio and follow the instructions in the document. 
