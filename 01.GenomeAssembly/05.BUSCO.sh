genome=S1979_T2T.genome.fa
pep=S1979_T2T.gene.pep.fa
busco -i $genome -o genomeBUSCO -l database/embryophyta_odb10 -m geno -c 20 --offline &&\
busco -i $pep -o pepBUSCO -l database/embryophyta_odb10 -m prot -c 20 --offline
