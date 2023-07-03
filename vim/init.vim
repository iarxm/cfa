set runtimepath+=~/.config/nvim 
set runtimepath+=~/.local/share/nvim/after
let &packpath = &runtimepath
luafile ~/.config/nvim/init.lua

