set hidden
set hlsearch
set nu
set smartindent
set ts=2
set sw=2
set expandtab
set nocompatible
set noswapfile
colorscheme desert
call pathogen#helptags()
call pathogen#infect()
syntax on
filetype plugin indent on
command -nargs=0 -bar Update if &modified 
                          \|    if empty(bufname('%'))
                          \|        browse confirm write
                          \|    else
                          \|        confirm write
                          \|    endif
                          \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <F3> :Gblame<CR>
silent !stty -ixon > /dev/null 2>/dev/null
let g:NERDTreeWinPos = "right"
