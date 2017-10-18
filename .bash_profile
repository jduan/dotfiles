# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# Automatically placed at end of file by MDE. To disable this behavior: touch ~/.no-mde-dotfile. Ideally you do not need to do this. Please contactmde-support@twitter.com to discuss long-term alternatives.
source /opt/twitter_mde/etc/bash_profile
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export JAVA_HOME=$(/usr/libexec/java_home)
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi
