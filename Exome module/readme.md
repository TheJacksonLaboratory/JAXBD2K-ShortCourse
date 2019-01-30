## Mouse Exome module 

### Objective

In Mouse Exome module, we will identify the genetic variants in a mouse exome and infer the phenotype association. Specifically, we will do the following:
- Perform exome sequence alignment, do variant calling on Galaxy
- Examine the called variants with Ensembl Variant Effect Predictor ([VEP](http://www.ensembl.org/Mus_musculus/Tools/VEP)) 
- Look up the phenotypic implications at JAX Mouse Genome Informatics Human-Mouse Genome Connection tool [link](http://www.informatics.jax.org/humanDisease.shtml) 

### Data background

This training exercise is based upon exome sequencing of a mutant mouse (SRR1783944) in the JAX colonies. Experimental and data processing details have been published in the paper of Fairfield *et al* 2001 (PMID:[25917818](https://www.ncbi.nlm.nih.gov/pubmed/25917818)).

The mutant mouse is phenotypically different than wildtype C57BL6/J animals. The mouse of interest for this exercise is named “Leg dragger”; the mutation was spontaneous on the C57BL6/J strain. Homozygotes are slightly smaller than their unaffected littermates and lose most of the use of their rear legs such that they drag their rear legs and pull themselves along with their front legs to move. This phenotype can be detected as early as 2 weeks of age and is evident by 3 weeks of age. A few homozygotes nearing wean age are found to roll over and over in a struggle to right themselves. When raised by their tails they do not splay their legs outward but rather cross the front pair and the rear pair. Auditory brainstem response analysis of one homozygous animal at 18 days of age showed severe hearing loss and no others were tested. Heterozygotes appear normal and fertile but produce slightly fewer homozygotes than the 25% expected when intercrossed. The strain appears to provide a model for autosomal recessive spastic paraplegia 30.

### Obtain the sequence data

All the fastq files (.fastq.gz) and a genome file (.fa) can be accessed at **ftp://ftp.jax.org/encode/MouseExome** (copy and paste this address to your browser.) To fit the whole analysis into manageable time frame, the sequence files were already truncated to chromosome 1 (chr1).

- SRR1783944_chr1_R1.fastq.gz: The forward reads from exome sequencing
- SRR1783944_chr1_R2.fastq.gz: The reverse reads from exome sequencing
- mm10.chr1.fa: A single fasta file for mouse chromosome 1, used for 	mapping reads as reference

### Practice on [Galaxy](https://usegalaxy.org)

Once you have all the sequence data, you are ready to proceed with RNA-seq analysis. Galaxy has all the tools and technical support. [UseGalaxy](https://usegalaxy.org) is open to everyone and allow you to work on datasets smaller than 250GB. Galaxy also provides other [options](https://galaxyproject.org/choices/) to meet diverse needs. 

In this module, you need to
1. Register an account on Galaxy if you haven't yet
2. Open up the tutorial document 'ExomeModule2018_Profversion_updated20190129' (.docx or .pdf) and follow the steps
