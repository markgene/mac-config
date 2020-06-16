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
  "DESeq2",
  "clusterProfiler",
  "DOSE",
  "org.Hs.eg.db",
  "pathview",
  "DEGreport",
  "tximport",
  "AnnotationDbi",
  "EnsDb.Hsapiens.v86",
  "AnnotationHub",
  "ensembldb",
  "apeglm"
  # "DEGreport",
  # "tximport",
)

bioc_pkgs_to_be_installed <- bioc_pkgs[!bioc_pkgs %in% installed.packages()]
BiocManager::install(bioc_pkgs_to_be_installed)
