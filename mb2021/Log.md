# Use zsh

Do not change to bash!

# Install Homebrew and software

Install Homebrew and follow the instruction to add paths to config files.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install other software following the instruction to add paths to config files.

```sh
brew install git webp java openssl gnu-sed
brew install —-cask visual-studio-code dropbox firefox zotero igv jalview rstudio miniconda
```

## MacVim and vim cannot be installed together

I install vim and then install macvim but failed with the error `Error: It seems there is already a Binary at '/opt/homebrew/bin/view'.` I uninstall vim and install macvim. It works. 

# Install R from official pkg

https://cran.r-project.org/bin/macosx/

Big Sur version

I met the problem "Apple cannot check it for malicious software". It is solved in this way: Go to macOS System Preferences > Security & Privacy > General and make sure that the option for "Allow apps downloaded from" is set to "App Store and identified developers.

# Config zsh

```zsh
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh ; cd -; }
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ; cd -; }
```

```zsh
cp mb2021/.zshrc ~/.zshrc
```

# Conda 

See private blog post of conda log.

## Env `r4.1-py39`

```sh
conda create -n r4.1-py39 python=3.9
conda activate r4.1-py39
# Some R packages depend on Cairo
conda install -c anaconda cairo
# R
conda install -c conda-forge r-base r-essentials r-cairo r-textshaping r-proj4 r-cli r-devtools r-tidyverse r-tinytex
conda install -c bioconda bioconductor-diffbind
# Unsovable conflicts. Fail to install Monocle3 with Conda in this env.
#conda install -c bioconda r-monocle3 
# Conga dependency
conda install seaborn scikit-learn statsmodels numba pytables
conda install -c conda-forge python-igraph leidenalg louvain notebook imagemagick
conda install -c intel tbb # optional
pip install scanpy
pip install fastcluster # optional
```

