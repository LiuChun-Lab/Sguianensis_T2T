Trinity --samples_file clean.list --seqType fq --CPU 20 --max_memory 100G &&\
perl util/misc/get_longest_isoform_seq_per_trinity_gene.pl trinity_out_dir.Trinity.fasta >Trinity.logest.fa
TransDecoder.LongOrfs -t trinity_out_dir.Trinity.fasta
TransDecoder.Predict -t trinity_out_dir.Trinity.fasta
