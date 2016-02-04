let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configuration for javascript
let g:syntastic_javascript_checkers = ["eslint"] 

" Sets executable for eslint to be relative to active current directory
autocmd BufEnter *.js,*.es,*.es6,*.jsx call <SID>SetLocalEslint()

function! s:SetLocalEslint()
	let tmpCmd = StrTrim(system('npm bin')) . '/eslint'
	if (has('win16') || has('win32'))
		let tmpCmd = tmpCmd . '.cmd'
	endif
	if executable(tmpCmd)
		let g:syntastic_javascript_eslint_exec = tmpCmd
	endif
endfunction

function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
