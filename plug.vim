call plug#begin()
Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jelera/vim-javascript-syntax'
Plug 'kshenoy/vim-signature'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'skammer/vim-css-color'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/TaskList.vim'
Plug 'wikitopian/hardmode'
runtime plug_themes.vim
call plug#end()

" ES6 template fixes
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

" Enable hardmode by default, which means it disables lots of navigation
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" Set attribute to sass and scss files to get proper highlight from css
" highlighter
augroup css_custom
    autocmd!
    autocmd BufEnter *.s{a,c}ss syntax cluster sassCssAttributes add=@cssColors
augroup END

" Enable more aggressive refresh for signify
let g:signify_update_on_focus_gaines = 1

" Enable neocomplete by default
let g:neocomplete#enable_at_startup = 1

" Configuration for snippets completion
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

 " For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" Ag searcher options
" By default use project root to search
let g:ag_working_path_mode="r"
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
