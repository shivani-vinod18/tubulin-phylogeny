# Tubulin Phylogeny

This repository contains a reproducible phylogenetic analysis of representative tubulin protein sequences.

## Aim

The aim of this analysis is to examine evolutionary relationships among major tubulin protein family members, focusing on alpha-, beta-, and gamma-tubulin sequences from diverse eukaryotic organisms.

## Dataset

The final curated dataset contains 30 protein sequences:

- 10 alpha-tubulins
- 10 beta-tubulins
- 10 gamma-tubulins

Sequences were selected from 10 eukaryotic organisms or organism groups, including animals, fungi, plants/green algae, amoebozoa, and kinetoplastids.

Reviewed UniProtKB entries were preferred where available. Entries were selected based on correct organism or organism group, correct tubulin type, clear protein annotation, and full-length or near full-length sequence length.

The curated FASTA file is:

- data/curated/tubulin_curated.fasta

Sequence metadata and curation records are provided in:

- metadata/accession_table.tsv
- metadata/removed_sequences.tsv

## Repository Structure

- data/raw/: raw downloaded FASTA files
- data/curated/: curated FASTA dataset used for analysis
- metadata/: accession table and removed sequence records
- alignments/: raw and trimmed multiple sequence alignments
- trees/: IQ-TREE output files
- logs/: software version records and run logs
- docs/: workflow, parameters, and biological interpretation
- figures/: exported phylogenetic tree figure
- scripts/: commands used to reproduce the analysis

## Workflow

The analysis followed this workflow:

1. Retrieve representative tubulin protein sequences from UniProtKB.
2. Curate the dataset and remove non-target entries.
3. Standardize FASTA headers.
4. Align the curated protein sequences using MAFFT.
5. Trim the alignment using trimAl.
6. Construct a maximum-likelihood phylogenetic tree using IQ-TREE.
7. Visualize the tree using FigTree.

The main commands used for alignment, trimming, and tree construction are provided in:

- scripts/commands.sh
- docs/parameters.md

## Main Output Files

Raw multiple sequence alignment:

- alignments/tubulin_raw_msa.fasta

Trimmed multiple sequence alignment:

- alignments/tubulin_trimmed_msa.fasta

Main tree files:

- trees/tubulin_iqtree.treefile
- trees/tubulin_iqtree.contree
- trees/tubulin_iqtree.iqtree
- trees/tubulin_iqtree.log

Final tree figure:

- figures/tubulin_tree_final.pdf

## Results Summary

The maximum-likelihood tree broadly separated the curated sequences into alpha-, beta-, and gamma-tubulin groups. This supports the interpretation that these tubulin types represent distinct paralogous groups within the tubulin protein family.

Some internal relationships had moderate or low support and were interpreted cautiously. The Trypanosoma entries were also interpreted cautiously because exact-species reviewed entries were limited.

Full biological interpretation is provided in:

- docs/biological_interpretation.md

## Reproducibility

All input files, intermediate files, output files, metadata tables, logs, tree files, and the final exported figure are included in this repository.

To reproduce the main analysis, run:

bash
bash scripts/commands.sh
