-- - [ ] Move to specific files for each plugin, to load on launch
local g = vim.g
g.tlist_markdown_settings = "markdown;h:heading;s:section;S:subsection;o:todo"
g.Tlist_Auto_Highlight_Tag         = 1
g.Tlist_Highlight_Tag_On_BufEnter  = 1
g.Tlist_Auto_Update                = 1
g.Tlist_Compact_Format             = 1
g.Tlist_Enable_Fold_Column         = 0
g.Tlist_Display_Prototype          = 1
-- g.Tlist_Show_One_File           = 1
-- folding ####################################
g.anyfold_fold_comments            = 1
-- g.anyfold_identify_comments     = 1
-- g.markdown_folding = 4
g.vim_markdown_folding_level       = 5
g.pandoc_filetypes_handled         = { "pandoc", "markdown" }
g.pandoc_modules_enabled           = { "toc" }
g.pandoc_filetypes_pandoc_markdown = 0
g.pandoc_toc_close_after_navigating = 1
g.pandoc_toc_position               = 1
g.pandoc_folding_fdc                = 0
g.pandoc_folding_level              = 4
g.pandoc_folding_mode               = "relative"
g.pandoc_folding_fold_yaml = 1
g.pandoc_folding_fold_div_classes = 1
g.pandoc_keyboard_sections_header_style = "atx"
g.pandoc_syntax_conceal_blacklist = { "atx", "titleblock" }
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
function s_build_quickfix_list(lines)
  vim.fn.setqflist(vim.fn.copy(lines):map(function(line) return { filename = line } end))
  vim.cmd("copen")
  vim.cmd("cc")
end
g.fzf_action = {
  ["ctrl-q"] = s_build_quickfix_list,
  ["ctrl-t"] = "tab split",
  ["ctrl-x"] = "split",
  ["ctrl-v"] = "vsplit",
}
g.fzf_colors = {
  fg = { "fg", "Normal" },
  bg = { "bg", "Normal" },
  hl = { "fg", "Comment" },
  ["fg+"] = { "fg", "CursorLine", "CursorColumn", "Normal" },
  ["bg+"] = { "bg", "CursorLine", "CursorColumn" },
  ["hl+"] = { "fg", "Statement" },
  info = { "fg", "PreProc" },
  border = { "fg", "Ignore" },
  prompt = { "fg", "Conditional" },
  pointer = { "fg", "Exception" },
  marker = { "fg", "Keyword" },
  spinner = { "fg", "Label" },
  header = { "fg", "Comment" },
}
g.fzf_history_dir = "~/.local/share/fzf-history"
g.ctrlp_map = "<c-p>"
g.ctrlp_cmd = "CtrlP"
g.ctrlp_extensions = { "tag", "buffertag", "dir", "undo", "line", "mixed", "bookmarkdir" }
g.calendar_google_calendar = 1
-- g.calendar_google_task = 0
-- gcal creds ####################################################
vim.env.gcalcred = "$XDG_CACHE_HOME/calendar.vim/credentials.vim"
if vim.fn.filereadable(vim.env.gcalcred) == 1 then
  vim.cmd("source " .. vim.env.gcalcred)
end
-- g.airline_extensions_tabline_fnamemod = ":t"
-- g.airline_extensions_disable_rtp_load = 1 -- disable checking rtp for extensions for line

