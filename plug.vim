call plug#begin()
Plug 'ternjs/tern_for_vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'mhinz/vim-signify'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'KabbAmine/vCoolor.vim'
Plug 'skammer/vim-css-color'
runtime plug_themes.vim
call plug#end()

" ES6 template fixes
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

