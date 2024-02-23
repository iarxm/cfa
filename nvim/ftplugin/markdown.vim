setlocal nospell
set autoindent
set breakindent
set breakindentopt=shift:3 "shifts the softwrapped lines with extra indent
silent! TableModeEnable
set conceallevel=2
"###############################################################
"# ARCHIVE??? ####################################################
"set syntax=markdown
"au ColorScheme * source $VIMDIR/syntax/markdown.vim
"au FileType markdown source $VIMDIR/syntax/markdown.vim
"au BufRead,BufNewFile *.md set syntax=markdown
"au CursorHold * if &ft == "markdown" | execute "set syntax=markdown" | endif'

"au BufEddit * source $VIMDIR/syntax/markdown.vim
"source /home/iao/.config/nvim/syntax/markdown.vim
"#################################
"AnyFoldActivate
"call plug#load('vim-pandoc')
"source $XDG_DATA_HOME/nvim/plugged/vim-pandoc/ftplugin/pandoc.vim
"au InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
"source $VIMDIR/syntax/markdown.vim
"au ColorScheme * au FileType markdown source $XDG_CONFIG_HOME/vim/syntax/markdown.vim
"set briopt+=list:+10

