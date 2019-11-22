#Sys.setlocale(category="LC_ALL", locale = "en_US.UTF-8")

# Homebrew:gettext
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

# Homebrew:openblas
export LDFLAGS="-L/usr/local/opt/openblas/lib"
export CPPFLAGS="-I/usr/local/opt/openblas/include"

# Homebrew:readline
export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"

######################### Anaconda ########################
export PATH="$PATH":/usr/local/anaconda3/bin

########################## Git ############################
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

