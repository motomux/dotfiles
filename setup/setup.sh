#!/bin/bash

dotfilesDir=${HOME}/dotfiles

cd ${HOME}

git clone https://github.com/motomux/dotfiles

bash ${dotfilesDir}/setup/link.sh ${dotfilesDir}

case "$(uname)" in
  'Darwin')
    bash ${dotfilesDir}/setup/osx/install.sh
    ;;
  *)
    echo "Unsuported OS"
    exit 1
    ;;
esac
