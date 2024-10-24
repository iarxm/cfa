return {
    "huantrinh1802/m_taskwarrior_d.nvim",
        ft = {
            'markdown',
            'markdownt',
        },
        version = "*",
        dependencies = { "MunifTanjim/nui.nvim" },
        task_statuses = { " ", ">", "x", "~" }, -- The order of toggling task statuses
        status_map = { [" "] = "pending", [">"] = "active", ["x"] = "completed", ["~"] = "deleted" }, -- The mapping between status and symbol in checkbox
        checkbox_prefix = "[", -- The checkbox prefix and suffix
        checkbox_suffix = "]",
        default_list_symbol = "-", -- The default list symbol
        -- Comments pattern prefix and suffix
        -- This is extremely useful for viewing the note in any Makrdown previewers 
        -- (i.e. Obsidian app) if you set   
        -- - comment_suffix = "-->",
        --comment_prefix = "",
        --comment_suffix = "",
        -- The file pattern to trigger the conceal
        file_patterns = { "*.md", "*.markdown" },
        config = function()
            -- Require
            require("m_taskwarrior_d").setup()
                -- More configurations will be added in the future
                -- Optional
                vim.api.nvim_set_keymap("n", "<leader>te", "<cmd>TWEditTask<cr>", { desc = "TaskWarrior Edit", noremap = true, silent = true })
                vim.api.nvim_set_keymap("n", "<leader>tv", "<cmd>TWView<cr>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap("n", "<leader>tu", "<cmd>TWUpdateCurrent<cr>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap("n", "<leader>ts", "<cmd>TWSyncTasks<cr>", { noremap = true, silent = true })
                vim.api.nvim_set_keymap(
                    "n",
                    "<c-space>",
                    "<cmd>TWToggle<cr>",
                    { silent = true }
                )
                -- Be caution: it may be slow to open large files, because it scan the whole buffer
                --vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
                --    group = vim.api.nvim_create_augroup("TWTask", { clear = true }),
                --    pattern = "*.md,*.markdown", -- Pattern to match Markdown files
                --    callback = function()
                --      vim.cmd('TWSyncTasks')
                --end,
                --})
        end,
}
