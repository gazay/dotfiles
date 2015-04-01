#!/usr/bin/env bash

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Default editor: vim
export EDITOR=vim

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gazay"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Work path
alias gow='cd ~/code/martians/amplifr'

# Gulp shortcuts
alias gp='node_modules/.bin/gulp'
alias fgp='front/node_modules/.bin/gulp'
alias gb='node_modules/.bin/gulp build'
alias fgb='front/node_modules/.bin/gulp build'

# NPM shortcuts
function n {
    if [ -d `npm bin` ]; then
        PROG="$1"
        shift
        `npm bin`/$PROG "$@"
    else
        echo 'No node_modules in any dir of current path' 1>&2
        return 1
    fi
}

# Chruby env
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Default ruby 2.2.2
chruby 2.2.2
