[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

if [ -n "$BASH_VERSION" ] && [ -f $HOME/.bashrc ];then
    source $HOME/.bashrc
fi
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
