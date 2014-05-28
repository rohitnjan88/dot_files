set hidden
set hlsearch
set nu
set smartindent
set ts=2
set sw=2
set expandtab
set nocompatible
set noswapfile
call pathogen#helptags()
call pathogen#infect()
syntax on
filetype on
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
nmap <C-S-F> :Ack<space>-a<space>
nmap <C-S-T> :tabnew<CR>
nmap <C-S-B> :Gblame<CR>
nmap <C-S-M> :VCSAnnotate!<CR>
vnoremap <C-S-F> :Ack<space>-a<space>@*<space>
let g:NERDTreeWinPos = "right"
set clipboard=unnamedplus
filetype plugin on
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
 \ 'html': 1, 
 \ 'eruby':1
 \ }
