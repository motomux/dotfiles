#!/bin/bash

# Setup.sh for Mac OSX

# Install Homebrew
# Requires command lines tools for Xcode
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install with Homebrew
brew update
brew upgrade

brew tap homebrew/versions
brew tap homebrew/binary

brew install fzf
brew install tmux
brew install bash
brew install bash-completion
brew install lua
brew install vim --with-cscope --with-lua
brew install git
brew install tig
brew install wget
brew install tree
brew install ag
brew install graphviz

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +q +q
