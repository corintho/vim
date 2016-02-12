let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configuration for javascript
let g:syntastic_javascript_checkers = ["eslint"] 

" For now, we have to use F6 to update eslint configuration manually when
" switching projects
" noremap <silent> <F6> :call <SID>SetLocalEslint()<CR>

" Sets executable for eslint to be relative to active current directory
" Disabled for now, since this makes editing JS a lot slower
autocmd BufEnter *.js,*.es,*.es6,*.jsx call <SID>SetLocalEslint()

function! s:SetLocalEslint()
    let tmpCmd = finddir('node_modules', '.;') . '/.bin/eslint'
    if (has('win16') || has('win32'))
        let tmpCmd = tmpCmd . '.cmd'
    endif
    if executable(tmpCmd)
        echo 'eslint: ' . tmpCmd
        let g:syntastic_javascript_eslint_exec = tmpCmd
    else
        unlet g:syntastic_javascript_eslint_exec
    endif
endfunction

