vim.g.mapleader      = ' '
vim.g.maplocalleader = '.'

local lazypath       = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

if not vim.loop.fs_stat(lazypath) then -- lazy.nvim check existence
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
            "https://github.com/folke/lazy.nvim.git",
            "--branch=stable", lazypath, })
end

local M = {
    spec     = { import = "plug", }, -- add LazyVim and import its plugins
    defaults = { lazy = true, },
    dev      = { path = "~/dsa", },
    lockfile = vim.fn.stdpath("state") .. "/lazy-lock.json",
    change_detection = { -- listen for config changes
        enabled = true,
        notify = false,
    },
    performance = {
        rtp = {
            disabled_plugins = { -- improve startup time
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
            },
        },
    },
}

require("lazy").setup(M)

