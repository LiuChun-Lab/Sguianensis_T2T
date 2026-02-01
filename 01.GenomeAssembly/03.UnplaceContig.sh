minimap2 -x asm5 Stylosanthes_chlo_mito.fa contigs.fa -t 20 >contigs_vs_chlo_mito.paf
perl paf_contig_summary_v2.pl contigs_vs_chlo_mito.paf >contigs_vs_chlo_mito.paf.stat.xls
minimap2 -x asm5 ../../S1979_T2T.genome.fa contigs_except_chlo_mito.fa  -t 20 >contig_vs_other.paf
perl paf_contig_summary_v2.pl contig_vs_other.paf >contig_vs_other.paf.stat.xls
