# Tubulin Phylogeny

This repository contains a reproducible phylogenetic analysis of representative alpha-, beta-, and gamma-tubulin protein sequences.

## Biological Objective

The objective of this analysis is to compare representative tubulin protein sequences across diverse eukaryotic organisms and infer evolutionary relationships among major tubulin paralog groups.

## Repository Structure

```text
tubulin-phylogeny/
│
├── data/
│   ├── raw/
│   └── curated/
│
├── metadata/
│   ├── accession_table.tsv
│   └── removed_sequences.tsv
│
├── alignments/
│   ├── tubulin_raw_msa.fasta
│   └── tubulin_trimmed_msa.fasta
│
├── trees/
│   ├── tubulin_iqtree.treefile
│   ├── tubulin_iqtree.contree
│   ├── tubulin_iqtree.iqtree
│   └── tubulin_iqtree.log
│
├── figures/
│   └── tubulin_tree_final.pdf
│
├── logs/
│
├── docs/
│   ├── workflow.md
│   ├── parameters.md
│   └── biological_interpretation.md
│
├── scripts/
│   └── commands.sh
│
└── README.md
```

## Dataset

The final curated dataset contains 30 tubulin protein sequences:

- 10 alpha-tubulins
- 10 beta-tubulins
- 10 gamma-tubulins

Sequences were selected from organisms or organism groups representing animals, fungi, plants/green algae, amoebozoa, and kinetoplastids.

Reviewed UniProtKB entries were preferred where available. Entries were selected based on organism, tubulin type, annotation clarity, and full-length or near full-length sequence length.

Main curated dataset:

- `data/curated/tubulin_curated.fasta`

Sequence metadata:

- `metadata/accession_table.tsv`

Removed sequence records:

- `metadata/removed_sequences.tsv`

## Workflow

The analysis followed this workflow:

1. Retrieve representative tubulin protein sequences from UniProtKB.
2. Curate the dataset and remove non-target entries.
3. Standardize FASTA headers.
4. Perform multiple sequence alignment using MAFFT.
5. Trim the alignment using trimAl.
6. Construct a maximum-likelihood phylogenetic tree using IQ-TREE.
7. Visualize the final tree using FigTree.

Detailed workflow documentation:

- `docs/workflow.md`

Commands and parameters:

- `docs/parameters.md`
- `scripts/commands.sh`

## Input and Output

Main input:

- `data/curated/tubulin_curated.fasta`

Main outputs:

- `alignments/tubulin_raw_msa.fasta`
- `alignments/tubulin_trimmed_msa.fasta`
- `trees/tubulin_iqtree.treefile`
- `trees/tubulin_iqtree.contree`
- `figures/tubulin_tree_final.pdf`

## Tools Used

- UniProtKB
- MAFFT
- trimAl
- IQ-TREE
- FigTree

IQ-TREE selected the following best-fit model:

- `LG+I+G4`

## Special Rules

One representative alpha-, beta-, and gamma-tubulin sequence was selected per organism or organism group where possible.

Non-target entries such as tubulin-associated enzymes, gamma-tubulin complex subunits, kinesin-like proteins, and unrelated proteins were excluded.

The Trypanosoma entries were labelled as `Trypanosoma_brucei_complex` because exact-species reviewed entries were limited.

## Results Summary

The maximum-likelihood tree broadly separated the curated sequences into alpha-, beta-, and gamma-tubulin groups. This supports the interpretation that these tubulin types represent distinct paralogous groups within the tubulin protein family.

Some internal relationships had moderate or low support and were interpreted cautiously.

Full biological interpretation:

- `docs/biological_interpretation.md`

## Reproducibility

To reproduce the main analysis, run:

```bash
bash scripts/commands.sh
```
