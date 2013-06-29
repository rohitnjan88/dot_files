set hidden
set hlsearch
set nu
set smartindent
set ts=2
set sw=2
set expandtab
colorscheme desert
execute pathogen#infect()
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
silent !stty -ixon > /dev/null 2>/dev/null
