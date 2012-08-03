PATH=$PATH:/usr/local/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting

source $HOME/.zsh/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 1 not-numeric
zstyle :compinstall filename '/Users/jingjing.duan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
