
return {
    {"folke/which-key.nvim",
        event = "VeryLazy",
        --event = "VimEnter",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
        },
    },
}
