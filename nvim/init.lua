local opt 		= vim.opt
vim.env.MYVIMRC 	= vim.fn.stdpath('config') 	.. '/init.lua'
opt.compatible 		= false -- required to redefine viminfo file
opt.colorcolumn 	= ""
opt.termguicolors 	= true
opt.autoindent		= true
opt.breakindent 	= true
opt.breakindentopt 	= "shift:3"
opt.tabstop 		= 5
opt.softtabstop 	= 0
opt.shiftwidth 		= 0
opt.modelines 		= 5
opt.modeline 		= true
opt.ignorecase 		= true
opt.formatlistpat 	= '^>\\s*\\[({]?[0-9]+\\|[a-zA-Z]+\\)[\\]:.)}]\\s\\+\\|\\^>\\s*[-–+o*•]\\s\\+'
opt.tabline		= '%!uix#MyTabLine()'
vim.cmd.syntax('on')
vim.cmd.filetype('plugin on')
opt.tags:append({ "./.tags;", ".tags" })
require("init.map")
require("init.lazyx")
require("init.cmd")
require("init.lsp")
-- ##############################################3
require("init.col")
require("init.zlet")
-- TODO: load all the 'requires' via plugins??
-- TODO: INTEGRATE VIA OTHER LOADING MECHANISMS...::
-- vim.cmd [[ source $HOME/.config/nvim/init.vim ]]
-- opt.relativenumber 	= true
-- vim.loader.enable()
