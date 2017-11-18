#!/bin/bash

if [[ $# != 1 ]]; then
  echo "usage: link.sh dotfilesDir"
  exit 1
fi

dotfilesDir=${1}

ln -s ${dotfilesDir}/vim/.vimrc ~/.vimrc
ln -s ${dotfilesDir}/bash/.bashrc ~/.bashrc
ln -s ${dotfilesDir}/bash/.bash_profile ~/.bash_profile
ln -s ${dotfilesDir}/tmux/.tmux.conf ~/.tmux.conf
ln -s ${dotfilesDir}/git/.gitconfig ~/.gitconfig
ln -s ${dotfilesDir}/git/.gitignore ~/.gitignore
ln -s ${dotfilesDir}/tig/.tigrc ~/.tigrc
