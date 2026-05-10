# Tools and Parameters

## 1. Sequence Retrieval

Database used:

- UniProtKB

Dataset:

- 30 tubulin protein sequences
- 10 alpha-tubulins
- 10 beta-tubulins
- 10 gamma-tubulins

Selection criteria:

- Protein sequences only
- Correct organism or organism group
- Correct tubulin type
- Full-length or near full-length sequence
- Clear protein annotation
- Reviewed UniProt entries preferred where available

## 2. Multiple Sequence Alignment

Tool:

- MAFFT

Command used:

```bash
mafft --localpair --maxiterate 1000 --reorder data/curated/tubulin_curated.fasta > alignments/tubulin_raw_msa.fasta 2> logs/mafft_alignment.log
```

Parameters:

- `--localpair`: used for a more accurate local pairwise alignment strategy
- `--maxiterate 1000`: allowed iterative refinement up to 1000 cycles
- `--reorder`: allowed MAFFT to reorder sequences in the output alignment

Input:

- `data/curated/tubulin_curated.fasta`

Output:

- `alignments/tubulin_raw_msa.fasta`

Raw alignment length:

- 525 columns

## 3. Alignment Trimming

Tool:

- trimAl

Command used:

```bash
trimal -in alignments/tubulin_raw_msa.fasta -out alignments/tubulin_trimmed_msa.fasta -automated1 -fasta
```

Parameters:

- `-in`: input alignment file
- `-out`: output trimmed alignment file
- `-automated1`: automated trimming mode selected by trimAl
- `-fasta`: output saved in FASTA format

Input:

- `alignments/tubulin_raw_msa.fasta`

Output:

- `alignments/tubulin_trimmed_msa.fasta`

Trimmed alignment length:

- 365 columns

## 4. Phylogenetic Tree Construction

Tool:

- IQ-TREE

Command used:

```bash
iqtree2 -s alignments/tubulin_trimmed_msa.fasta -st AA -m MFP -B 1000 -alrt 1000 -T AUTO --seed 12345 --prefix trees/tubulin_iqtree
```

Parameters:

- `-s`: input trimmed alignment
- `-st AA`: amino-acid/protein alignment
- `-m MFP`: automatic model selection using ModelFinder Plus
- `-B 1000`: 1000 ultrafast bootstrap replicates
- `-alrt 1000`: 1000 SH-aLRT replicates
- `-T AUTO`: automatic thread selection
- `--seed 12345`: fixed random seed for reproducibility
- `--prefix`: output file prefix

Best-fit model selected by IQ-TREE:

- LG+I+G4

Main output files:

- `trees/tubulin_iqtree.treefile`
- `trees/tubulin_iqtree.contree`
- `trees/tubulin_iqtree.iqtree`
- `trees/tubulin_iqtree.log`

## 5. Tree Visualization

Tool:

- FigTree

Input tree file:

- `trees/tubulin_iqtree.contree`

Output figure:

- `figures/tubulin_tree_final.pdf`

## 6. Software Versions

Software version records are stored in the `logs/` folder.
