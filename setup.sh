#!/bin/bash

mkdir ~/.config
ln -s ~/dotfiles/nvim ~/.config/

git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

