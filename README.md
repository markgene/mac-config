Here is the document about my macOS config. If you are interested in config your macOS in the same or similar way as I do, you may be interested in my background work. In brief, I am a scientist in the field of bioinformatics. I mostly program in R and Python. I also work on web development sometime.

# macOS versions

I have used or am using the following macOS versions:

* High Sierra version 10.13.6

# Install Xcode Command Line Tools

```bash
xcode-select --install
```

# Package manager: Homebrew and MacPorts

[Homebrew](https://brew.sh/) is my major package manager. I have used to [MacPorts](https://www.macports.org/) before. You can use it as an alternative.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Notice: Homebrew will report some messages about "caveats", which usually require manual manipulation, such as add some lines to `.bash_profile`.

# Version control system: git and Sourcetree

I use [`git`](https://git-scm.com/) for version control and [Sourcetree](https://www.sourcetreeapp.com/) GUI.

```bash
brew install git
brew install caskroom/cask/sourcetree
```

I setup `bash` following [this Gist](https://gist.github.com/nisbeti/3d1c66bbb8f5cd83c2bce3ce05a7d58f). 

```bash
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash ; cd -; }
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ; cd -; }
# You can also use subshell:
# (cd ~ && curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
# (cd ~ && curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
```

Then, add the following to `.bashrc` or `.bash_profile`:

```bash
# Enable tab completion
source ~/git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
```

When setup a new machine, I will clone this repo:

```bash
cd ~
mkdir Projects
cd Projects
git clone https://github.com/markgene/mac-config.git
```

Config Git: TBA.

```bash
git config --list
```

# R and RStudio

Follow [the post](https://www.datacamp.com/community/tutorials/installing-R-windows-mac-ubuntu) written on 2019/11/11.

```bash
brew install r
brew cask install rstudio-preview
```

# Python and Conda

I install Python through Anaconda system and manage Python related issues over there. 

```bash
brew cask install anaconda
```

To use anaconda, you may need to add the `/usr/local/anaconda3/bin` directory to your `PATH` environment variable, eg (for bash shell):

```bash
export PATH=/usr/local/anaconda3/bin:"$PATH"
```

# Text editors

## vim

I choose `vi` between `vi` and `emacs` for historical reason. I install the following:

* vim
* neovim (start by running `nvim` not `neovim` in the terminal).
* macvim (start by running `mvim` not `macvim` in the terminal, or click the icon in Applications).

```bash
brew install vim neovim
brew cask install macvim
```

I use Dracula theme for `vim`. I tried "vim+bundle", but it does not work :-( I used "not so clover" method by moving `dracula.vim` to `~/.vim/colors` and add the following lines to `~/.vimrc` file:

```bash
syntax on
color dracula
```

I set font size by adding the line below to `~/.vimrc`:

```bash
set guifont=Menlo\ Regular:h13
```

## VS code 

```bash
brew cask install visual-studio-code-insiders
```

To invoke VS code from commmand line, follow the official post [Visual Studio Code on macOS](https://code.visualstudio.com/docs/setup/mac).

# Apps

## Dracula theme for Terminal.app

I use [dracula theme](https://draculatheme.com/terminal/) for Terminal.app.

## Dropbox

I use Dropbox for file hosting service for historical reason. Install via `homebrew`:

```bash
brew cask install dropbox 
```

Then enable accessibility in System Preferences: Security & Privacy.

## Firefox 

I use Firefox Nightly as my major browser which the most unstable version. Other versions are stable, beta, and developer edition (see [here](https://www.mozilla.org/en-US/firefox/channel/desktop/)).

```bash
brew cask install firefox-nightly 
```



