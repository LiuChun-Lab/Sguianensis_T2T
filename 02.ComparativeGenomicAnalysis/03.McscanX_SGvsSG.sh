diamond makedb --in SG.pep -d SG.pep
diamond blastp -d SG.pep -q SG.pep --threads 10 -o SGvsSG.blast --sensitive -e 1e-10 --max-target-seqs 5 --outfmt 6
/pub/pipeline/software/MCScanX/MCScanX SGvsSG
/pub/pipeline/software/MCScanX/duplicate_gene_classifier SGvsSG
