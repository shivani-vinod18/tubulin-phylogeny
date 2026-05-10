#!/bin/bash

# Multiple sequence alignment
mafft --localpair --maxiterate 1000 --reorder \
  data/curated/tubulin_curated.fasta \
  > alignments/tubulin_raw_msa.fasta \
  2> logs/mafft_alignment.log

# Alignment trimming
trimal \
  -in alignments/tubulin_raw_msa.fasta \
  -out alignments/tubulin_trimmed_msa.fasta \
  -automated1 \
  -fasta

# Maximum-likelihood phylogenetic tree construction
iqtree2 \
  -s alignments/tubulin_trimmed_msa.fasta \
  -st AA \
  -m MFP \
  -B 1000 \
  -alrt 1000 \
  -T AUTO \
  --seed 12345 \
  --prefix trees/tubulin_iqtree
