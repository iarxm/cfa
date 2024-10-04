hi AllBlack              ctermbg=black     guibg=black 	guifg=black      ctermfg=black
hi link VertSplit AllBlack
" ########################################################################
hi Normal                ctermbg=black     guibg=black
hi NormalOpposite        ctermbg=black     guibg=black                                       gui=standout
" ui #####################################################################
" background
hi AsciContainer         ctermbg=black     guibg=black                                       gui=standout,bold
"hi StatusLine            ctermbg=grey      guibg=grey       guifg=black      ctermfg=black
hi StatusLine            ctermbg=black     guibg=black      guifg=black      ctermfg=black
hi StatusLineNC          ctermbg=black     guibg=black      guifg=black      ctermfg=black
hi TabLine               ctermbg=black     guibg=black      "ctermfg=grey     guifg=grey
hi Tabline               gui=italic
hi TabLineSel            ctermbg=black     guibg=black      "ctermfg=white    guifg=#5f87af
hi TabLineFill           ctermbg=black     guibg=black      guifg=black      ctermfg=black
hi TabLineSelSeparator   ctermbg=black     guibg=black      guifg=black      ctermfg=black
hi TabLineFillSeparator  ctermbg=black     guibg=black      guifg=black      ctermfg=black
hi TabLineModified       ctermbg=black     guibg=black      "ctermfg=yellow   guifg=yellow
hi TabLineSelModified    ctermbg=black     guibg=black      "ctermfg=magenta guifg=magenta
" trim
hi EndOfBuffer           ctermbg=black     guibg=black      guifg=black      ctermfg=black
" search
"hi Search               ctermfg=White ctermbg=Red"
" floating
hi FoldColumn                              guibg=black      guifg=#5f87af 
hi FloatBorder                             guibg=black      guifg=#5f87af
hi FloatTitle                              guibg=black      guifg=#5f87af                    "gui=standout
hi Pmenu                                   guibg=black      guifg=#5f87af 
hi PmenuSel                                guibg=black      guifg=#5f87af                    gui=standout
hi PmenuSbar                               guibg=black      guifg=#5f87af                    gui=standout
hi LspInfoBorder                                            guifg=#5f87af 
"hi VertSplit                                               guifg=black      ctermfg=black
"hi link Art NormalOpposite
"#### FOLDING ####################################################
"hi Folded        ctermfg=white guibg=black ctermbg=black guifg=lightcyan "guifg=#c0caf5
hi Folded              guibg=black ctermbg=black
hi SignColumn          guibg=black
hi MyTagListFileName   guibg=black   guifg=#5f87af
hi MyTagListTitle      guibg=black   guifg=yellow
hi TagbarKind          guifg=lightyellow ctermfg=yellow
hi TagbarNestedKind    guifg=lightyellow ctermfg=yellow
hi TagbarType          guifg=lightyellow ctermfg=yellow
hi TagbarScope         guifg=lightyellow ctermfg=yellow
"#### TODO: #################################
" GOAL: full fledged color scheme that's extremely minimal.
" TODO: Can i just 'link' groups that have the same settings?
" TODO: add cterm variants to each hi group..
" TODO: UTILISE LINKING across repeating code
" QUICK ACCESS
" colors ####################################
"#c0caf5
"meBlueDark ="#5f87af"
"lightlight blue = "#c0caf5"
"dark5 = "#737aa2",
"blue0 = "#3d59a1",
"blue = "#7aa2f7",
"cyan = "#7dcfff",
"blue1 = "#2ac3de",
"blue2 = "#0db9d7",
"blue5 = "#89ddff",
"blue6 = "#b4f9f8",
"blue7 = "#394b70",
"magenta = "#bb9af7",
"magenta2 = "#ff007c",
"purple = "#9d7cd8",
"orange = "#ff9e64",
"yellow = "#e0af68",
"green = "#9ece6a",
"green1 = "#73daca",
"green2 = "#41a6b5",
"teal = "#1abc9c",
"red = "#f7768e",
"red1 = "#db4b4b",
"####################
"hi Folded ctermfg=Blue ctermbg=Black
"hi Statement  ctermfg=grey
"hi Function   ctermfg=grey
"make into general 'comment' color??
"hi htmlComment cterm=underline
"hi htmlH1 ctermbg=blue ctermfg=black
"hi Comment ctermfg=yellow
"hi StatusLine ctermfg=lightblue guifg=#5f87af ctermbg=black guibg=black
"hi StatusLineNC ctermfg=lightblue guifg=#5f87af ctermbg=black guibg=black
