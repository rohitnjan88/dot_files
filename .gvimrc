set wildignore+=**/vendor/**
set lines=999 
set columns=999 
map <F2> :NERDTreeToggle<CR>
colorscheme wombat
nnoremap <silent> <C-s> :<C-u>Update<CR>
nnoremap <silent> <C-q> :q<CR>
map <silent> <LocalLeader>bd :bufdo :bd<CR>
autocmd BufEnter *.js colorscheme desert
autocmd BufEnter *.html.erb colorscheme desert
autocmd BufEnter *.html colorscheme desert
autocmd BufEnter *.rb colorscheme codeschool
autocmd FileType svnannotate cmap <buffer> q bwipeout
