"---------==== Plugings ====-----------
call plug#begin('~/.vim/plugged')
    
    " surround words with quotes
    Plug 'tpope/vim-surround'

    Plug 'jiangmiao/auto-pairs'
    
    " bottom status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " auto completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " side panel file manager
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/nerdfont.vim' " font for fern
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    
    " number line
    Plug 'myusuf3/numbers.vim'
    
    " fuzzy file finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    
    " start screen
    Plug 'mhinz/vim-startify'
    Plug 'Shougo/deol.nvim'

    Plug 'jreybert/vimagit'
    Plug 'tpope/vim-fugitive'
call plug#end()

"---------==== Mappings ====-----------
inoremap jk <ESC>
let mapleader = "'"

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"-----------==== Config ====-----------

" indentations options
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" search options
set hlsearch
set ignorecase
set incsearch
set smartcase

" performance options
"set complete-=10
"set lazyredraw

" text rendering options
"set display+=lastline
syntax enable
set encoding=utf-8
set linebreak
set scrolloff=3
set sidescrolloff=5
set wrap

" interface options
"set laststatus=2
"set cursorline
set ruler
"set number
colorscheme darcula 

" code folding options
set foldmethod=indent
"set foldnestmax=5
set nofoldenable
set splitbelow splitright

" miscellaneous options
set autoread
set backspace=indent,eol,start
"set backupdir=~/.cache/vim
set confirm
set dir=~/.cache/vim
set formatoptions+=j
set noswapfile
set nrformats+=alpha
set shell
"set spell
set path=.,,**

"---------==== extra configurations ====-----------
let g:molokai_original = 1
let g:rehash256 = 1

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:fern#renderer = "nerdfont"
let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree', 'fern']




