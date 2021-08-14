# Use zsh

Do not change to bash!

# Install Homebrew and software

Install Homebrew and follow the instruction to add paths to config files.

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install other software following the instruction to add paths to config files.

```sh
brew install git vim webp java openssl gnu-sed
brew install —-cask visual-studio-code dropbox firefox zotero igv jalview rstudio miniconda
```

# Config zsh

```zsh
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh ; cd -; }
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ; cd -; }
```

```zsh
cp mb2021/.zshrc ~/.zshrc
```