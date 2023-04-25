#!/usr/bin/env zsh

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

echo "Symlink the tmux config"
rm -rf ~/.tmux.conf
cp ./dotfiles/.tmux.conf ~/.tmux.conf


#############################
# END OF SCRIPT
#############################
exit 1
