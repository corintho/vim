call plug#begin()
Plug 'Chiel92/vim-autoformat'
Plug 'KabbAmine/vCoolor.vim'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/neocomplete.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jelera/vim-javascript-syntax'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-signify'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/syntastic'
Plug 'skammer/vim-css-color'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/TaskList.vim'
runtime plug_themes.vim
call plug#end()

" ES6 template fixes
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

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
