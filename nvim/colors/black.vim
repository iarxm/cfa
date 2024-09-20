
"hi Normal 		ctermbg=black 	ctermfg=lightblue guibg=black   guifg=#c0caf5
hi Normal 		ctermbg=black 	ctermfg=lightblue guibg=black   guifg=LightBlue
hi NormalOpposite 	ctermbg=black	ctermfg=lightblue guibg=black   guifg=#c0caf5 gui=standout

" UI #####################################################################
" BACKGROUND
hi AllBlack  		ctermbg=black 	ctermfg=black 	guibg=black 	guifg=black
hi AsciContainer 	ctermbg=black	ctermfg=blue 	guibg=black 	guifg=#c0caf5 	gui=standout,bold
" STATUS LINE
hi StatusLine       ctermfg=lightblue ctermbg=black guifg=black guibg=grey
hi StatusLineNC     ctermfg=lightblue ctermbg=black guifg=black guibg=grey
" TABLINE
hi TabLine        ctermbg=black guibg=black ctermfg=grey guifg=grey gui=italic
hi TabLineSel     ctermbg=black guibg=black ctermfg=white guifg=#5f87af
hi TabLineFill    ctermbg=black  guibg=black guifg=black ctermfg=black
hi TabLineSelSeparator  ctermbg=black   guibg=black  ctermfg=black guifg=black
hi TabLineFillSeparator  ctermbg=black   guibg=black  ctermfg=black guifg=black
hi TabLineModified  ctermbg=black guibg=black  ctermfg=yellow guifg=yellow
hi TabLineSelModified ctermbg=black guibg=black  ctermfg=magenta guifg=magenta
"hi TabLineSel guifg=meBluedark
" TRIM
hi EndOfBuffer    ctermfg=black guifg=black ctermbg=black guibg=black
" SEARCH
"hi Search ctermfg=White ctermbg=Red"
" FLOATING 
hi FoldColumn     guibg=black guifg=#5f87af 
hi FloatBorder    guibg=black guifg=#5f87af
hi FloatTitle     guibg=black guifg=#5f87af  "gui=standout
hi Pmenu          guibg=black guifg=#5f87af 
hi PmenuSel       guibg=black guifg=#5f87af gui=standout
hi PmenuSbar      guibg=black guifg=#5f87af gui=standout
hi LspInfoBorder  guifg=#5f87af 
hi link           VertSplit AllBlack
"hi VertSplit      guifg=black ctermfg=black
" hi link Art NormalOpposite
" #############################################
" MARKDOWN
" #############################################
" special text
hi mdMailURL ctermfg=gray guifg=gray
hi mdTex ctermfg=DarkGrey guifg=DarkGrey
hi mdGhCb	ctermfg=red guifg=red
hi mdGhCbh ctermfg=Yellow guifg=Yellow
" YAML FRONT
hi YAMLFrontMatter ctermfg=blue guifg=blue
hi yamlFrontmatter ctermfg=blue guifg=blue
" HTML
hi htmlComment ctermfg=yellow guifg=yellow
" HEADINGS Default
hi htmlH1 ctermfg=lightgreen guifg=lightyellow gui=bold cterm=bold
hi htmlH2 ctermfg=lightgreen guifg=lightgreen  cterm=bold gui=bold
hi htmlH3 ctermfg=lightcyan  guifg=lightcyan   cterm=bold,italic gui=bold,italic
hi htmlH4 ctermfg=lightgrey  guifg=lightred    cterm=bold gui=bold 
hi htmlHx guifg=LightGrey cterm=bold gui=bold 
" HEADINGS Regular
hi mdH1a ctermbg=red     guibg=red     ctermfg=black guifg=black
hi mdH2a ctermbg=yellow  guibg=yellow  ctermfg=black guifg=black
hi mdH3a ctermfg=yellow  guifg=yellow
hi mdH4a ctermfg=blue    guifg=blue
" SEPS
hi mdS1 ctermfg=green guifg=green
hi mdS2 ctermfg=grey guifg=grey
hi mdS3 ctermbg=green guibg=green
hi mdSh2 ctermbg=yellow guibg=yellow ctermfg=grey guifg=grey
" OO
hi mdOoPrioHigh ctermfg=red       guifg=red        cterm=italic gui=italic
hi mdOo         ctermfg=lightblue guifg=lightcyan
hi mdOoSep1     ctermbg=yellow    guibg=#16161D    ctermfg=white guifg=white
hi mdOoSep2     ctermbg=blue      guibg=#2A2A37    ctermfg=white guifg=white
"#2A2A37
"#5f87af
"https://github.com/rebelot/kanagawa.nvim/blob/f491b0fe68fffbece7030181073dfe51f45cda81/lua/kanagawa/colors.lua
" Headings SPECIAL
hi mdH2h        ctermbg=yellow    guibg=#49443C ctermfg=white guifg=white

" #####################################
" GENERAL
" #####################################
" FOLDING
"hi Folded        ctermfg=white guibg=black ctermbg=black guifg=lightcyan
	"\ guifg=#c0caf5
hi Folded              guibg=black ctermbg=black

hi SignColumn          guibg=black
hi MyTagListFileName   guibg=black   guifg=#5f87af
hi MyTagListTitle      guibg=black   guifg=yellow
hi TagbarKind          guifg=lightyellow ctermfg=yellow
hi TagbarNestedKind    guifg=lightyellow ctermfg=yellow
hi TagbarType          guifg=lightyellow ctermfg=yellow
hi TagbarScope         guifg=lightyellow ctermfg=yellow

" TODO: #################################
" GOAL: full fledged color scheme that's extremely minimal.
"meBlueDark ="#5f87af"
"lightlight blue = "#c0caf5"
" ######################################

" TODO: Can i just 'link' groups that have the same settings?
" TODO: add cterm variants to each hi group..

" TODO: UTILISE LINKING across repeating code

" QUICK ACCESS
"meBlueDark ="#5f87af"
"lightlight blue = "#c0caf5"

" DEFINING COLORS ####################################
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
"ctermfg=yellow
"guifg=yellow
"hi Folded ctermfg=Blue ctermbg=Black
"########################################
"hi Statement
"	\ ctermfg=grey
"hi Function
"	\ ctermfg=grey
" HTML #############################
" make into general 'comment' color??
"hi htmlComment 
"	\ cterm=underline
"hi htmlH1
"	\ ctermbg=blue
"	\ ctermfg=black
"hi Comment
"	\ ctermfg=yellow
" hi StatusLine ctermfg=lightblue guifg=#5f87af ctermbg=black guibg=black
" hi StatusLineNC ctermfg=lightblue guifg=#5f87af ctermbg=black guibg=black

