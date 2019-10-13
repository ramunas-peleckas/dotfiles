install: install-vim install-git install-tmux install-bash install-readline

install-vim:
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	ln -s `pwd`/vim/.vimrc ~/.vimrc
	mkdir ~/.vim/.backup
	mkdir ~/.vim/.swap

install-git:
	ln -s `pwd`/git/.gitconfig ~/.gitconfig
	ln -s `pwd`/git/.gitignore ~/.gitignore

install-tmux:
	ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
	ln -s `pwd`/tmux/.tmuxline ~/.tmuxline

install-bash:
	ln -s `pwd`/bash/.bashrc ~/.bashrc

install-readline:
	ln -s `pwd`/readline/.inputrc ~/.inputrc
