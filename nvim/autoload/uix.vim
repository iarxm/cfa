

function! uix#MyTabLine()
        let s = ''
        for i in range(tabpagenr('$'))
                " select the highlighting
                if i + 1 == tabpagenr()
                        let s .= '%#TabLineSel#'
                else
                        let s .= '%#TabLine#'
                endif
                " set the tab page number (for mouse clicks)
                let s .= '%' . (i + 1) . 'T'
                " the label is made by MyTabLabel()
                let s .= ' %{uix#MyTablabel(' . (i + 1) . ')} '
			 " TAB NAMES SEPARATOR
                let s .= ' '
        endfor
        " after the last tab fill with TabLineFill and reset tab page nr
        let s .= '%#TabLineFill#%T'
        " right-align the label to close the current tab page
        if tabpagenr('$') > 1
                let s .= '%=%#TabLine#%999X '
        endif
        "echomsg 's:' . s
        return s
endfunction

function! uix#MyTablabel(n)
        let buflist = tabpagebuflist(a:n)
        let winnr = tabpagewinnr(a:n)
        let numtabs = tabpagenr('$')
        " account for space padding between tabs, and the "close" button
        let maxlen = ( &columns - ( numtabs * 2 ) - 4 ) / numtabs
        let tablabel = bufname(buflist[winnr - 1])
        while strlen( tablabel ) < 4
                let tablabel = tablabel . " "
        endwhile
        let tablabel = fnamemodify( tablabel, ':t' )
        let tablabel = strpart( tablabel, 0,  maxlen )
        return tablabel
endfunction
"set guitablabel=%!GuiTabLabel()

function! uix#MyStatusLineX()
	set laststatus=0
	set statusline=
	set statusline +=%f
	set statusline +=\ b%n\ %*            	"buffer number
	set statusline +=\(w%{wordcount().cursor_words}\/\/  "current word number
	set statusline +=%{wordcount().words}\) 		"wordcount
	set statusline +=\ l%l%*             		"current line
	set statusline +=/%L%*               		"total lines
	set statusline +=%=\ 
	"'%#Normal# '
endfunction

function! uix#MyStatusLine()
     let s .= '%#TabLine#'
     return s
endfunction

function! uix#ToggleSlineTimerSwitch()
  if g:last_statusline_timer_switch == 1
    let g:last_statusline_timer_switch = 0
  else
    let g:last_statusline_timer_switch = 1
  endif
endfunction

function! uix#ToggleSlineX()
  if g:last_statusline_timer_switch == 1
    "silent let &statusline=' '
    let &laststatus=0
  endif
  call uix#ToggleSlineTimerSwitch()
endfunction

function! uix#ToggleSlineTrig()
  "if &laststatus == 0
    silent let &laststatus=3
    "let &statusline='%!uix#MyTabLine()'
    call uix#ToggleSlineTimerSwitch()
    call timer_start(5000, {-> uix#ToggleSlineX()})
  "endif
endfunction

function! uix#ToggleStatusline()
  if &laststatus == 3
    let &laststatus = 0
  else
    let &laststatus = 3
  endif
endfunction

let g:last_statusline_timer_switch = 0

command! ToggleStatusline :call uix#ToggleStatusline()

nnoremap <silent> H :ToggleStatusline<CR>

"function! uix#MyStatusLineCol()
"	hi 
" find a proper color file to put these in???
"endfunction

