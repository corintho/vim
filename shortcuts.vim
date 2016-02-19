" Cleaning up formatting of line endings
nnoremap <Leader>le :e ++ff=dos<CR>:setl ff=unix<CR>
" Netrw shortcuts to help navigating
noremap <Leader>e :Explore<CR>

" Show TODOS for all files in current dir
noremap <Leader>T :noautocmd vimgrep /TODO\\|FIXME\\|XXX/j **/*<CR>:cw<CR>

" Normal shortcuts
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Makes current word uppercase
nnoremap <leader>u viwgU

" Editing shortcuts
" Makes current word uppercase
inoremap <c-u> <esc>viwgUa
" Quickly leave insert mode
inoremap jk <esc>

"Window shortcuts
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

" Kills some default mappings
inoremap <esc> <nop>
nnoremap <Up> <nop>
vnoremap <Up> <nop>
nnoremap <Down> <nop>
vnoremap <Down> <nop>
nnoremap <Left> <nop>
vnoremap <Left> <nop>
nnoremap <Right> <nop>
vnoremap <Right> <nop>
