" ===================================================
" ==== front matter =================================
" MOVE TODO ELEMENTS TO: markdownt???
" NOTES: NOT WORKING; or maybe it does and the current highlighting is the configured
"unlet b:current_syntax
syn include @Yaml /usr/share/nvim/runtime/syntax/yaml.vim
syn include @Toml syntax/toml.vim
syn region tomlFrontmatter start=/\%^+++$/ end=/^+++$/ keepend contains=@Toml
syn include @Yaml syntax/yaml.vim
syn region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml
syn include @yamlTop syntax/yaml.vim
syn match YAMLFrontMatter /\%^---\_.\{-}\.\.\.$/ contains=@yamlTop
" ===================================================
" ==== latex math code ==============================
"	- Define certain regions
syn region math start='/\$\$/' end='/\$\$/'
syn match math_block '\$[^$].\{-}\$'
syn match liquid '{%.*%}'
syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
syn region highlight_block start='```' end='```'
"####################################################
" ==== tex =========================================
syn match mdTex '\v\s*\\[a-zA-Z].*$'
"####################################################
"## Patterns ########################################
"## special #########################################
syn match mdMailUrl /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
"== todos ===============================
syn match mdOoPrioHigh "^\v,,a\..*"
"syn match mdOt "^\v::.*"
"syn match mdOt ".*::.*"
syn match mdOoSep1 "^\.*v::[[:alnum:]]\+"
syn match mdOo ",,[^:].*"
syn match mdOoSep2 "::::.*"
"## gh md specs
syn match mdGhCb '^>.*'
syn match mdGhCbh '^> #.*'
syn match mdGhCbh '^> -.*'
"### seps
syn match mdS1	"\v\%\%.*$"
syn match mdS1 "*%%%%%%%%*"
syn match mdS1	"^`%%%%%.*$"
syn match mdS1	"`%%%%%.*$"
syn match mdS2	"<!---.*$"
syn region mdS2 start=/<!---/ end=/--->/
syn match mdS3	"<!---SECTION.*$"
syn match mdSh2 "<!---h2.*$"
"### headings
" mdHx
syn match mdH1a "^\v#"
syn match mdH2a "^\v##"
syn match mdH3a "^\v###"
syn match mdH4a "^\v####"
" mdH
syn match mdH1	"^\v# .*$"
syn match mdH2	"^\v## .*$"
syn match mdH3	"^\v### .*"
syn match mdH4	"^\v#### .*"
" mdHy
syn match mdH2h "^\v::.*"
syn match mdH2h "\v,,## ::.*"
syn match mdH2h "\v ## .*"
syn region mdString start=/\v"/ 	skip=/\v\\./ end=/\v"/
syn region mdH1 start=/\v# / 	skip=/\v\\./ end=/\v\n/
"======================================
"==== linking =========================
"hi def 	mdH2h
hi link	mdH1 htmlH1
hi link	mdH2 htmlH2
hi link	mdH3 htmlH3
hi link	mdH4 htmlH4
hi link	mdString String
" cus string
"hi link 	markdownCustomString 			htmlH2
hi link	mdOtags Folded
hi link 	mdOtag1 htmlH2
hi link 	mdOtag2 htmlH3
hi link 	mdOtag3 htmlH4
"hi link sep1 		Comment
hi link math 							Statement
hi link liquid 						Statement
hi link highlight_block 	Function
hi link math_block 				Function
"=========================================
"== colors ================================
"source $VIMDIR/colors/black.vim
"## ARCHIVING ################################
" subs #######
"syn match mdOtags ",,[[:alnum:]]\+\(\.[[:alnum:]]\+\)\{0,2\}\ze\.\."
"syn match mdOtag1 "\w+" contained
"syn match mdOtag2 "\w+" contained
"syn match mdOtag3 "\w+" contained

"syn match tex '\[a-zA-Z].*$'
"syn match tex '\v/[a-zA-Z]'
"syn match tex '\..*$'
"syn match tex '\v\\.*$'
"syn match mdTex '\v.*\\[a-zA-Z].*$'
"syn match markdownCustomString "^\v,,.*"
"syn match markdownCustomString ",,[^\.]\+[\.]\+[^\.]\+\ze\.\."
"syn match markdownCustomString ",,[[:alnum:]]\+[\.]\+[[:alnum:]]\+[\.]\+[[:alnum:]]\+\ze\.\."
"syn region mdOo 	start=/\v"/ 	skip=/\v\\./ end=/\v"/
"syn match ot ".*asdf"
"syn match ot "\v:.:.*"
"syn match ot /::/
"syn match ot /.*asdf/

