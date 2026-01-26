#genome assembly using hifiasm
hifiasm -o S1979 -t 40 --hg-size 1.2g ../all.ccs.fasta.gz --ul all.ONTultra_NanoFilt.fastq.gz --ul-cut 50000 --h1 S1979_HiC.clean_1.fq.gz --h2 S1979_HiC.clean_2.fq.gz
#gfa to fasta
awk '/^S/{print ">"$2;print $3}' S1979.hic.p_ctg.gfa >S1979.hic.p_ctg.fa
