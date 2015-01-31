" Ramunas

" extract plugins
execute pathogen#infect()
filetype plugin indent on

" enable syntax highlighting
syntax on 

" set color scheme
set background=dark
colorscheme jellybeans

" set 256 color mode
if !has('gui_running')
  set t_Co=256 
endif

" always display status line
set laststatus=2 

" show line numbers
set number

" Tabs
" 2 space tab
set tabstop=2
set softtabstop=2
" use spaces for tabs
set expandtab

" search as characters are entered
set incsearch

" Change leader key
let mapleader=","

" Custom key bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" NERD Tree 
noremap <Leader>n :NERDTreeToggle<cr>

