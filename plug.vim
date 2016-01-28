call plug#begin()
Plug 'KabbAmine/vCoolor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/syntastic'
Plug 'skammer/vim-css-color'
Plug 'ternjs/tern_for_vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/TaskList.vim'
runtime plug_themes.vim
call plug#end()

" ES6 template fixes
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

