meryl count k=15 output merylDB_SG S1979_T2T.genome.fa
meryl print greater-than distinct=0.9998 merylDB_SG >repetitive_k15.txt
winnowmap -W repetitive_k15.txt -ax map-pb S1979_T2T.genome.fa all_HiFi.fastq.gz >HiFi2SG_winnowmap.sam
samtools view -@ 10 -Sb HiFi2SG_winnowmap.sam | samtools sort -@ 10 -o HiFi2SG_winnowmap.sort.bam
samtools index HiFi2SG_winnowmap.sort.bam
