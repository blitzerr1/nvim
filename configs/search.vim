set incsearch       " search as characters are entered
set hlsearch        " highlight matche
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is lower case
" case-sensitive otherwise
" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>
nnoremap ag :grep '\b<C-R><C-W>\b' <CR>:cw<CR>
nnoremap as :grep '\b<C-R><C-W>\b' src/*<CR>:cw<CR>
nnoremap at :grep '\b<C-R><C-W>\b' test/*<CR>:cw<CR>

" set Ag as the grep command
if executable('ag')
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --column\ --nocolor
  set grepformat=%f:%l:%c%m
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
