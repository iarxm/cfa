
return {
    {"folke/which-key.nvim",
        event = "VimEnter",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        },
    },
}
