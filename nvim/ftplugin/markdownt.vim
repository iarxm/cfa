" Setting for a custom markdown type file: for my todos
source $VIMDIR/syntax/markdown.vim
AnyFoldActivate
"setlocal foldignore+='<!---'
function! PadSeps()
	silent! :%s/\(.*::::.*\)/\=printf('%-40s', submatch(0))/
endfunction
function! PadTodo()
	silent! :%s/\v(,,[[:alnum:]]+(\.[[:alnum:]]+){0,2})\.\.(.*)/\=submatch(1) . repeat('.', 15 - len(submatch(1)) - 1) . matchstr(submatch(3), '^[.]*\zs.*')/
endfunction
function! PadAll()
	let l:save_cursor = getcurpos()
	call PadTodo()
	call PadSeps()
    	call setpos('.', l:save_cursor)
endfunction
au BufWritePre <buffer> call PadAll()

" ARCHIVE ? ##############################
"au BufWritePre <buffer> call PadSeps()
"au BufWritePre <buffer> call PadTodo()
"set foldmethod=indent
"silent! :%s/\v(,,[[:alnum:]]+(\.[[:alnum:]]+){0,2}\.\.)(.*)/\=submatch(1) . repeat('.', 13 - len(submatch(1))) . submatch(3)/
	"silent! :%s/\v(,,[[:alnum:]]+(\.[[:alnum:]]+){0,2}\.\.)(.*)/\=submatch(1) . repeat('.', 13 - len(submatch(1)) - 1) . submatch(2)/

