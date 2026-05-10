## Workflow Summary

A curated set of alpha-, beta-, and gamma-tubulin protein sequences was prepared from selected eukaryotic organisms. The dataset was checked to remove entries that were not actual tubulin proteins, such as tubulin-associated enzymes or complex subunits.

The curated protein sequences were aligned using MAFFT. The resulting alignment was trimmed using trimAl to remove poorly aligned or gap-rich regions. The trimmed alignment was then used to construct a maximum-likelihood phylogenetic tree using IQ-TREE.

All input files, intermediate alignment files, tree output files, metadata tables, and log files were kept in the repository so that the analysis can be checked and repeated.
