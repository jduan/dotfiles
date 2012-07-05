# 'screen'
alias sc='screen'
alias scl='screen -list'
alias scx='screen -x'

alias tf='tail -f'

alias ssh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
alias psef='ps -ef | /usr/bin/grep -i '
alias grep='grep -irn --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
if [ Darwin = "$(uname 2>/dev/null)" ]; then
  alias ls='ls -G'
elif [ Linux = "$(uname 2>/dev/null)" ]; then
  alias ls='ls --color=tty'
else
  echo "!! unknown operation system, check ~/.bash_aliases"
fi

# bundle
alias be='bundle exec'

# p4
alias p4changes='p4  changes -u jduan -l | less'

# git
alias gitlg='git lg|head'

# tmux
alias tml='tmux list-sessions'
alias tma='tmux attach -t'
