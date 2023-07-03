au BufRead,BufNewFile,BufNew * if &ft == "" | 
	\ setfiletype markdown | endif " will this set the default ft as markdown?

"	if expand('%:p:h') =~ "^/data/u/d.*"

function! md#testmd()
	"if 1
	"		call md#testpath()
	"endif
endfunc

" obselete
function! md#testft()
  if &ft == "markdown"
"	source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
  endif
endfunc

	

"au BufEnter /data/u/d.* setfiletype markdown
" =====================================================
" any of this needed?
"au ColorScheme * call md#testft()
"au BufNewFile,BufRead * call md#testft()
"au Syntax markdown source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
	"don't know if this is needed
"au BufNewFile,BufRead * au FileType markdown source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
"
"au VimEnter * source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
"call md#testpath()

"au BufNewFile,BufRead * autocmd FileType markdown source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
"source $XDG_CONFIG_HOME/vim/syntax/markdown.pandoc.vim

" reapplys custom highlighting after colorscheme change/reset
"autocmd ColorScheme * autocmd Syntax markdown source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
"#################################################3
"au BufEnter,BufNew,BufRead * call Mdtest()
"au BufRead,BufNew,BufEnter * if &ft == "" | setfiletype markdown | endif  " will this set the default ft as markdown?
"au BufRead * if &ft == "" | setfiletype markdown | endif  " will this set the default ft as markdown?
"au BufRead,BufNew,BufEnter *.md | setfiletype markdown
"au BufRead,BufNew,BufEnter *.a | setfiletype markdown
"au BufEnter,BufNew,BufRead * call mdtest#Mdtest()
"#################################################3


"	if &ft == ""
"		set filetype=markdown

"elseif &ft == "conf"
	"			\ || &ft == "expect"
	"	echom "test for: &ft != XX "
		" This is the exit case. Add case for ".a". Can i remove the tagbar test? Do i need to add any special cases, eg .o files? This test is false if the ft is null or of a particular type

function! Mdtest()
	if &ft == "markdown" 
				\ || &ft == "Tagbar"
				\ || &ft == "tex"
				\ || &ft == "make"
				\ || &ft == "vim"
				\ || &ft == "markdownt"
		" TODO: simplify below
	elseif expand('%:p') =~ "^/data/u/d.*"
				\ && expand('%:p') !~ "^/data/u/dp.*"
				\ && expand('%:p') !~ "^/data/u/dp/\..*"
				\ && expand('%:p') !~ "^/data/u/da.*"
				\ && expand('%:p') !~ "^/data/u/da/\..*"
		set filetype=markdown
		"echom "test2"
	elseif expand('%:p:h') =~ "^/data/u/d/.*"
		set filetype=markdown
		"echom "test2"
	elseif getcwd() =~ "^/data/u/d/.*$" 
			\ && expand('%:p:h') !~ "^/data/.h/iao/.config.*$" 
			\ && expand('%:p:h') !~ "^/data/.h/iao/.local/bin.*"

			"\ && &ft !~ "Tagbar"
			""the below line sets correct markdown syntax when opening notes files from
			"within 'nnn' but currently incorrectly sets markdown to .local/bin files
		set filetype=markdown
	endif
endfunc

