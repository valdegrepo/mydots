
"    ███╗   ██╗██╗   ██╗██╗███╗   ███╗
"    ████╗  ██║██║   ██║██║████╗ ████║
"    ██╔██╗ ██║██║   ██║██║██╔████╔██║
"    ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"    ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

set langmenu=en_US.UTF-8
language en_US.UTF-8
let mapleader=" "

" Faster split sizing
map <leader>- <C-W><
map <leader>= <C-W>>

" Moving between splits
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

tnoremap <Esc> <C-\><C-n>

set encoding=UTF-8
set number
set relativenumber
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
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Yggdroot/indentLine'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'digitaltoad/vim-pug'
call plug#end()

colorscheme dracula

autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_browse_split = 2

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.maxlinenr = ' ln'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

let g:indentLine_setColors = 0
let g:indentLine_char_list = ['·', ':']

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
