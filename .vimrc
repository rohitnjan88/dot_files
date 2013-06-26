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
" If the current buffer has never been saved, it will have no name,
" " call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                          \|    if empty(bufname('%'))
                          \|        browse confirm write
                          \|    else
                          \|        confirm write
                          \|    endif
                          \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

