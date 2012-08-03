PATH=$PATH:/usr/local/bin:$HOME/.rvm/bin # Add RVM to PATH for scripting

source $HOME/.zsh/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '
