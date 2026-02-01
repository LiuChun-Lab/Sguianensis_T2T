diamond makedb --in MT.pep -d MT.pep
diamond blastp -d MT.pep -q SG.pep --threads 10 -o SGvsMT.blast --sensitive -e 1e-10 --max-target-seqs 5 --outfmt 6
/pub/pipeline/software/MCScanX/MCScanX SGvsMT
