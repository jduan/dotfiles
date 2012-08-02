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

# hulu
alias deploy='~/workspace/beebee/beebee-client/bin/deploy-code.sh -b ~/workspace/cube-core/build/ps3/ -e en1 -a 10.30.0.104'
alias chrome='open -a "Google Chrome" --args --disable-web-security --allow-file-access-from-files --allow-file-access --enable-file-cookies'
