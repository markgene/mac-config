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

```sh
conda
```

