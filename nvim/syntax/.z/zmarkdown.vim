"syn match mdMailURL 	"\vhttps.*$"
"match mdMailURL 		"\vhttps.*\w"
"match mdMailURL 		"\vhttp.*\w"
"syn match mdMailUrl		"http[s]\?:\/\/[[:alnum:]%\/_#.-]*/"
"match mdMailUrl		"\vhttp[s]\?:\/\/[[:alnum:]%\/_#.-]*/"
"HtmlHiLink rdocInlineURL    htmlLink
"hi def link mailURL		String

code from file but with descriptions:
syn region math start='/\$\$/' end='/\$\$/'	" inline math. Look for $[not $][anything]$
syn match math_block '\$[^$].\{-}\$'		" Block math. for $$[anything]$$
syn match liquid '{%.*%}'				" Liquid single line. Look for {%[anything]%}
syn region highlight_block start='{% highlight .*%}' end='{%.*%}'	" Liquid multiline. Look for {%[anything]%}[anything]{%[anything]%}
syn region highlight_block start='```' end='```'	" Fenced code blocks, used in GitHub Flavored Markdown (GFM)


"syn match    customHeader1     "^# *"
"syn match    customHeader2     "^## *"
"syn match	   customHeader3     "^### *"
"syn match    customHeader4     "^#### *"
"syn match    customHeader5     "^##### *"

"syn match    customHeader1     "^# "
"syn match    customHeader2     "^## "
"syn match    customHeader3     "^### "
"syn match    customHeader4     "^#### "
"syn match    customHeader5     "^##### "


"highlight customHeader1 ctermfg=34
"highlight customHeader2 ctermfg=32
"highlight customHeader3 ctermfg=127
"highlight customHeader4 ctermfg=45
"highlight customHeader5 ctermfg=220


"hi Normal ctermfg=green

"syn region h1 start="^\v# " skip="^\v# " end="/\v *$"
"syn region mdString start=/\v"/ skip=/\v\\./ end=/\v"/


autocmd FileType markdown.pandoc highlight Comment   	ctermfg=yellow
autocmd FileType markdown.pandoc highlight htmlComment   ctermfg=yellow

hi htmlH1 ctermbg=red ctermfg=black
hi htmlH1 ctermbg=red ctermfg=black
hi htmlH2 ctermbg=yellow ctermfg=black
hi htmlH2 ctermbg=yellow ctermfg=black
hi htmlH3 ctermfg=yellow
hi htmlH4 ctermfg=blue

syn match sep1     "*%%%%%%%%*"
syn match sep1		"\v\%.*$"
syn match sep1		"^%%%.*$"
syn match sep1		"^%.*$"
syn match h1		"\v# .*$"
syn region mdString start=/\v"/ skip=/\v\\./ end=/\v"/
hi link sep1 		Comment
hi link h1   		htmlH1
hi link mdString 	String

"autocmd FileType markdown.pandoc hi h1 ctermfg=yellow

autocmd FileType markdown.pandoc hi htmlH1 ctermbg=red ctermfg=black
autocmd FileType markdown.pandoc hi htmlH1 ctermbg=red ctermfg=black
autocmd FileType markdown.pandoc hi htmlH2 ctermbg=yellow ctermfg=black
autocmd FileType markdown.pandoc hi htmlH2 ctermbg=yellow ctermfg=black
autocmd FileType markdown.pandoc hi htmlH3 ctermfg=yellow
autocmd FileType markdown.pandoc hi htmlH4 ctermfg=blue


" ===================================================
" ===================================================
" urls
"syn match mailURL "\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^' 	<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' 	<>"]+)[a-z0-9/]"
"syn match mailURL "\V<(((https?|ftp|gopher)://"
"syn match mailURL /https/
"match mailURL /https/
"is .*$ even needed when highliting seems to end at end of line anyways??
"'syn match' appears to exlude patterns past 'tab', but 'match' without syn
"seems to avoid this

"" from ggzmd.vim
au FileType markdown.pandoc hi Comment   		ctermfg=yellow
au FileType markdown.pandoc hi htmlComment   	ctermfg=yellow
au FileType markdown.pandoc hi htmlH1 cterm=underline ctermfg=red
au FileType markdown.pandoc hi htmlH2 cterm=underline ctermfg=yellow
au FileType markdown.pandoc hi htmlH3 cterm=underline ctermfg=yellow
au FileType markdown.pandoc hi htmlH4 cterm=underline ctermfg=blue
au FileType markdown.pandoc syn match sep1     "*%%%%%%%%*"
au FileType markdown.pandoc syn match sep1		"\v\%.*$"
au FileType markdown.pandoc syn match sep1		"^%%%.*$"
au FileType markdown.pandoc syn match h1		"^\v# .*"
au FileType markdown.pandoc syn match h1		"^\v# .*$"
au FileType markdown.pandoc syn match h2		"^\v## .*$"
au FileType markdown.pandoc syn match h3		"^\v### .*"
au FileType markdown.pandoc syn match h4		"^\v#### .*"
au FileType markdown.pandoc syn match h1a		"^\v#"
au FileType markdown.pandoc syn match h2a		"^\v##"
au FileType markdown.pandoc syn match h3a		"^\v###"
au FileType markdown.pandoc syn match h4a		"^\v####"
au FileType markdown.pandoc syn region mdString start=/\v"/ skip=/\v\\./ end=/\v"/
"au FileType markdown.pandoc syn region h1 start="^\v# " skip="^\v# " end="/\v $"
au FileType markdown.pandoc hi link sep1 		Comment
au FileType markdown.pandoc hi link h1   		htmlH1
au FileType markdown.pandoc hi link h2   		htmlH2
au FileType markdown.pandoc hi link h3   		htmlH3
au FileType markdown.pandoc hi link h4   		htmlH4
au FileType markdown.pandoc hi h1a ctermbg=red ctermfg=black
au FileType markdown.pandoc hi h2a ctermbg=yellow ctermfg=black
au FileType markdown.pandoc hi h3a ctermfg=yellow
au FileType markdown.pandoc hi h4a ctermfg=blue
au FileType markdown.pandoc hi link mdString 	String

"tabdo source $XDG_CONFIG_HOME/vim/after/syntax/markdown.pandoc.vim
"au FileType markdown.pandoc hi htmlH1 ctermbg=red ctermfg=black
"au FileType markdown.pandoc hi htmlH2 ctermbg=yellow ctermfg=black
"au FileType markdown.pandoc hi htmlH3 ctermfg=yellow
"au FileType markdown.pandoc hi htmlH4 ctermfg=blue

