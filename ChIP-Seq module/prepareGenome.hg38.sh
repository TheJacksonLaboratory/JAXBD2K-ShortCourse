# The reference genome used in this practice is GRCh38/hg38, a human genome assembly released in Dec, 2013.
# The FASTA and chromosome size files were downloaded from UCSC Genome Browser.
# The following codes were used to download and index the reference genome.

mkdir hg38
cd hg38
# Download the genome sequence of Chromosome 1
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg38/chromosomes/chr1.fa.gz 
# Unzip the file
gunzip chr1.fa.gz
# Change file name
mv chr1.fa GRCh38.chr1.fa

# Get the genome size file
wget http://hgdownload.soe.ucsc.edu/goldenPath/hg38/bigZips/hg38.chrom.sizes
head -n 1 hg38.chrom.sizes > GRCh38.chr1.size
rm hg38.chrom.sizes # only keep the chr1 size  

# Index the genome for the alignment
bowtie-build GRCh38.chr1.fa GRCh38.chr1

cd ..
