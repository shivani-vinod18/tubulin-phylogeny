# Tubulin Phylogeny

This repository contains a reproducible phylogenetic analysis of representative tubulin protein sequences.

## Biological Objective

The objective of this analysis is to compare representative alpha-, beta-, and gamma-tubulin protein sequences across diverse eukaryotic organisms and infer their evolutionary relationships using multiple sequence alignment and maximum-likelihood phylogenetic tree construction.

## Dataset

The final curated dataset contains 30 protein sequences:

- 10 alpha-tubulins
- 10 beta-tubulins
- 10 gamma-tubulins

Sequences were selected from 10 organisms or organism groups representing animals, fungi, plants/green algae, amoebozoa, and kinetoplastids.

Reviewed UniProtKB entries were preferred where available. Entries were selected based on correct organism or organism group, correct tubulin type, clear protein annotation, and full-length or near full-length sequence length.

The curated dataset is provided in:

- data/curated/tubulin_curated.fasta

Sequence metadata and curation records are provided in:

- metadata/accession_table.tsv
- metadata/removed_sequences.tsv

## Repository Structure

text
tubulin-phylogeny/
├── README.md
├── data/
│   ├── raw/
│   └── curated/
├── metadata/
├── alignments/
├── trees/
├── figures/
├── logs/
├── docs/
└── scripts/


Folder descriptions:

- data/raw/: raw FASTA files downloaded from UniProtKB
- data/curated/: final curated FASTA file used for analysis
- metadata/: accession table and removed sequence records
- alignments/: raw and trimmed multiple sequence alignments
- trees/: IQ-TREE output files
- figures/: exported phylogenetic tree figure
- logs/: software version records and analysis logs
- docs/: workflow, parameters, and biological interpretation
- scripts/: command script used to reproduce the main analysis

## Workflow Summary

The analysis followed these steps:

1. Retrieve representative tubulin protein sequences from UniProtKB.
2. Curate the dataset by checking organism, tubulin type, annotation quality, and sequence length.
3. Remove non-target entries such as tubulin-associated enzymes, complex subunits, kinesin-like proteins, and unrelated proteins.
4. Standardize FASTA headers for readability and downstream analysis.
5. Align the curated protein sequences using MAFFT.
6. Trim the raw alignment using trimAl.
7. Construct a maximum-likelihood phylogenetic tree using IQ-TREE.
8. Visualize the final tree using FigTree.

Detailed workflow notes are provided in:

- docs/workflow.md

Commands and parameters are provided in:

- docs/parameters.md
- scripts/commands.sh

## Main Input and Output Files

Main input:

- data/curated/tubulin_curated.fasta

Main outputs:

- alignments/tubulin_raw_msa.fasta
- alignments/tubulin_trimmed_msa.fasta
- trees/tubulin_iqtree.treefile
- trees/tubulin_iqtree.contree
- figures/tubulin_tree_final.pdf

## Tools Used

- UniProtKB for protein sequence retrieval
- MAFFT for multiple sequence alignment
- trimAl for alignment trimming
- IQ-TREE for maximum-likelihood phylogenetic tree construction
- FigTree for tree visualization

The best-fit model selected by IQ-TREE was:

- LG+I+G4

## Results Summary

The maximum-likelihood tree broadly separated the curated sequences into alpha-, beta-, and gamma-tubulin groups. This supports the interpretation that these tubulin types represent distinct paralogous groups within the tubulin protein family.

Some internal relationships had moderate or low support and were interpreted cautiously. The Trypanosoma entries were also interpreted cautiously because exact-species reviewed entries were limited, and the gamma-tubulin entry was unreviewed.

Full biological interpretation is provided in:

- docs/biological_interpretation.md

## Special Notes

One representative alpha-, beta-, and gamma-tubulin sequence was selected per organism or organism group where possible to avoid overrepresentation of species with multiple paralogs.

The Trypanosoma entries were labelled as Trypanosoma_brucei_complex because exact-species reviewed entries were limited.

## Reproducibility

All input files, intermediate files, output files, metadata tables, logs, tree files, and the final exported figure are included in this repository.

To reproduce the main analysis, run:

bash
bash scripts/commands.sh
