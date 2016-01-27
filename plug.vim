call plug#begin()
Plug 'ternjs/tern_for_vim'
Plug 'jelera/vim-javascript-syntax'
call plug#end()

" ES6 template fixes
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

