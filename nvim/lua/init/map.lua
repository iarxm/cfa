-- mappings ###############################################
local map = vim.api.nvim_set_keymap
local usr_cmd = vim.api.nvim_create_user_command
local auc	= vim.api.nvim_create_autocmd
local aug = vim.api.nvim_create_augroup
local o_done = "$HOME/dd/a/ozd"
vim.g.mapleader = ' '
vim.g.maplocalleader = '.'
-- fm 
map('n', '<leader>sv', 	':wa <bar> so $MYVIMRC<CR>', { noremap = true })
map('n', '<leader>t', 	':w<CR>:! sh %<CR>', { noremap = true })
map('n', ';x', 		':! chmod +x %<CR>', { noremap = true })
--## nav ##################################################
map('n', ';j', '100j', { noremap = true })
map('n', ';k', '100k', { noremap = true })
map('n', '<M-j>', '10j', { noremap = true })
map('n', '<M-k>', '10k', { noremap = true })
map('n', '<M-h>', '5b', { noremap = true })
map('n', '<M-l>', '5w', { noremap = true })
map('n', '<M-w>', '5w', { noremap = true })
map('n', '<M-;>', '5w', { noremap = true })
map('n', '<C-w>w', '<C-w>w 100w', { noremap = true }) -- silent?
map('n', 'd/', 'F/jli', { noremap = true })
-- input map
map('i', 'f/', '<ESC>F/jli', { noremap = true })
map('i', 'jk', '<ESC>', { noremap = true })
--## nav. pane manage #######################################
-- rearrange
map('n', '<leader>j', 	'<C-w>J', { noremap = true })
map('n', '<leader>k', 	'<C-w>K', { noremap = true })
map('n', '<leader>h', 	'<C-w>H', { noremap = true })
map('n', '<leader>l', 	'<C-w>L', { noremap = true })
map('n', '<C-J>', 		':wincmd j<CR>', { noremap = true })
map('n', '<C-j>', 		'<C-w>j', 		{ noremap = true })
map('n', '<C-K>', 		'<C-w>k', 		{ noremap = true })
map('n', '<C-H>', 		'<C-w>h', 	{ noremap = true })
map('n', '<C-L>', 		'<C-w>l', { noremap = true })
-- resize
map('n', '<leader>z', '<C-w>>', { noremap = true })
map('n', '<leader>x', '<C-w><', { noremap = true })
map('n', '<leader>v', '<C-w>v<C-l>:e', { noremap = true })
map('n', '<leader>s', '<C-w>s :e', { noremap = true })
map('n', ';e', ':call md#EqualWidth()<CR>', { noremap = true })
-- nav. tab mang
map('n', ';t', ':tabnew ', { noremap = true })
map('n', ';n', ':tabnew <bar> tabprevious <bar> wq<CR>', { noremap = true })
map('n', 'K', 'gT', { noremap = true })
map('n', 'J', 'gt', { noremap = true })
-- map('n', ';f', ':e ', { noremap = true })
--## BUFFERS #############################################
-- bufs
map('n', 'B', ':e #<CR>', { noremap = true })
map('n', '<leader>b', ':ls<CR>:b<space>', { noremap = true })
map('n', ';b', ':bw<CR>', { noremap = true })
-- save and quit - how to do silent???
map('n', '<leader>Q', ':q<CR>', { noremap = true })
map('n', '<leader>q', ':wa <bar> q<CR>', { noremap = true })
map('n', ';w', ':wa<CR>', { noremap = true })
map('n', '<leader>aq', ':wa <bar> qa<CR>', { noremap = true })
-- open/edit
map('n', 'E', ':e ', { noremap = true })
map('n', '<leader>e', ':e ', { noremap = true })
-- based on plugins #######################################
map('n', '<leader>l', ':Limelight<CR>', { noremap = true })
map('n', '<leader>L', ':Limelight!<CR>', { noremap = true })
-- map('n', '<leader>g', ':Goyo 90%x90% <bar> call md#HideAll()<CR>', { noremap = true })
-- map('n', '<leader>G', ':Goyo 60%x90% <bar> call md#HideAll()<CR>', { noremap = true })
-- map('n', ';g', ':Goyo <bar> call md#HideAll()<CR>', { noremap = true })
usr_cmd('Zen', 'ZenMode', {})
map('n', ';z', ':ZenMode<CR>', { noremap = true })
map('n', '<leader>nn', ':NnnPicker<CR>', { noremap = true })
map('n', '<leader>nc', ':NnnPicker %:p:h<CR>', { noremap = true })
-- cust
map('n', '<S-h>', ':call md#ToggleHiddenAll()<CR>', { noremap = true })
map('n', ';h', ':call md#ToggleWrite()<CR>', { noremap = true })
map('n', '.n', ':call md#WideMargin()<CR>', { noremap = true })
-- syntax ##################################################
-- tags
map('n', '<leader>st', ':CtrlPTag<CR>', { noremap = true })
-- markdown - compile
-- make scripts
map('n', ';m', ':!makeu "$PWD" <CR>', { noremap = true })
map('n', ';M', ':make &<CR><CR>', { noremap = true })
-- shell scripts
map('n', ';c', ':silent !xelatex "%s" &<CR>:redraw!<CR>', { noremap = true })
map('n', ';p', ':!pda "%"<CR>', { noremap = true })
-- syntax
map('n', ';l', ':TOC<CR>', { noremap = true })
map('n', ';s',
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

-- md .. time / date
map('n', '.sdd', ':put =strftime(\'# %d/%m/%y/+\')<ESC>', { noremap = true })
map('n', '.sda', ':put =strftime(\'**%y/%m/%d %a+**\')<ESC>', { noremap = true })
-- md filetype vim
map('n', '.sm', 'i<!--- vim:set ft=markdown: ---><ESC>', { noremap = true })
-- oo .. move to end
map('n', 'me', ':m $<CR>', { noremap = true })
map('v', 'me', ':\'<,>\'m $<CR>', { noremap = true })
-- oo .. move to done file
map('n', 'md', '0v$:w! >>' .. o_done .. '<CR>d', { noremap = true })
map('v', 'md', ':w! >> ' .. o_done .. '<CR>gvd', { noremap = true })
-- oo .. move across panes
map('v', 'mr', 'x<C-L>Gp<C-H>', { noremap = true })
-- oo
map('n', '.oo', ':call oo#OoPanel(\" ', { noremap = true })
map('n', '.oww', ':call oo#OoPanel("dsiwg/")<CR>', { noremap = true })
map('n', '.owf', ':call oo#OoPanel("dsiwg/fund.")<CR>', { noremap = true })
-- or use 'gx' - g:netrw_browsex_viewer
-- TableMode and Markdown Abbreviations ######################################
map('i', '<expr> <bar><bar>',
	'md#isAtStartOfLine("\\|\\|") ? "<c-o>:TableModeEnable<cr><bar><space><bar><left><left>" : "<bar><bar>"',
	{ silent = true })
map('i', '<expr> __',
	'md#isAtStartOfLine("__") ? "<c-o>:silent! TableModeDisable<cr>" : "__"',
	{ silent = true })
-- Other mappings
map('n', ';T', ':TableModeRealign<CR>', { silent = true })
map('n', '.t', ':TableModeEnable<CR>', { silent = false })
map('n', '<leader>r', ':RenumberList<CR>', { silent = true })
map('n', '<leader>om', ':call OpenMarkdownPreview()<cr>', { silent = true })
-- ## TAGS #######################
-- map('n', ',t', ':Tlist<CR>', { silent = true })
-- map('n', ',t', ':TagbarToggle<CR>', { silent = true })
-- ## OTHER #######################################################
-- URLs
map('n', '<leader>U', ':call url#HandleURL()<cr>', { silent = true })
map('n', '<leader>u', ':call url#HandleUrlCurWin()<cr>', { silent = true })
map('n', ';w', ':WhichKey<cr>', { silent = true })
-- ## AUTO PARENTHESISE
-- map('i', '(', '()<ESC>i', {})
-- map('i', '"', '""<ESC>i', {})
-- map('i', "'", "''<ESC>i", {})
-- map('i', '{', '{}<Esc>i', {})
-- FINDING #################################################
-- local builtin = require('telescope.builtin')
-- map('n', ';ff', ':Telescope find_files<CR>', {})
-- map('n', ';fg', ':Telescope live_grep', {})
-- map('n', ';fb', ':Telescope buffers', {})
-- map('n', ';fh', ':Telescope help_tags', {})
-- ## COMMANDS ###############################################
usr_cmd('Gpt', 'ChatGPT', {})
-- AUTOCMDS FILE
-- COLORS ###############################
aug('COLORS', { clear = true })
auc({"ColorScheme"}, {
	pattern = "eldar",
	group = "COLORS",
	command = "source $HOME/.config/nvim/colors/black.vim"})
-- WRITING/UI ##############################
aug('WORKING', 	{ clear = true })
auc({'VimEnter'}, 	{
	group = "WORKING",
	command = 'call md#HideAll()'})
auc("BufWritePost", {
	group = "WORKING",
	command = 'redraw', })
auc("BufWritePost", {
	group = "WORKING",
	command = 'echom " "'})
--	command = 'echom "\"" . expand("%") . "\"" wordcount().words . "w"'})
auc("User", {
	pattern = "GoyoEnter",
	group = "WORKING",
	nested = true,
	command = "call md#Goyo_enter()" })
auc("User", {
	pattern = "GoyoLeave",
	group = "WORKING",
	nested = true,
	command = "call md#Goyo_leave()"})
auc("TabEnter", {
	group = "WORKING",
	command = "call uix#ToggleSlineTrig()"})
auc("VimEnter", {
	group = "WORKING",
	command = "call uix#ToggleSlineTrig()"})


