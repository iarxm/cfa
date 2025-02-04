vim.env.COLORS_BLACK     = "colors/black.vim"
--vim.env.COLORS_VIM       = "kanagawa-wave"
vim.env.COLORS_VIM       = "kanagawa"
--vim.env.COLORS_VIM       = "rosebones"
vim.g.netrw_banner       = 0
vim.g.netrw_liststyle    = 0
vim.opt.compatible       = false -- required to redefine viminfo
vim.opt.termguicolors    = true
vim.opt.autoindent       = true
vim.opt.breakindent      = true
vim.opt.breakindentopt   = 'shift:3'
vim.opt.tabstop          = 30 -- indicates masquarading tab's
vim.opt.shiftwidth       = 4
vim.opt.softtabstop      = 0
vim.opt.expandtab        = true
vim.opt.foldexpr         = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldtext         = "v:lua.vim.treesitter.foldtext()"
vim.opt.modelines        = 5
vim.opt.modeline         = true
vim.opt.ignorecase       = true
vim.opt.laststatus       = 3
vim.opt.shortmess        = 'I'
vim.opt.tabline          = ' '
--vim.opt.statusline       = '%!uix#MyTabLine()'
vim.opt.fillchars:append { vert = " " }
vim.opt.tags:append      { "./.tags;", ".tags" }
vim.opt.rtp:append       { "~/.config/nvim/plug/myconfigs" }
vim.cmd.filetype         'plugin on'
--vim.g.NERDTreeShowBookmarks = 1
--vim.g.NERDTreeHijackNetrw = 0
require("profa.lazy")
-- task: load the following via migrating into their own plugin setup?
require("profa.maps")
require("profa.auto")

