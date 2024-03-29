#!/usr/bin/env bash

#############################
# Get OS
#############################
OS="NONE"
INSTALL_STRING="NONE"
if [ "$(uname)" == "Darwin" ]; then
    OS="MAC"
    INSTALL_STRING="brew install"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    OS="LINUX"
    INSTALL_STRING="sudo apt-get install"
fi

# Do not support anything else
if [ $OS == "NONE" ]; then
    exit 1
fi

#############################
# zsh Installation
#############################

# Duh
eval "$INSTALL_STRING zsh"

# Install zprezto
zsh -c 'rm -rf ${ZDOTDIR:-$HOME}/.zprezto && git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"'

# Simple folder navigation
eval "$INSTALL_STRING autojump"

# Fuzzy reverse search
eval "$INSTALL_STRING fzf"

# Starship for terminal
curl -sS https://starship.rs/install.sh | sh

# Copy keybindings to home directory
rm ~/.fzf-key-bindings.zsh
cp ./config/fzf-key-bindings.zsh ~/.fzf-key-bindings.zsh

# Copy auto complete config to home directory
rm ~/.fzf-completion.zsh
cp ./config/fzf-completion.zsh ~/.fzf-completion.zsh

# Copy zshrc to home directory so it gets run on boot
rm ~/.zshrc
cp ./dotfiles/.zshrc ~/

# Copy zpreztorc to home directory so it gets run on boot
rm ~/.zpreztorc
cp ./dotfiles/.zpreztorc ~/

# Change shell to zsh
ZSH_PATH=$(which zsh)
eval "chsh -s $ZSH_PATH"

#############################
# VIM Installation
#############################

eval "$INSTALL_STRING vim"

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy vimrc so you always have most up to date"
rm -rf ~/.vimrc
cp ./dotfiles/.vimrc ~/.vimrc

# Install ripgrep so you can search through repos
eval "$INSTALL_STRING ripgrep"

# Install nodejs so you can have command line completion
eval "$INSTALL_STRING node"

# Install bat/batcat so you can have nice syntax highlighting in previews
eval "$INSTALL_STRING bat"

echo "Copy the colors file to your .vim folder"
mkdir ~/.vim/colors
cp ./colors/molokai.vim ~/.vim/colors/

# Install vim plugins
vim +'PlugInstall --sync' +qa

#############################
# TMUX Installation
#############################

eval "$INSTALL_STRING tmux"

echo "Copy the tmux config"
rm -rf ~/.tmux.conf
cp ./dotfiles/.tmux.conf ~/.tmux.conf


#############################
# END OF SCRIPT
#############################
exit 1
