#!/bin/zsh

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/homebrew/bin:$PATH

# Adding some cool terminal extensions
eval "$(jump shell)"

# Example aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias ecessh="ssh kalatras@eceubuntu.uwaterloo.ca -Y"

# Add other sources
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"