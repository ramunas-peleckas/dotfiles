" filetype off is required for plugins to load properly
filetype off

" set up plugins
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'chriskempson/base16-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'jgdavey/tslime.vim'

" language specific
Plug 'plasticboy/vim-markdown'

call plug#end()

" enable filetype specific settings
filetype plugin indent on

" set color scheme
let base16colorspace=256
colorscheme base16-ocean

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

" reduce key code delay
set ttimeoutlen=10

" fzf
map <C-p> :Files<CR>
nnoremap <silent> <Leader>g :Rg! <C-R><C-W><CR>
vnoremap <silent> <Leader>g y:Rg! <C-R>"<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --fixed-strings --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

" netrw
let g:netrw_banner=0

" Tmuxline
let g:tmuxline_powerline_separators=0

" Vim markdown
let g:vim_markdown_folding_disabled=1
