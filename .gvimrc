set wildignore+=**/vendor/**
set lines=999 
set columns=999 
map <F2> :NERDTreeToggle<CR>
colorscheme github
nnoremap <silent> <C-s> :<C-u>Update<CR>
nnoremap <silent> <C-q> :q<CR>
map <silent> <LocalLeader>bd :bufdo :bd<CR>
