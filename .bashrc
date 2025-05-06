# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

set -o vi

# Enable Colors 
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'


# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export WORKSPACE="$HOME/workspace"
export PERSONAL="$HOME/personal"

# Path
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

# Rust
export CARGO_HOME="$WORKSPACE/cargo"
export RUSTUP_HOME="$WORKSPACE/rustup"
export PATH="$WORKSPACE/cargo/bin:$PATH"

# Go
export PATH="$WORKSPACE/go/bin:$PATH"
export GOPATH="$WORKSPACE/go"
export GOBIN="$GOPATH/bin/"

# Java
export JAVA_HOME="$(readlink -f /usr/bin/java | sed "s:/bin/java::")"

export LANG="en_US.UTF-8"
export EDITOR="nvim"
export TERM="xterm-256color"

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

. "/home/michael/workspace/cargo/env"


