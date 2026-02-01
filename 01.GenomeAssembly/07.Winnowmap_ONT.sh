meryl count k=15 output merylDB_SG S1979_T2T.genome.fa
meryl print greater-than distinct=0.9998 merylDB_SG >repetitive_k15.txt
winnowmap -W repetitive_k15.txt -ax map-ont S1979_T2T.genome.fa all_ONT.fastq.gz >ONT2SG_winnowmap.sam
samtools view -@ 10 -Sb ONT2SG_winnowmap.sam | samtools sort -@ 10 -o ONT2SG_winnowmap.sort.bam
samtools index ONT2SG_winnowmap.sort.bam
