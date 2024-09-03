local opt           = vim.opt
local cmd           = vim.cmd
vim.env.MYVIMRC     = vim.fn.stdpath('config') .. '/init.lua'
opt.compatible      = false -- required to redefine viminfo file
opt.termguicolors   = true
opt.autoindent      = true
opt.breakindent     = true
opt.breakindentopt  = 'shift:3'
opt.tabstop         = 30 -- indicates masquarading tab's
opt.shiftwidth      = 4
opt.softtabstop     = 0
opt.expandtab       = true
opt.modelines       = 5
opt.modeline        = true
opt.ignorecase      = true
opt.tabline         = ' '
opt.statusline      = '%!uix#MyTabLine()'
opt.laststatus      = 3
opt.shortmess       = 'I'
opt.fillchars:append({ vert = " " })
opt.tags:append({ "./.tags;", ".tags" })
cmd.syntax('on')
cmd.filetype('plugin on')
require("init.map")
require("init.laz")
require("init.lsp")
require("init.col")
require("init.zlt")
require("auto.odo")
--opt.colorcolumn     = '79' leave this to the particlar filetype
