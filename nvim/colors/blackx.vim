" #### MARKDOWN #############################################
" top: yaml / metadata
hi YAMLFrontMatter   ctermfg=blue        guifg=blue
hi yamlFrontmatter   ctermfg=blue        guifg=blue
" headings default
hi htmlH1            ctermfg=lightgreen  guifg=lightyellow  gui=bold         cterm=bold
hi htmlH2            ctermfg=lightgreen  guifg=lightgreen   gui=bold         cterm=bold
hi htmlH3            ctermfg=lightcyan   guifg=lightcyan    gui=bold,italic  cterm=bold,italic
hi htmlH4            ctermfg=lightgrey   guifg=lightred     gui=bold         cterm=bold 
hi htmlHx                                guifg=LightGrey    gui=bold         cterm=bold
" headings regular
hi mdH1a             ctermfg=black       guifg=black        guibg=red        ctermbg=red
hi mdH2a             ctermfg=black       guifg=black        guibg=yellow     ctermbg=yellow
hi mdH3a             ctermfg=yellow      guifg=yellow
hi mdH4a             ctermfg=blue        guifg=blue
" headings special
hi mdH2h             ctermfg=white       guifg=white        guibg=#49443C    ctermbg=yellow
" normal text
" todo....
" special text
hi mdMailURL         ctermfg=gray        guifg=gray
hi mdTex             ctermfg=DarkGrey    guifg=DarkGrey
hi mdGhCb            ctermfg=red         guifg=red
hi mdGhCbh           ctermfg=Yellow      guifg=Yellow
hi htmlComment       ctermfg=yellow      guifg=yellow
" todo structures
hi mdOoPrioHigh      ctermfg=red         guifg=red          gui=italic       cterm=italic
hi mdOo              ctermfg=lightblue   guifg=lightcyan
hi mdOoSep1          ctermfg=white       guifg=white        guibg=#16161D    ctermbg=yellow      
hi mdOoSep2          ctermfg=white       guifg=white        guibg=#2A2A37    ctermbg=blue        
" seperators
hi mdS1              ctermfg=green       guifg=green
hi mdS2              ctermfg=grey        guifg=grey
hi mdS3              ctermbg=green       guibg=green
hi mdSh2             guifg=grey          ctermfg=grey       ctermbg=yellow   guibg=yellow     
" ##########################################################
"#2A2A37 "#5f87af
"https://github.com/rebelot/kanagawa.nvim/blob/f491b0fe68fffbece7030181073dfe51f45cda81/lua/kanagawa/colors.lua
