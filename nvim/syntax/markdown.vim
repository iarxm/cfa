
" #### FRONT MATTER #################################

" Include syntax files
syn include @Yaml syntax/yaml.vim
syn include @Toml syntax/toml.vim
" Define front matter regions
syn region yamlFrontmatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml
syn region tomlFrontmatter start=/\%^+++$/ end=/^+++$/ keepend contains=@Toml
syn match YAMLFrontMatter /\%^---\_.\{-}\.\.\.$/ contains=@yamlTop


" LATEX MATH CODE #################################

" Define certain regions
syn region math start='/\$\$/' end='/\$\$/'
syn match math_block '\$[^$].\{-}\$'
syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
syn region highlight_block start='```' end='```'


" #### PATTERNS ######################################

syn match mdOoPrioHigh "^\v,,a\..*"
syn match mdOoSep1 "^\.*v::[[:alnum:]]\+"
syn match mdOo ",,[^:].*"
syn match mdOoSep2 "::::.*"
syn match mdMailUrl /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
syn region mdString start=/\v"/ 	skip=/\v\\./ end=/\v"/
" github? md specs
syn match mdGhCb '^>.*'
syn match mdGhCbh '^> #.*'
syn match mdGhCbh '^> -.*'
" Separators
syn match mdS2 "<!---.*$"
syn region mdS2 start=/<!---/ end=/--->/ conceal
"syn match markdownComment /<!--[^>]*-->/ conceal
"hi link markdownComment Comment
"attempting conceal of different patterns
"syn match mdS2 "^.    -.*$" conceal
"syn region mdS2 start=/    / end=/\n/ conceal
" Headings
syn match mdH1 "^\v# .*$"
syn match mdH2 "^\v## .*$"
syn match mdH3 "^\v### .*"
syn match mdH4 "^\v#### .*"
syn match mdHx "^\v#####.*"
syn region mdH1 start=/\v# / 	skip=/\v\\./ end=/\v\n/
" To-dos
"syn match mdOoSep1 "^\.*v::[[:alnum:]]\+"
"syn match mdOo ",,[^:].*"
"syn match mdOoSep2 "::::.*"
syn match mdH2h "^\v::.*"
syn match mdH2h "\v ## .*"
syn match mdH2h "\v,,## ::.*"
syn match mdOoPrioHigh "^\v,,a\..*"


" LINKING ###########################################

hi link mdH1 htmlH1
hi link mdH2 htmlH2
hi link mdH3 htmlH3
hi link mdH4 htmlH4
hi link mdHx htmlHx
hi link mdString String
hi link mdOtags Folded
hi link mdOtag1 htmlH2
hi link mdOtag2 htmlH3
hi link mdOtag3 htmlH4
hi link math Statement
hi link liquid Statement
hi link highlight_block Function
hi link math_block Function


" ARCHIVING  ######################################

" Separators
"syn match mdS1	"\v\%\%.*$"
"syn match mdS1 "*%%%%%%%%*"
"syn match mdS1 "^`%%%%%.*$"
"syn match mdS1 "`%%%%%.*$"
"syn match mdS3 "<!---SECTION.*$"
"syn match mdSh2 "<!---h2.*$"
"syn match mdH1a "^\v#"
"syn match mdH2a "^\v##"
"syn match mdH3a "^\v###"
"syn match mdH4a "^\v####"
