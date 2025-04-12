" front matter
syn include @Yaml syntax/yaml.vim
syn include @Toml syntax/toml.vim
syn region  yamlFrontMatter start=/\%^---$/ end=/^---$/ keepend contains=@Yaml
syn region  yamlFrontMatter start=/\%^---$/ end=/^---$/ fold
syn region  tomlFrontMatter start=/\%^+++$/ end=/^+++$/ keepend contains=@Toml
syn match   yamlFrontMatter /\%^---\_.\{-}\.\.\.$/ contains=@yamlTop
"syn match   yamlFrontMatter /\%^---\_.\{-}\.\.\.$/ fold
"syn region  yamlFrontMatterConceal start=/\%^---$/ end=/^---$/ keepend conceal cchar=↔
"syn match yamlFrontMatterConceal start=--- end=--- conceal cchar=↔
" other concealing characters: ↔
" separators / comments
syn match mdS2 "<!---.*$"
syn region mdxCommentModeline start=/<!--- vim:/ end=/--->/ conceal cchar=>
syn region mdxFront start=/---/ end=/^/ conceal cchar=>
" #### code blocks / inline code
" latex / match code
syn region math start='/\$\$/' end='/\$\$/'
syn match  math_block '\$[^$].\{-}\$'
syn region highlight_block start='{% highlight .*%}' end='{%.*%}'
syn region highlight_block start='```' end='```'
" #### document
syn match   mdMailUrl /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
syn region  mdString start=/\v"/ skip=/\v\\./ end=/\v"/
" github? md specs
syn match   mdGhCb '^>.*'
syn match   mdGhCbh '^> #.*'
syn match   mdGhCbh '^> -.*'
" headings
syn match   mdH1 "^\v# .*$"
syn match   mdH2 "^\v## .*$"
syn match   mdH3 "^\v### .*"
syn match   mdH4 "^\v#### .*"
syn match   mdHx "^\v#####.*"
syn region  mdH1 start=/\v# / skip=/\v\\./ end=/\v\n/
" tasks
syn match mdH2h "^\v::.*"
syn match mdH2h "\v ## .*"
syn match mdH2h "\v,,## ::.*"
syn match mdOoPrioHigh "^\v,,a\..*"
syn match mdOoPrioHigh "^\v,,a\..*"
syn match mdOoSep1 "^\.*v::[[:alnum:]]\+"
syn match mdOo ",,[^:].*"
syn match mdOoSep2 "::::.*"
" linking
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
