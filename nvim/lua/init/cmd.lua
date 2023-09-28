-- AUTOCMDS FILE
local auc	= vim.api.nvim_create_autocmd
local aug = vim.api.nvim_create_augroup
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
	command = 'echom "\"" . expand("%") . "\"" wordcount().words . "w"'})
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


