diamond makedb --in GM.pep -d GM.pep
diamond blastp -d GM.pep -q SG.pep --threads 10 -o SGvsGM.blast --sensitive -e 1e-10 --max-target-seqs 5 --outfmt 6
/pub/pipeline/software/MCScanX/MCScanX SGvsGM
