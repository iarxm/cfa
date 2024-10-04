local opt            = vim.opt
local cmd            = vim.cmd
local glo            = vim.g
vim.env.MYVIMRC      = vim.fn.stdpath('config') .. '/init.lua'
opt.compatible       = false -- required to redefine viminfo file
opt.termguicolors    = true
opt.autoindent       = true
opt.breakindent      = true
opt.breakindentopt   = 'shift:3'
opt.tabstop          = 30 -- indicates masquarading tab's
opt.shiftwidth       = 4
opt.softtabstop      = 0
opt.expandtab        = true
opt.foldexpr         = "v:lua.vim.treesitter.foldexpr()"
opt.foldtext         = "v:lua.vim.treesitter.foldtext()"
opt.modelines        = 5
opt.modeline         = true
opt.ignorecase       = true
opt.tabline          = ' '
opt.statusline       = '%!uix#MyTabLine()'
opt.laststatus       = 3
opt.shortmess        = 'I'
opt.fillchars:append { vert = " " }
opt.tags:append      { "./.tags;", ".tags" }
cmd.syntax           'on'
cmd.filetype         'plugin on'
glo.netrw_banner      = 0
glo.netrw_liststyle   = 0
glo.table_mode_corner = "|"
require("init.map")
require("init.laz")
require("init.lsp")
require("init.zlt")
require("auto.odo")
require("init.col")
--opt.colorcolumn     = '79' leave this to the particlar filetype
