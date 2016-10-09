" use vim settings instead of vi settings
set nocompatible

filetype off

" set up plugins
call plug#begin()

Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim/' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'kchmck/vim-coffee-script'
Plug 'isRuslan/vim-es6'

Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

call plug#end()

filetype plugin indent on

" enable syntax highlighting
syntax enable

" set color scheme
set background=dark
colorscheme Tomorrow-Night

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

" Airline
let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

