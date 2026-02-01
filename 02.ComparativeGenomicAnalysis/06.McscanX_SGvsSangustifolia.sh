diamond makedb --in SA.pep -d SA.pep
diamond blastp -d SA.pep -q SG.pep --threads 10 -o SGvsSA.blast --sensitive -e 1e-10 --max-target-seqs 5 --outfmt 6
/pub/pipeline/software/MCScanX/MCScanX SGvsSA
