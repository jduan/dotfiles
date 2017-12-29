# define a list of paths
set paths $HOME/github/jduan/misc_scripts $HOME/repos/sysops/optica_tools
for path in $paths
    if not contains "$path" $PATH
        set -gx PATH "$path" $PATH
    end
end
# set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

source ~/.fish_aliases
source ~/.config/fish/functions/ctrl_f.fish

fish_vi_key_bindings
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
set paths $HOME/.nix-profile/bin
for path in $paths
    if not contains "$path" $PATH
        set -gx PATH "$path" $PATH
    end
end
