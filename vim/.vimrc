" use vim settings instead of vi settings
set nocompatible

" set up plugins
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'

Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'plasticboy/vim-markdown'
Plug 'isRuslan/vim-es6'

call plug#end()

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

" set swap and backup file directories
set directory=~/.vim/.swap//
set backupdir=~/.vim/.backup//

" display vertical line
set textwidth=120
set colorcolumn=+1

" custom key bindings
map <C-p> :Files<CR>

" netrw
let g:netrw_banner=0

" Airline
let g:airline_theme='base16_shell'
let g:airline#extensions#tabline#enabled=1

" Disable powerline symbols
let g:tmuxline_powerline_separators=0

" Vim markdown
let g:vim_markdown_folding_disabled=1
