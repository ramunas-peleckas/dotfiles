" use vim settings instead of vi settings
set nocompatible

" filetype off is required for plugins to load properly
filetype off

" set up plugins
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'plasticboy/vim-markdown'
Plug 'isRuslan/vim-es6'

call plug#end()

filetype plugin indent on

" enable syntax highlighting
if !exists('g:syntax_on')
  syntax enable
endif

" set color scheme
let base16colorspace=256

if !exists('g:colors_name') || g:colors_name != 'base16-ocean' 
  colorscheme base16-ocean
endif

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

" set swap file directory
set directory^=$HOME/.vim/swap//

" display vertical line
set textwidth=120
set colorcolumn=+1

" custom key bindings
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-p> :Files<CR>
nmap <CR> o<Esc>

" NERD Tree
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>m :NERDTreeFind<cr>

let NERDSpaceDelims=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=40

" Airline
let g:airline_theme='base16_shell'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" Vim markdown
let g:vim_markdown_folding_disabled=1
