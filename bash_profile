if [ -n "$BASH_VERSION" ]; then
    if [ -f $HOME/.bash_login ]; then
        . "$HOME/.bash_login"
    fi

    if [ -f $HOME/.profile ]; then
        . "$HOME/.profile"
    elif [ -f $HOME/.bashrc ]; then
        . "$HOME/.bashrc"
    fi
fi
