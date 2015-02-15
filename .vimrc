" Ramunas

" Use vim settings, rather than vi settings.
set nocompatible

" extract plugins
execute pathogen#infect()

filetype plugin indent on

" enable syntax highlighting
syntax enable

" set color scheme
set background=dark
colorscheme jellybeans

" always display status line
set laststatus=2 

" show line numbers
set number

" Tabs
" 2 space tab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" use spaces for tabs
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" search as characters are entered
set incsearch

set textwidth=120
set colorcolumn=+1

" Change leader key
let mapleader=","

" Custom key bindings
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

let NERDSpaceDelims=1

" CtrlP
if executable('ag')
  let g:ctrlp_max_files = 0
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
nnoremap <Leader>. :CtrlPTag<cr>

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" RSpec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:syntastic_ruby_checkers = ['rubocop']
