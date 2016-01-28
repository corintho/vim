" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
set ruler		" show the cursor position all the time
set incsearch		" do incremental searching
set rnu			" relative line numbers

" Never ever let Vim write a backup file! They did that in the 70's.
" Use modern ways for tracking your changes (like git), for God's sake
set nobackup
set noswapfile
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif

set guifont=Hack:h8

set laststatus=2
set statusline=%f

" Import other settings
runtime typing.vim
runtime plug.vim
runtime syntastic.vim

runtime colors.vim
