export EDITOR=vim
export HISTSIZE=5000
source $HOME/.zsh/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '
source $HOME/.sh_aliases
bindkey -v # vi mode
setopt NO_NOMATCH # make HEAD^ work in zsh

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' max-errors 1 not-numeric
zstyle :compinstall filename '/Users/jingjing.duan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' \
        'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
