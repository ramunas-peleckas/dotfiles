install: install-vim install-git install-tmux

install-vim:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -s `pwd`/vim/.vimrc ~/.vimrc

install-git:
	ln -s `pwd`/git/.gitconfig ~/.gitconfig
	ln -s `pwd`/git/.gitignore ~/.gitignore

install-tmux:
	ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/tmux/.tmuxline ~/.tmuxline
