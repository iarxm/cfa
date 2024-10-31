
runtime syntax/markdown.vim
"set conceallevel=2
"set foldlevel=0
"AnyFoldActivate

" dynamic seperator color lengths
function! CustomFormat(line)
  let lineLength = len(a:line)
  let width = winwidth(0)
  let newLength = width - 5
  if lineLength > 40 && lineLength > newLength
    return strpart(a:line, 0, newLength)
  elseif lineLength < newLength
    return printf('%-' . newLength . 's', a:line)
  elseif newLength < 40
    return printf('%-40s', a:line)
  else
    return a:line
  endif
endfunction

function! PadSeps()
    "silent! :%s/\(.*::::.*\)/\=printf('%-40s', submatch(0))/
    execute 'silent! %s/\(.*::::.*\)/\=CustomFormat(submatch(0))/'
endfunction

function! PadTodo() "todo: apply similar to below
    silent! :%s/\v(,,[[:alnum:]]+(\.[[:alnum:]]+){0,2})\.\.(.*)/\=submatch(1) . repeat('.', 15 - len(submatch(1)) - 1) . matchstr(submatch(3), '^[.]*\zs.*')/
endfunction

function! PadAll()
    let l:save_cursor = getcurpos()
    call PadTodo()
    call PadSeps()
    call setpos('.', l:save_cursor)
endfunction

function! PadSepsOnly()
    let l:save_cursor = getcurpos()
    call PadSeps()
    call setpos('.', l:save_cursor)
endfunction

au BufWritePre <buffer> call PadAll()
"au WinResized * call PadSepsOnly()

