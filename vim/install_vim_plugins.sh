#!/bin/bash

# Set up vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# Install plugins
vim +PluginInstall +qall

