# Step by step

## Install apps of general purpose

Install VS code and Dropbox with `brew cask`

```sh
brew cask install visual-studio-code
brew cask install dropbox
brew cask install macvim
brew cask install firefox
brew cask install iterm2
brew cask install zotero
brew cask install igv
brew cask install cytoscape
brew cask install jalview
brew install hugo
brew install tree
brew install webp
brew install imagemagick
brew install gnu-sed
brew install java
brew install hdf5
```

## vim, git, openssl

Install vim, git and openssl with Homebrew.

```
D201026:~ jchen4$ brew install git openssl vim 
==> Downloading https://homebrew.bintray.com/bottles/gettext-0.20.2_1.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/71/71f4ded03e8258b5e6896eebb00d26ed48307fbebece1a884b17ca3fb40e3121?__gda__=exp=1591903773~hmac=c87cfea03c6d202
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/pcre2-10.35.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/6a/6a1e59a5db23d684f92d2bf695601d1b466f3e9d5407f704ba4679d885d13cef?__gda__=exp=1591903778~hmac=82c5869f40dfd62
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/git-2.27.0.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/5b/5bfe46796926e48d2d78ee87e93195c0a36f7c70d9aa4ff8ab77277a6582441a?__gda__=exp=1591903780~hmac=4cfa377662ce4a1
######################################################################## 100.0%
==> Installing dependencies for git: gettext and pcre2
==> Installing git dependency: gettext
==> Pouring gettext-0.20.2_1.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/gettext/0.20.2_1: 1,923 files, 18.6MB
==> Installing git dependency: pcre2
==> Pouring pcre2-10.35.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/pcre2/10.35: 230 files, 6.0MB
==> Installing git
==> Pouring git-2.27.0.catalina.bottle.tar.gz
==> Caveats
The Tcl/Tk GUIs (e.g. gitk, git-gui) are now in the `git-gui` formula.

Bash completion has been installed to:
  /usr/local/etc/bash_completion.d

zsh completions and functions have been installed to:
  /usr/local/share/zsh/site-functions

Emacs Lisp files have been installed to:
  /usr/local/share/emacs/site-lisp/git
==> Summary
🍺  /usr/local/Cellar/git/2.27.0: 1,478 files, 48.6MB
==> Downloading https://homebrew.bintray.com/bottles/openssl%401.1-1.1.1g.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/19/1926679569c6af5337de812d86f4dad2b21ff883ad3a5d2cd9e8836ac5ac7ffe?__gda__=exp=1591903794~hmac=7a9dae93d8d1775
######################################################################## 100.0%
==> Pouring openssl@1.1-1.1.1g.catalina.bottle.tar.gz
==> Caveats
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because macOS provides LibreSSL.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.profile

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

==> Summary
🍺  /usr/local/Cellar/openssl@1.1/1.1.1g: 8,059 files, 18MB
==> Downloading https://homebrew.bintray.com/bottles/lua-5.3.5_1.catalina.bottle.tar.gz
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/perl-5.30.3.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/8e/8e69722fc2dd90fa4dd58a3c2da45d7d3a2b8645d7732de9a027b918e3747be4?__gda__=exp=1591903808~hmac=d087367c8dbcdc9
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/gdbm-1.18.1.catalina.bottle.1.tar.gz
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/readline-8.0.4.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/6a/6ae1c8e7c783f32bd22c6085caa4d838fed7fb386da7e40ca47b87ec9b1237d6?__gda__=exp=1591903818~hmac=2ef6db837e0537a
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/sqlite-3.32.1.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/fa/faebdccaba17c8d4579a7f72cc1d1874fdd63b8a8d1d21d7c5a2c9585cc59cfa?__gda__=exp=1591903820~hmac=f5a6883f11641d6
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/xz-5.2.5.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/2d/2dcc8e0121c934d1e34ffdb37fcd70f0f7b5c2f4755f2f7cbcf360e9e54cb43b?__gda__=exp=1591903823~hmac=86c148c5d9c8076
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/python%403.8-3.8.3.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/67/67cceb372f3b0f45ff90beb70d6e92ce1416fdd0b3df4df95643fa21451b4fec?__gda__=exp=1591903825~hmac=0736fe4e72fbda1
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/libyaml-0.2.5.catalina.bottle.tar.gz
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/ruby-2.7.1_2.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/c9/c9ee36823a8dfe2686c6d7a3faf5061a032ed0b8e08d484f3ff2cda72d210a08?__gda__=exp=1591903833~hmac=a5efdf18c1d110d
######################################################################## 100.0%
==> Downloading https://homebrew.bintray.com/bottles/vim-8.2.0950.catalina.bottle.tar.gz
==> Downloading from https://akamai.bintray.com/95/950227e7d7b57a1b5a768d3e0d44f2d4aefcfc214b4cd7fbeb989731fb68dbaf?__gda__=exp=1591903838~hmac=ce7a8f5104d2778
######################################################################## 100.0%
==> Installing dependencies for vim: lua, perl, gdbm, readline, sqlite, xz, python@3.8, libyaml and ruby
==> Installing vim dependency: lua
==> Pouring lua-5.3.5_1.catalina.bottle.tar.gz
==> Caveats
You may also want luarocks:
  brew install luarocks
==> Summary
🍺  /usr/local/Cellar/lua/5.3.5_1: 28 files, 286.5KB
==> Installing vim dependency: perl
==> Pouring perl-5.30.3.catalina.bottle.tar.gz
==> Caveats
By default non-brewed cpan modules are installed to the Cellar. If you wish
for your modules to persist across updates we recommend using `local::lib`.

You can set that up like this:
  PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
  echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> ~/.profile
==> Summary
🍺  /usr/local/Cellar/perl/5.30.3: 2,446 files, 62.1MB
==> Installing vim dependency: gdbm
==> Pouring gdbm-1.18.1.catalina.bottle.1.tar.gz
🍺  /usr/local/Cellar/gdbm/1.18.1: 20 files, 602.8KB
==> Installing vim dependency: readline
==> Pouring readline-8.0.4.catalina.bottle.tar.gz
==> Caveats
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides BSD libedit.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"

==> Summary
🍺  /usr/local/Cellar/readline/8.0.4: 48 files, 1.5MB
==> Installing vim dependency: sqlite
==> Pouring sqlite-3.32.1.catalina.bottle.tar.gz
==> Caveats
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.profile

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

==> Summary
🍺  /usr/local/Cellar/sqlite/3.32.1: 11 files, 4MB
==> Installing vim dependency: xz
==> Pouring xz-5.2.5.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/xz/5.2.5: 92 files, 1.1MB
==> Installing vim dependency: python@3.8
==> Pouring python@3.8-3.8.3.catalina.bottle.tar.gz
==> /usr/local/Cellar/python@3.8/3.8.3/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python@3.8/3.8.3/bin
==> /usr/local/Cellar/python@3.8/3.8.3/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python@3.8/3.8.3/bin
==> /usr/local/Cellar/python@3.8/3.8.3/bin/python3 -s setup.py --no-user-cfg install --force --verbose --install-scripts=/usr/local/Cellar/python@3.8/3.8.3/bin
==> Caveats
Python has been installed as
  /usr/local/opt/python@3.8/bin/python3

You can install Python packages with
  /usr/local/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH run:
  echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.profile

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

==> Summary
🍺  /usr/local/Cellar/python@3.8/3.8.3: 4,125 files, 63MB
==> Installing vim dependency: libyaml
==> Pouring libyaml-0.2.5.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/libyaml/0.2.5: 10 files, 323.5KB
==> Installing vim dependency: ruby
==> Pouring ruby-2.7.1_2.catalina.bottle.tar.gz
==> Caveats
By default, binaries installed by gem will be placed into:
  /usr/local/lib/ruby/gems/2.7.0/bin

You may want to add this to your PATH.

ruby is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have ruby first in your PATH run:
  echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.profile

For compilers to find ruby you may need to set:
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"

==> Summary
🍺  /usr/local/Cellar/ruby/2.7.1_2: 20,142 files, 32.2MB
==> Installing vim
==> Pouring vim-8.2.0950.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/vim/8.2.0950: 1,921 files, 32.7MB
==> Caveats
==> git
The Tcl/Tk GUIs (e.g. gitk, git-gui) are now in the `git-gui` formula.

Bash completion has been installed to:
  /usr/local/etc/bash_completion.d

zsh completions and functions have been installed to:
  /usr/local/share/zsh/site-functions

Emacs Lisp files have been installed to:
  /usr/local/share/emacs/site-lisp/git
==> openssl@1.1
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because macOS provides LibreSSL.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.profile

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

==> lua
You may also want luarocks:
  brew install luarocks
==> perl
By default non-brewed cpan modules are installed to the Cellar. If you wish
for your modules to persist across updates we recommend using `local::lib`.

You can set that up like this:
  PERL_MM_OPT="INSTALL_BASE=$HOME/perl5" cpan local::lib
  echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"' >> ~/.profile
==> readline
readline is keg-only, which means it was not symlinked into /usr/local,
because macOS provides BSD libedit.

For compilers to find readline you may need to set:
  export LDFLAGS="-L/usr/local/opt/readline/lib"
  export CPPFLAGS="-I/usr/local/opt/readline/include"

==> sqlite
sqlite is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have sqlite first in your PATH run:
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"' >> ~/.profile

For compilers to find sqlite you may need to set:
  export LDFLAGS="-L/usr/local/opt/sqlite/lib"
  export CPPFLAGS="-I/usr/local/opt/sqlite/include"

==> python@3.8
Python has been installed as
  /usr/local/opt/python@3.8/bin/python3

You can install Python packages with
  /usr/local/opt/python@3.8/bin/pip3 install <package>
They will install into the site-package directory
  /usr/local/opt/python@3.8/Frameworks/Python.framework/Versions/3.8/lib/python3.8/site-packages

See: https://docs.brew.sh/Homebrew-and-Python

python@3.8 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have python@3.8 first in your PATH run:
  echo 'export PATH="/usr/local/opt/python@3.8/bin:$PATH"' >> ~/.profile

For compilers to find python@3.8 you may need to set:
  export LDFLAGS="-L/usr/local/opt/python@3.8/lib"

==> ruby
By default, binaries installed by gem will be placed into:
  /usr/local/lib/ruby/gems/2.7.0/bin

You may want to add this to your PATH.

ruby is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have ruby first in your PATH run:
  echo 'export PATH="/usr/local/opt/ruby/bin:$PATH"' >> ~/.profile

For compilers to find ruby you may need to set:
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"

D201026:~ jchen4$
```

## Deal with caveats of installing vim, git and openssl with Homebrew

Lua

```
D201026:~ jchen4$ brew install luarocks
==> Downloading https://homebrew.bintray.com/bottles/luarocks-3.3.1.catalina.bottle.tar.gz
######################################################################## 100.0%
==> Pouring luarocks-3.3.1.catalina.bottle.tar.gz
==> Caveats
LuaRocks supports multiple versions of Lua. By default it is configured
to use Lua5.3, but you can require it to use another version at runtime
with the `--lua-dir` flag, like this:

  luarocks --lua-dir=/usr/local/opt/lua@5.1 install say
==> Summary
🍺  /usr/local/Cellar/luarocks/3.3.1: 104 files, 696.3KB
D201026:~ jchen4$ 
```


Update `~/.profile`. It is below now:

```sh
# Deal with caveats from brew installation
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export LDFLAGS="-L/usr/local/opt/sqlite/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include"
```

Notice: I did not deal with Python and Ruby; I leave at least Python to conda.

## Setup Git and GitHub

I use VS code. When I first pushed a repo, it asked for auth. Follow the instructions and you will be fine.

## Config the terminal

I setup `bash` following [this Gist](https://gist.github.com/nisbeti/3d1c66bbb8f5cd83c2bce3ce05a7d58f). 

```sh
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash ; cd -; }
cd ~ && { curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh ; cd -; }
# You can also use subshell:
# (cd ~ && curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
# (cd ~ && curl -O https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh)
```

```sh
cp archive/bash_profile ~/.bash_profile
```

## Install Anaconda

```sh
brew cask install anaconda
```

## Install R and RStudio

Install from pkg on [official website](https://cran.r-project.org/bin/macosx/). I have bad experience when installed R with Homebrew.

```sh
brew cask install rstudio
```

Setup RStudio referring to <https://rstats.wtf/save-source.html>.

## Install Java

Install Java with Homebrew, but need to add it to PATH.

```sh
brew install java
```

```
==> Caveats
For the system Java wrappers to find this JDK, symlink it with
  sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

openjdk is keg-only, which means it was not symlinked into /usr/local,
because it shadows the macOS `java` wrapper.

If you need to have openjdk first in your PATH run:
  echo 'export PATH="/usr/local/opt/openjdk/bin:$PATH"' >> /Users/jchen4/.bash_profile

For compilers to find openjdk you may need to set:
  export CPPFLAGS="-I/usr/local/opt/openjdk/include"

==> Summary
🍺  /usr/local/Cellar/openjdk/14.0.1: 634 files, 319.1MB
```

## Install zsh


```sh
brew install zsh
```

Mac asked to change default to zsh.

```sh
chsh -s /bin/zsh
```

Change it back anytime

```sh
chsh -s /bin/bash
```

## Config git

Follow <https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup>

```
git config --global user.name "Mark J Chen"
git config --global user.email "mjchen.gene@gmail.com"
git config --global core.editor vim
git config --list
```

## XQuartz

```sh
brew cask install xquartz
```