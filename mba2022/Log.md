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

See private blog post of conda log.

## Env `r42-py311`

```{bash r42-py311}
conda create -c conda-forge -n r42-py311 python=3.11
conda init zsh
conda activate r42-py311

# Install mamba
conda install -c conda-forge mamba
...
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