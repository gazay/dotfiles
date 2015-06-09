#!/usr/bin/env bash

export PATH=$PATH:~/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.8.4/bin:/opt/happy/1.19.5/bin:/opt/alex/3.1.4/bin:.cabal-sandbox/bin

export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# Default editor: vim
set -o vi
export EDITOR=vim
export VISUAL=vim

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

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# Zippin
alias gz='tar -zcvf'

# Homebrew
alias brewu='brew update  && brew upgrade --all && brew cleanup && brew prune && brew doctor'

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

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

# Functions
#
# (f)ind by (n)ame
# usage: fn foo
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

# Chruby env
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Default ruby 2.2.2
chruby 2.2.2
