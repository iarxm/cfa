local opt            = vim.opt
local cmd            = vim.cmd
local glo            = vim.g
vim.env.MYVIMRC      = vim.fn.stdpath('config') .. '/init.lua'
vim.env.COLORS_BLACK = "$HOME/.config/nvim/colors/black.vim"
vim.env.COLORS_VIM   = "kanagawa-wave"
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
require("init.mod_odo")
-- - [ ] Move all to specific files for each plugin, to load on launch
local g = vim.g
-- folding ####################################
g.anyfold_fold_comments            = 1
-- g.anyfold_identify_comments     = 1
-- g.markdown_folding = 4
g.vim_markdown_folding_level       = 5
g.vimtex_compiler_progname = "nvr"
g.vimtex_view_method = "zathura"
g.vim_markdown_preview_browser = "qtc.win"
g.vim_markdown_preview_use_xdg_open = 1
g.vim_markdown_preview_github = 1
g.table_mode_syntax = 0
-- #########################################
g.voom_ft_modes = { markdown = "pandoc", rmd = "pandoc" }
-- #######################################
g.org_agenda_files = { "index.org", "project.org" }
g.NERDTreeShowBookmarks = 1
g.NERDTreeHijackNetrw = 0
g.nnn_layout = { window = { width = 0.9, height = 0.9, highlight = "Comment" } }
g.nnn_action = {
  ["<c-t>"] = "tab split",
  ["<c-s>"] = "split",
  ["<c-v>"] = "vsplit",
}
g.nnn_session = "local"
-- gcal creds ####################################################
g.calendar_google_calendar = 1
g.calendar_google_task = 0
vim.env.gcalcred = "$XDG_CACHE_HOME/calendar.vim/credentials.vim"
if vim.fn.filereadable(vim.env.gcalcred) == 1 then
  vim.cmd("source " .. vim.env.gcalcred)
end
-- g.airline_extensions_tabline_fnamemod = ":t"
-- g.airline_extensions_disable_rtp_load = 1 -- disable checking rtp for extensions for line
-- colors ##################
vim.api.nvim_create_autocmd(
    {"ColorScheme"}, {
        pattern = "*",
        group = "COLORS",
        callback = function()
            vim.cmd.source(vim.env.COLORS_BLACK)
        end
    }
)
vim.cmd.colorscheme(vim.env.COLORS_VIM)
-- g:colors_name sometimes prints the parent colorscheme but not the sub scheme (eg kanagawa-wave is saved as 'kanagawa'), then goyo causes issues. Add 'COLORS_VIM' to goyo_leave
-- kanagawa-wave tokyonight-night tokyonight rosebones catppuccin-mocha catppuccin-frappe catppuccini zenbones kanagawa-dragon eldar rose-pine simpleblack vividchalk murphy
--vim.highlight.VertSplit cterm=NONE
-- ######################3
--require("init.zlt")
--require("init.lsp")
--require("init.col")

