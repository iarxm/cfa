vim.g.mapleader = ' '
vim.g.maplocalleader = '.'

-- lazy.nvim check existence #####################

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath, })
end

-- lazy init #####################################

vim.opt.rtp:prepend(lazypath)

local M = {}  

local M = { 
  spec = { -- add LazyVim and import its plugins
    { import = "plug" },},
  defaults = { lazy = true },
  dev = { path = "~/code" },
  lockfile = vim.fn.stdpath("state") .. "/lazy-lock.json",
  change_detection = { -- auto check for config changes & reload ui
        enabled = true,
        notify = false, -- get a notification when changes are found
  },
  performance = { rtp = { disabled_plugins = { -- improve startup time
        "gzip",
        "zip",
        "tohtml",
        "man",
        "zipPlugin",
        "tar",
        "tarPlugin",
        "getscript",
        "getscriptPlugin",
        "vimball",
        "vimballPlugin",
        "2html_plugin",
        "logipat",
        "rrhelper",
        "spellfile_plugin",
        "matchit",
   },},},}

require("lazy").setup(M)

