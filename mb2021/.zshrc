export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"


########################## Git ############################
# Enable tab completion
source ~/git-completion.zsh

# Change command prompt
source ~/git-prompt.sh

# Get the name of the branch we are on
git_prompt_info() {
  branch_prompt=$(__git_ps1)
  if [ -n "$branch_prompt" ]; then
    status_icon=$(git_status)
    echo $branch_prompt $status_icon
  fi
}

# Show character if changes are pending. See:
# https://stackoverflow.com/questions/1128496/to-get-a-prompt-which-indicates-git-branch-in-zsh
git_status() {
  if current_git_status=$(git status | grep 'added to commit' 2> /dev/null); then
    echo "☠"
  fi
}
autoload -U colors
colors
setopt prompt_subst
PROMPT='
%~%{$fg_bold[black]%}$(git_prompt_info)
→ %{$reset_color%}'