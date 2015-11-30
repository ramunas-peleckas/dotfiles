" Ramunas

" use vim settings, rather than vi settings.
set nocompatible

filetype off

" set up plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'JazzCore/ctrlp-cmatcher'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'w0ng/vim-hybrid'
Plugin 'bling/vim-airline'
Plugin 'jgdavey/tslime.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kchmck/vim-coffee-script'
Plugin 'isRuslan/vim-es6'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'

call vundle#end()

filetype plugin indent on

" enable syntax highlighting
syntax enable

" set color scheme
set background=dark
colorscheme hybrid

" always display status line
set laststatus=2 

" show line numbers
set number

" 2 space tab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" use spaces for tabs
set expandtab

" display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" search as characters are entered
set incsearch

" disable swap file
set noswapfile

" display vertical line
set textwidth=120
set colorcolumn=+1

" custom key bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <CR> o<Esc>

command WQ wq
command Wq wq
command W w
command Q q

" NERD Tree 
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>m :NERDTreeFind<cr>

let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=40

" CtrlP
let g:ctrlp_dotfiles = 1
let g:ctrlp_max_files = 0
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
endif

" RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

