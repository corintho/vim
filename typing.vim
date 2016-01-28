" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" Use both Unix and DOS file formats, but favor the Unix one for new files.
set fileformats=unix,dos

" Stick with the UTF-8 encoding.
if has('multi_byte')
  " Encoding used for the terminal.
  if empty(&termencoding)
    let &termencoding = &encoding
  endif

  " Encoding used in buffers, registers, strings in expressions, "viminfo"
  " file, etc.
  set encoding=utf-8

  " Encoding used for writing files.
  setglobal fileencoding=utf-8
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")
