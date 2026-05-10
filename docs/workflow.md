# Workflow

This document records the complete workflow used for the tubulin phylogenetic analysis.

## 1. Dataset Design

The planned dataset includes approximately 30 representative eukaryotic tubulin protein sequences: alpha-, beta-, and gamma-tubulin sequences from 10 diverse organisms.

The selected organisms are:

1. Homo sapiens
2. Mus musculus
3. Drosophila melanogaster
4. Caenorhabditis elegans
5. Saccharomyces cerevisiae
6. Schizosaccharomyces pombe
7. Arabidopsis thaliana
8. Chlamydomonas reinhardtii
9. Dictyostelium discoideum
10. Trypanosoma brucei

This sampling strategy was chosen to include representatives from animals, fungi, plants/green algae, amoebozoa, and divergent protists while keeping the dataset small enough for careful manual curation.

The dataset will include representative tubulin protein sequences from diverse eukaryotic organisms.

Planned tubulin types:

- Alpha-tubulin
- Beta-tubulin
- Gamma-tubulin

The dataset will be curated to avoid overrepresentation of closely related organisms or redundant paralogs.

## 2. Sequence Retrieval

Protein sequences will be retrieved from UniProt.

For each sequence, the following information will be recorded:

- Sequence ID
- UniProt accession
- Organism
- Taxonomic group
- Tubulin type
- Reviewed/unreviewed status
- Sequence length
- Inclusion or removal decision
- Reason for inclusion or removal

## 3. Dataset Curation

Sequences will be checked for:

- Correct tubulin type
- Complete protein sequence
- Reasonable sequence length
- Duplicate or redundant entries
- Fragment annotations
- Poor or unclear annotation

Only suitable sequences will be retained in the final curated FASTA file.

## Domain-related considerations

Only full-length or near full-length tubulin protein sequences were retained. No separate domain extraction was performed because the selected UniProt entries were annotated as alpha-, beta-, or gamma-tubulin proteins and had sequence lengths consistent with expected full-length tubulin proteins. Entries representing tubulin-associated proteins or tubulin-modifying enzymes were excluded.

## 4. Multiple Sequence Alignment

The curated protein sequences will be aligned using MAFFT.

The raw alignment will be saved in the `alignments/` folder.

## 5. Alignment Trimming

Poorly aligned regions will be trimmed before tree construction.

The trimmed alignment will be saved in the `alignments/` folder.

## 6. Phylogenetic Tree Construction

A phylogenetic tree will be constructed from the trimmed alignment.

Tree output files will be saved in the `trees/` folder.

## 7. Tree Visualization and Interpretation

The final tree will be visualized and interpreted in terms of tubulin paralog relationships and evolutionary divergence.
