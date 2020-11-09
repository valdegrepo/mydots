set langmenu=en_US.UTF-8
language en_US.UTF-8
let mapleader=" "

" Faster split sizing
map <leader>- <C-W><
map <leader>= <C-W>>

" Moving between splits
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

set encoding=UTF-8
set number
set cursorline
set cursorcolumn
set splitbelow
set splitright
set hlsearch
set incsearch

autocmd FileType * setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType c setlocal shiftwidth=2 tabstop=2

syntax on
filetype plugin indent on

call plug#begin('~/.config/nvim/plug')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Yggdroot/indentLine'
call plug#end()

colorscheme dracula

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:indentLine_setColors = 0
let g:indentLine_char_list = ['·', '·']
