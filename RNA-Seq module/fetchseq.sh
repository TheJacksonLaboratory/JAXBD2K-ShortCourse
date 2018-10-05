#!/bin/bash
# Get the file for SRR1783944
#module load sratoolkit/2.8.2
#fastq-dump -I --split-files SRR1783944
# With -I option, the naming will be a problem with BWA 
# Download the data from ArraryExpress
# Wild Type
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/005/ERR1950095/ERR1950095_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/005/ERR1950095/ERR1950095_2.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/008/ERR1950098/ERR1950098_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/008/ERR1950098/ERR1950098_2.fastq.gz
# Pax6 knockout
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/009/ERR1950099/ERR1950099_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/009/ERR1950099/ERR1950099_2.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/001/ERR1950101/ERR1950101_1.fastq.gz
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR195/001/ERR1950101/ERR1950101_2.fastq.gz

# check fastq format
zcat ERR1950095_1.fastq.gz |head -n 40 | awk '{if(NR%4==0) printf("%s",$0);}' |  od -A n -t u1 | awk 'BEGIN{min=100;max=0;}{for(i=1;i<=NF;i++) {if($i>max) max=$i; if($i<min) min=$i;}}END{if(max<=74 && min<59) print "Phred+33"; else if(max>73 && min>=64) print "Phred+64"; else if(min>=59 && min<64 && max>73) print "Solexa+64"; else print "Unknown score encoding!";}'

#module load fastqc
#fastqc SRR1783944_1.fastq.gz -o fastqc

