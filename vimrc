" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching
set nu rnu		" relative and absolute line numbers

" Never ever let Vim write a backup file! They did that in the 70's.
" Use modern ways for tracking your changes (like git), for God's sake
set nobackup
set noswapfile
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands

" Set completion mode to be more helpful
set wildmode=longest,list,full
set wildmenu

let mapleader = ","

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

set guifont=Hack:h8

"  for this to work properly, you need the patched Hack font, with symbols
"  for powerline, available at: https://github.com/powerline/fonts/tree/master/Hack
let g:airline_powerline_fonts = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

set laststatus=2 

" Import other settings
runtime typing.vim
runtime plug.vim
runtime syntastic.vim
runtime buffers.vim

runtime colors.vim
runtime shortcuts.vim

