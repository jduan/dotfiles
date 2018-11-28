#########################################################
# Why do we check if a path has been added to $PATH?
#
# Typically, I start a terminal which loads your default shell.
# That's when this file gets loaded the first time and $PATH is set.
# Then I start "tmux" inside the shell. tmux inherits all the
# environment variables, including $PATH, from the parent shell.
# When tmux launches a fish shell inside it, the fish shell inherits
# the $PATH env var too. Then the fish shell loads this file again.
# That's why we don't want to add things to $PATH again.
#########################################################
# define a list of paths
if [ -f '/usr/libexec/java_home' ];
    export JAVA_HOME=(/usr/libexec/java_home -v 1.8)
end
set paths \
    $JAVA_HOME \
    $HOME/github/jduan/misc_scripts \
    $HOME/repos2/sysops/optica_tools \
    $HOME/airlab/runtime_gems/tools/bin \
    # haskell stack
    $HOME/.local/bin
for path in $paths
    if not contains "$path" $PATH
        set -gx PATH "$path" $PATH
    end
end
# set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

source ~/.fish_aliases

fish_vi_key_bindings
source ~/.config/fish/functions/fish_user_key_bindings.fish
# set -g fish_user_paths "/usr/local/opt/node@6/bin" $fish_user_paths

set up rbenv
status --is-interactive; and . (rbenv init -|psub)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jingjing_duan/google-cloud-sdk/path.fish.inc' ];
    if type source > /dev/null;
        source '/Users/jingjing_duan/google-cloud-sdk/path.fish.inc';
    else;
        . '/Users/jingjing_duan/google-cloud-sdk/path.fish.inc';
    end;
end

# Nix
# if [ -f '/nix/var/nix/profiles/default/etc/profile.d/nix-profile.fish' ];
#   source '/nix/var/nix/profiles/default/etc/profile.d/nix-profile.fish';
# end
# End Nix

# Nix workaround
# set paths $HOME/.nix-profile/bin
# for path in $paths
#     if not contains "$path" $PATH
#         set -gx PATH "$path" $PATH
#     end
# end

# airbnb
set -gx DATA_DIR $HOME/repos2/data
set -gx AFDEV_HOST "i-0a55744d91bc4533a.inst.aws.airbnb.com"
# the port you'd like to use to run the local airflow webserver. This should be
# a number between 49152–65535. Do not use 61903, you should choose a different
# port
set -gx AFDEV_PORT 61803
