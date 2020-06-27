# Install from CRAN
pkgs <- c(
  "BiocManager",
  "devtools",
  "tidyverse",
  "RColorBrewer",
  "pheatmap",
  "ggrepel",
  "cowplot"
)

pkgs_to_be_installed <- pkgs[!pkgs %in% installed.packages()]
install.packages(pkgs_to_be_installed)

# Install from Bioconductor
bioc_pkgs <- c(
  "AnnotationDbi",
  "AnnotationHub",
  "clusterProfiler",
  "DEGreport",
  "DESeq2",
  "DOSE",
  "EnsDb.Hsapiens.v86",
  "ensembldb",
  "apeglm",
  "ChIPseeker",
  "org.Hs.eg.db",
  "org.Mm.eg.db",
  "pathview",
  "TxDb.Mmusculus.UCSC.mm10.knownGene",
  "tximport"
  # "DEGreport",
  # "tximport",
)

bioc_pkgs_to_be_installed <- bioc_pkgs[!bioc_pkgs %in% installed.packages()]
BiocManager::install(bioc_pkgs_to_be_installed)
