
function! NeotreeBuf()
    " open neotree in current buffer
    " Check if NeoTree is open
    if !neotree#is_open()
        " Open NeoTree
        NeotreeOpen
    else
        " Close NeoTree
        NeotreeClose
    endif

    " Swap window with NeoTree
    wincmd x

    " Close the other window
    wincmd o
endfunction

command! Neotreebuf call NeotreeBuf()

" nnoremap <Leader>n :call OpenNeoTreeInCurrentBuffer()<CR>

function! utilx#FormatListpat()
	" FORMATLIST #######################################
	set formatlistpat=^>\\s*                     " Optional leading whitespace
	set formatlistpat+=[                        " Start character class
	set formatlistpat+=\\[({]\\?                " |  Optionally match opening punctuation
	set formatlistpat+=\\(                      " |  Start group
	set formatlistpat+=[0-9]\\+                 " |  |  Numbers
	set formatlistpat+=\\\|                     " |  |  or
	set formatlistpat+=[a-zA-Z]\\+              " |  |  Letters
	set formatlistpat+=\\)                      " |  End group
	set formatlistpat+=[\\]:.)}                 " |  Closing punctuation
	set formatlistpat+=]                        " End character class
	set formatlistpat+=\\s\\+                   " One or more spaces
	set formatlistpat+=\\\|                     " or
	set formatlistpat+=^>\\s*[-–+o*•]\\s\\+      " Bullet points	

"let &formatlistpat="^>\s*\d\+[\]:.)}\t ]\s*\|^\s*[-*]\s+"
endfunction

function! utilx#HandleUrlCurWin()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!qutebrowser '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction

function! utilx#HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
  echo s:uri
  if s:uri != ""
    silent exec "!qtc.win '".s:uri."'"
  else
    echo "No URI found in line."
  endif
endfunction


" Show syntax highlighting groups 
" 	- for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

function! utilx#MinimalFoldText() abort
    let fs = v:foldstart
    while getline(fs) !~ '\w'
        let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - &number * &numberwidth
    let foldSize = 1 + v:foldend - v:foldstart
    "let foldSizeStr = " " . substitute(g:anyfold_fold_size_str, "%s", string(foldSize), "g") . " "
    let foldLevelStr = repeat(g:anyfold_fold_level_str, v:foldlevel)
    let lineCount = line("$")
    let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr))
    return line . expansionString . foldSizeStr . foldLevelStr
endfunction


