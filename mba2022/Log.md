# Use zsh

Do not change to bash!

# Install Homebrew and software

Install Homebrew and follow the instruction to add paths to config files.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install other software following the instruction to add paths to config files.

```{bash homebrew}
brew install git webp java openssl gnu-sed
brew install —-cask visual-studio-code dropbox firefox zotero rstudio miniconda
```

## MacVim and vim cannot be installed together

I install vim and then install macvim but failed with the error `Error: It seems there is already a Binary at '/opt/homebrew/bin/view'.` I uninstall vim and install macvim. It works. 

```{bash macvim}
brew install macvim
```

# Install R from official pkg

https://cran.r-project.org/bin/macosx/

`R-4.2.2-arm64.pkg`

I did not meet the problem "Apple cannot check it for malicious software" this time, but if so, it can be solved in this way: Go to macOS System Preferences > Security & Privacy > General and make sure that the option for "Allow apps downloaded from" is set to "App Store and identified developers.

# Conda 

## Env `r42-py311`

```{bash r42-py311-mba22-conda}
conda create -c conda-forge -n r42-py311 python=3.11
conda init zsh
conda activate r42-py311

# Install mamba
conda install -c conda-forge mamba

# R
## R dependencies
mamba install -c conda-forge cairo pillow
mamba install -c conda-forge imagemagick
## R packages
mamba search -c conda-forge 'r>=4.2'
mamba install -c conda-forge r=4.2
mamba install -c conda-forge r-base r-essentials r-cairo r-textshaping  r-proj4 r-cli r-devtools r-tidyverse r-xml r-magick
mamba install -c conda-forge r-sf
```

### Install R packages

Bioconductor release comes out usually either in April/May or October.

```{r r42-py311-mba22}
# CRAN ----
cran_pkgs <- c(
  # "ashr",
  "blogdown",
  # "cli",
  "devtools",
  # "eulerr",
  "factoextra",
  "GGally",
  'ggExtra',
  "ggpubr",
  "ggsci",
  "ggstatsplot",
  # "ggupset",
  "ggVennDiagram",
  # "gtools",
  "hdf5r",
  "here",
  # "immunarch",
  # "metap",
  # "mixtools",
  # "modelr",
  "openxlsx",
  # "pander",
  "patchwork",
  # "pwr",
  "rmarkdown",
  # "Seurat",
  # "SignacX",
  "survminer",
  "tidyverse",
  # "tufte",
  # "tufterhandout",
  # "UCSCXenaTools",
  # "vegan",
  "workflowr"
)

cran_pkgs_to_be_installed <-
  cran_pkgs[!cran_pkgs %in% installed.packages()]
cran_pkgs_to_be_installed
install.packages(cran_pkgs_to_be_installed)
# Manually install failed packages via Mamba
# Then run install again
cran_pkgs_to_be_installed <-
  cran_pkgs[!cran_pkgs %in% installed.packages()]
cran_pkgs_to_be_installed
install.packages(cran_pkgs_to_be_installed)

## Bioconductor ----
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

bioc_pkgs <- c(
  # "apeglm",
  # 'batchelor',
  # "BiocStyle",
  # "BSgenome.Hsapiens.UCSC.hg38",
  # "BSgenome.Mmusculus.UCSC.mm10",
  # "celda",
  # "celldex",
  # "ChIPpeakAnno",
  "ChIPseeker",
  "clusterProfiler",
  # "csaw",
  # "EDASeq",
  # "EnsDb.Hsapiens.v86",
  # "EnsDb.Mmusculus.v79",
  # "GenomicAlignments",
  # "glmGamPoi",
  # "GSVA",
  # "maEndToEnd",
  # "MAST",
  # 'Matrix.utils',
  # "MotifDb",
  "msigdbr",
  "org.Hs.eg.db",
  "org.Mm.eg.db",
  "pasilla",
  # "pathview",
  "ReactomePA",
  # "rnaseqGene",
  # "RUVSeq",
  # "SingleR",
  # "slingshot",
  # "tradeSeq",
  # "TxDb.Hsapiens.UCSC.hg19.knownGene",
  # "TxDb.Hsapiens.UCSC.hg38.knownGene",
  "TxDb.Mmusculus.UCSC.mm10.knownGene"
  # "tximport",
  # "tximeta",
  # "tximportData"
)

bioc_pkgs_to_be_installed <-
  bioc_pkgs[!bioc_pkgs %in% installed.packages()]
bioc_pkgs_to_be_installed
BiocManager::install(bioc_pkgs_to_be_installed, dependencies = TRUE)

# BiocManager::install("EnhancedVolcano", dependencies = TRUE)

## GitHub ----
# devtools::install_github("r-lib/textshaping")
# devtools::install_github("tidyverse/tidyverse")
# remotes::install_github("kstreet13/bioc2020trajectories")
# remotes::install_github('chris-mcginnis-ucsf/DoubletFinder')
# remotes::install_github('kstreet13/bioc2020trajectories')
# devtools::install_github('m-clark/lazerhawk')
# devtools::install_github("m-clark/visibly")
# devtools::install_github('m-clark/tidyext')
# Seurat wrappers and SeuratData
# remotes::install_github('satijalab/seurat-wrappers')
# devtools::install_github('satijalab/seurat-data')
# Monocle3
# devtools::install_github('cole-trapnell-lab/leidenbase', force = TRUE)
# devtools::install_github('cole-trapnell-lab/monocle3')
# My own package
# remotes::install_github('markgene/mutils')
# Trackplot
# remotes::install_github(repo = "poisonalien/trackplot")
```

# Config zsh

Largely follow the [post](https://www.oliverspryn.com/blog/adding-git-completion-to-zsh)

Download the scripts

```{sh}
# Create the folder structure
mkdir -p ~/.zsh
cd ~/.zsh

# Download the scripts
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
```


```{sh}
cp mba2022/.zshrc ~/.zshrc
```

# Git config

```{bash}
git config --global user.name "Mark J Chen"
git config --global user.email "mjchen.gene@gmail.com"
```

# Install Quarto (failed)

I tried to install Quarto using 1) pkg downloaded from official website and 2) homebrew. They give the same error message:

```default
(base) mjchen@ bin % quarto check                

[✓] Checking Quarto installation......OK
      Version: 1.2.335
      Path: /Applications/quarto/bin

[✓] Checking basic markdown render....OK

ERROR: NotFound: No such file or directory (os error 2), remove '/Users/mjchen/Library/Caches/quarto/sass/397ef2e52d54cf686e4908b90039e9db.css'
```

Solution: I restart my Mac and it then works. 
