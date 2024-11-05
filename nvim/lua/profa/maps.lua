local map            = vim.api.nvim_set_keymap          -- keymap
local o_done         = "$HOME/daa/a/ozd"

vim.g.mapleader      = ' '
vim.g.maplocalleader = '.'

map('n', '<leader>sv',  ':wa <bar> so $MYVIMRC<CR>', { noremap = true }) -- fw
map('n', '<leader>t',   ':w<CR>:! sh %<CR>',         { noremap = true })
map('n', ';x',          ':! chmod +x %<CR>',         { noremap = true })
map('n', ';j',          '100j',                      { noremap = true })
map('n', ';k',          '100k',                      { noremap = true })
map('n', '<M-j>',       '10j',                       { noremap = true })
map('n', '<M-k>',       '10k',                       { noremap = true })
map('n', '<M-h>',       '5b',                        { noremap = true })
map('n', '<M-l>',       '5w',                        { noremap = true })
map('n', '<M-w>',       '5w',                        { noremap = true })
map('n', '<M-;>',       '5w',                        { noremap = true })
map('n', '<C-w>w',      '<C-w>w 100w',               { noremap = true }) -- silent?
map('n', 'd/',          'F/jli',                     { noremap = true })
map('i', 'f/',          '<ESC>F/jli',                { noremap = true }) -- input map
map('i', 'jk',          '<ESC>',                     { noremap = true })
map('n', '<leader>j',   '<C-w>J',                    { noremap = true }) --## nav. pane manage
map('n', '<leader>k',   '<C-w>K',                    { noremap = true })
map('n', '<leader>h',   '<C-w>H',                    { noremap = true })
map('n', '<leader>l',   '<C-w>L',                    { noremap = true })
map('n', '<C-J>',       ':wincmd j<CR>',             { noremap = true })
map('n', '<C-j>',       '<C-w>j',                    { noremap = true })
map('n', '<C-K>',       '<C-w>k',                    { noremap = true })
map('n', '<C-H>',       '<C-w>h',                    { noremap = true })
map('n', '<C-L>',       '<C-w>l',                    { noremap = true })
map('n', '<leader>z',   '<C-w>>',                    { noremap = true }) -- resize
map('n', '<leader>x',   '<C-w><',                    { noremap = true })
map('n', '<leader>v',   '<C-w>v<C-l>:e',             { noremap = true })
map('n', '<leader>s',   '<C-w>s :e',                 { noremap = true })
map('n', ';e',          ':lua require("markx").equal_width()<CR>', { noremap = true })
map('n', ';t',          ':tabnew ',                  { noremap = true }) -- nav. tab mang
map('n', ';n',          ':tabnew <bar> tabprevious <bar> wq<CR>', { noremap = true })
map('n', 'K',           'gT',                        { noremap = true })
map('n', 'J',           'gt',                        { noremap = true })
map('n', 'B',          ':e #<CR>',                   { noremap = true }) --bufs 
map('n', '<leader>b',  ':ls<CR>:b<space>',           { noremap = true })
map('n', ';b',         ':bw<CR>',                    { noremap = true })
map('n', '<leader>Q',  ':q<CR>',                     { noremap = true }) -- save and quit
map('n', '<leader>q',  ':wa <bar> q<CR>',            { noremap = true })
map('n', ';s',         ':wa<CR>',                    { noremap = true })
map('n', '<leader>aq', ':wa <bar> qa<CR>',           { noremap = true })
map('n', 'E',          ':e ',                        { noremap = true }) -- open/edit
map('n', '<leader>e',  ':e ',                        { noremap = true })

-- based on plugins

map('n', '<leader>zl', ':Limelight<CR>', { noremap = true })
map('n', '<leader>zL', ':Limelight!<CR>', { noremap = true })
map('n', '<leader>zz', ':ZenMode<CR>', { noremap = true })
map('n', ';zz', ':ZenMode<CR>', { noremap = true })
map('n', '<leader>zm', ':MuttonToggle<CR>', { noremap = true })

map('n', '<leader>g', ':Goyo<CR>', { noremap = true })
map('n', '<leader>G', ':Goyo 60%x90% <bar> call md#HideAll()<CR>', { noremap = true })

map('n', '<leader>nn', ':NnnPicker<CR>', { noremap = true })
map('n', '<leader>nc', ':NnnPicker %:p:h<CR>', { noremap = true })
map('n', '<S-h>',      ':lua require(mdx).toggle_hidden_all()<CR>', { noremap = true }) --cust
map('n', ';h',         ':lua require(mdx).toggle_write()<CR>', { noremap = true })
map('n', '.n', ':lua require(mdx).wide_margin()<CR>', { noremap = true })
map('n', '<leader>st', ':CtrlPTag<CR>', { noremap = true }) -- tags
-- make
--map('n', ';m', ':!makeu "$PWD" <CR>', { noremap = true }) -- make scripts
map('n', ';M', ':make &<CR><CR>', { noremap = true })
map('n', ';c', ':silent !xelatex "%s" &<CR>:redraw!<CR>', { noremap = true }) -- scripts
--map('n', '<leader>m', ':call jobstart("make", {"on_exit": {-> execute("copen")}})<CR>', { silent = false }) -- async make
map('n', '<leader>m', ':call jobstart("make")<CR>', { silent = false }) -- async make

map('n', ';p', ':!pda "%"<CR>', { noremap = true })
map('n', ';l', ':TOC<CR>', { noremap = true }) -- syntax
map('n', ';f',
	':if exists("g:syntax_on") <Bar> ' ..
	'syntax off <Bar> ' ..
	'else <Bar> ' ..
	'syntax enable <Bar> endif <CR>',
	{ noremap = true }) -- TODO: convert into function call..
--## SYNTAX.EDITING.MARKDOWN ####################################
-- md .. seps
map('n', '.sll',
	':put =\'<!---------------------------->\'<CR>' ..
	':put =\'<!---------------------------->\'<CR>',
	{ noremap = true })
map('n', '.ssa',
	'i<!----------------------------><ESC>',
	{ noremap = true })
map('n', '.ssb',
	'i<!-----------><ESC>',
	{ noremap = true })
map('n', '.sdd',  ':put =strftime(\'# %d/%m/%y/+\')<ESC>',     { noremap = true }) -- md .. time / date / ft
map('n', '.sda',  ':put =strftime(\'**%y/%m/%d %a+**\')<ESC>', { noremap = true })
map('n', '.smn',  'i<!--- vim:set ft=markdown: ---><ESC>',     { noremap = true })
map('n', '.smt',  'i<!--- vim:set ft=markdownt: ---><ESC>',    { noremap = true })
map('n', 'me',    ':m $<CR>',                                  { noremap = true }) -- oo move to end
map('v', 'me',    ':\'<,>\'m $<CR>',                           { noremap = true })
map('n', 'md',    '0v$:w! >>' .. o_done .. '<CR>d',            { noremap = true }) -- oo move to done
map('v', 'md',    ':w! >> '   .. o_done .. '<CR>gvd',          { noremap = true })
map('v', 'mr',    'x<C-L>Gp<C-H>',                             { noremap = true }) -- oo .. move across panes
map('n', '.oo',   ':call oo#OoPanel(\" ', { noremap = true }) -- oo
map('n', '.oww',  ':call oo#OoPanel("dsiwg/")<CR>', { noremap = true })
map('n', '.owf',  ':call oo#OoPanel("dsiwg/fund.")<CR>', { noremap = true }) -- or use 'gx' - g:netrw_browsex_viewer

-- TableMode and Markdown Abbreviations

map('i', '<expr> <bar><bar>', -- compact the below into 'mdx' itself. TASK
	'mdx#isAtStartOfLine("\\|\\|") ? "<c-o>:TableModeEnable<cr><bar><space><bar><left><left>" : "<bar><bar>"',
	{ silent = true })
map('i', '<expr> __',
	'mdx#isAtStartOfLine("__") ? "<c-o>:silent! TableModeDisable<cr>" : "__"',
	{ silent = true })
-- other
map('n', ';T', ':TableModeRealign<CR>', { silent = true })
map('n', '.t', ':TableModeEnable<CR>', { silent = false })
map('n', '<leader>r', ':RenumberList<CR>', { silent = true })
map('n', '<leader>om', ':call OpenMarkdownPreview()<cr>', { silent = true })
-- urls
map('n', '<leader>U', ':call url#HandleURL()<cr>', { silent = true })
map('n', '<leader>u', ':call url#HandleUrlCurWin()<cr>', { silent = true })
map('n', ';w', ':WhichKey<cr>', { silent = true })
-- tags
-- map('n', ',t', ':Tlist<CR>', { silent = true })
-- map('n', ',t', ':TagbarToggle<CR>', { silent = true })
-- ## auto parenthesis
-- map('i', '(', '()<ESC>i', {})
-- map('i', '"', '""<ESC>i', {})
-- map('i', "'", "''<ESC>i", {})
-- map('i', '{', '{}<Esc>i', {})
-- ## finding
-- local builtin = require('telescope.builtin')
-- map('n', ';ff', ':Telescope find_files<CR>', {})
-- map('n', ';fg', ':Telescope live_grep', {})
-- map('n', ';fb', ':Telescope buffers', {})
-- map('n', ';fh', ':Telescope help_tags', {})
--map('n', '<leader>zm', ':MuttonToggle<CR>', { noremap = true })
--map('n', '<leader>g', ':Goyo 90%x90% <bar> call md#HideAll()<CR>', { noremap = true })
-- map('n', ';g', ':Goyo <bar> call md#HideAll()<CR>', { noremap = true })
-- map('n', ';f', ':e ', { noremap = true })
