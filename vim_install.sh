#!/bin/bash

DIR=$( cd "$( dirname "$0" )" && pwd )

# backup exiting files
mv ~/.vim ~/.vim.old
mv ~/.vimrc ~/.vimrc.old
ln -s "$DIR/.vimrc" ~/.vimrc

# pathogen for managing vim plugins
git clone https://github.com/tpope/vim-pathogen.git ~/.vim
mkdir ~/.vim/bundle
cd ~/.vim/bundle

# ctrlp plugin with cmatcher (requires python-dev)
git clone https://github.com/kien/ctrlp.vim.git
git clone https://github.com/JazzCore/ctrlp-cmatcher.git
(cd ./ctrlp-cmatcher; ./install.sh)

git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.git

git clone https://github.com/w0ng/vim-hybrid.git

git clone https://github.com/bling/vim-airline.git
git clone https://github.com/edkolev/tmuxline.vim

git clone https://github.com/ervandew/supertab.git
git clone https://github.com/scrooloose/syntastic.git 
git clone https://github.com/kchmck/vim-coffee-script.git

git clone https://github.com/tpope/vim-rails.git
git clone https://github.com/thoughtbot/vim-rspec.git 
git clone https://github.com/jgdavey/tslime.vim.git

