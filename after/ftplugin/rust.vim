
call plug#begin('~/.vim/plugged')
    Plug 'rust-lang/rust.vim'
    Plug 'dense-analysis/ale'
call plug#end()


" Run rust file in float term
" map <silent> <C-t>r :FloatermNew --disposable node "%:p"<CR> 
map <silent> <C-t>r :FloatermNew --disposable cargo run<CR> 

