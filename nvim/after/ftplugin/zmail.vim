"##########################
"## soft wrapping - file unchanged
"set wrap
"set linebreak

"## hard wrapping - file changed - line modification
"set textwidth=0
"setlocal textwidth=0
" inserts <EOL> into file at character number to start a newline

" ###################################
"augroup mail_textwidth_no
"    	au!
"	au BufEnter * setlocal formatoptions-=t
"	au BufEnter * setlocal spell spelllang=en
"	au BufEnter * echo "Hello World"
"augroup END 

"setlocal formatoptions=rco
"setlocal textwidth=0
"setlocal formatoptions-=t

