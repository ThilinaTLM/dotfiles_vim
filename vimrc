
" ____  _             _           
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/             

call plug#begin('~/.vim/plugged')
    " surround words with quotes
    Plug 'tpope/vim-surround'
    
    " bottom status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Material Colorschema
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }

    " auto completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Nerd font
    Plug 'lambdalisue/nerdfont.vim' " font for fern
    
    " fuzzy file finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Git intergration for vim 
    Plug 'jreybert/vimagit'
    
    " Fugitive is the premier Vim plugin for Git  [https://github.com/tpope/vim-fugitive]
    Plug 'tpope/vim-fugitive'
    
    " Floating Terminal
    Plug 'voldikss/vim-floaterm' 
    
    " HTML Colors
    Plug 'ap/vim-css-color'
    
    " Show live subsitution result
    Plug 'markonm/traces.vim'

call plug#end()


"  _____                 _   _                 
" |  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
" | |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
" |  _|| |_| | | | | (__| |_| | (_) | | | \__ \
" |_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
"                                              

" Coc goto the definition
function! s:GoToDefinition()
	if CocAction('jumpDefinition')
	  return v:true
	endif

	let ret = execute("silent! normal \<C-]>")
	if ret =~ "Error" || ret =~ "错误"
	  call searchdecl(expand('<cword>'))
	endif
endfunction


"   ____             __ _       
"  / ___|___  _ __  / _(_) __ _ 
" | |   / _ \| '_ \| |_| |/ _` |
" | |__| (_) | | | |  _| | (_| |
"  \____\___/|_| |_|_| |_|\__, |
"                         |___/ 

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
set number

" code folding options
set foldmethod=syntax " syntax, indent
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
set hidden

" ColorScheme
let g:material_theme_style = 'default-community'
colorscheme material

let g:molokai_original = 1
let g:rehash256 = 1

let g:airline_theme='material'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1



"  _____      _                ____             __ _       
" | ____|_  _| |_ _ __ __ _   / ___|___  _ __  / _(_) __ _ 
" |  _| \ \/ / __| '__/ _` | | |   / _ \| '_ \| |_| |/ _` |
" | |___ >  <| |_| | | (_| | | |__| (_) | | | |  _| | (_| |
" |_____/_/\_\\__|_|  \__,_|  \____\___/|_| |_|_| |_|\__, |
"                                                    |___/ 

" Netrw File Manager
let g:netrw_banner = 0
let g:netrw_linestyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20


"  _  __            __  __                 
" | |/ /___ _   _  |  \/  | __ _ _ __  ___ 
" | ' // _ \ | | | | |\/| |/ _` | '_ \/ __|
" | . \  __/ |_| | | |  | | (_| | |_) \__ \
" |_|\_\___|\__, | |_|  |_|\__,_| .__/|___/
"           |___/               |_|        

" Leader key
let mapleader = '"'
inoremap jj <ESC>

" Clipboard
vnoremap <C-c> "+y
"map      <C-P> "+p

" Move between buffers
map <silent> <C-x> :bn<CR>
map <silent> <C-z> :bp<CR>

" Window navigations
nnoremap <silent> <C-e> <C-w>w
nnoremap <silent> <C-q> <C-w>q 
nnoremap <silent> <C-Up> :vertical resize +3<CR>
nnoremap <silent> <C-Down> :vertical resize -3<CR>
nnoremap <silent> cvs :vs<CR>

" Tab navigations
map <C-'> :TabNext<CR>

" Autocompletion with TAB KEY 
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Open fzf
nnoremap <silent> ss :GFiles<CR>

" Floating terminal
map <silent> <C-t>t :FloatermNew<CR>
map <silent> <C-t>w :FloatermKill<CR>

" Others
"map <C-n> :NumbersToggle<CR>

" Coc Explorer Tree
nmap <space>e :CocCommand explorer<CR>
"nmap <silent> gd :call <SID>GoToDefinition()<CR>

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

