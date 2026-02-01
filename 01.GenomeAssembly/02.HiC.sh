genome=S1979.contig.fa
fq1=S1979_hic.clean_1.fq.gz
fq2=S1979_hic.clean_2.fq.gz

#(1) Align Hi-C data to the assembly, remove PCR duplicates and filter out secondary and supplementary alignments
bwa index $genome
bwa mem -5SP -t 40 $genome $fq1 $fq2 |samblaster | samtools view - -@ 14 -S -h -b -F 3340 -o $genome.HiC.bam
#(2) Filter the alignments with MAPQ 1 (mapping quality ≥ 1) and NM 3 (edit distance < 3)
utils/filter_bam $genome.HiC.bam 1 --nm 3 --threads 28 | samtools view - -b -@ 14 -o $genome.HiC.filter.bam
haphic pipeline $genome $genome.HiC.filter.bam 10
#(3) visualize results using `haphic plot` with the BAM file and the AGP file
utils/mock_agp_file.py S1979_chromosome.fa >S1979_chromosome.agp
haphic plot S1979_chromosome.agp $genome.HiC.filter.bam --bin_size 1000
