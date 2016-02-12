" Netrw shortcuts to help navigating
noremap <Leader>e :Explore<CR>

" Show TODOS for all files in current dir
noremap <Leader>T :noautocmd vimgrep /TODO\\|FIXME\\|XXX/j **/*<CR>:cw<CR>

" Normal shortcuts
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Makes current word uppercase
nnoremap <c-u> viwgU

" Editing shortcuts
" Makes current word uppercase
inoremap <c-u> <esc>viwgUa
" Quickly leave insert mode
inoremap jk <esc>

" Kills some default mappings
inoremap <esc> <nop>
noremap! <Up> <nop>
noremap! <Down> <nop>
noremap! <Left> <nop>
noremap! <Right> <nop>
