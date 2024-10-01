return {
    {'folke/lazy.nvim',     version = "*" },           -- focus?
    {'tpope/vim-obsession', cmd = 'Obsession'},-- Session Management
    {'felipec/notmuch-vim', cmd = 'NotMuch'},
    
    -- tasks ###########################################
    
    {"huantrinh1802/m_taskwarrior_d.nvim",
        filetype = {
            'markdown',
            'markdownt',
        },
        version = "*",
        dependencies = { "MunifTanjim/nui.nvim" },
        -- The order of toggling task statuses
        task_statuses = { " ", ">", "x", "~" },
        -- The mapping between status and symbol in checkbox
        status_map = { [" "] = "pending", [">"] = "active", ["x"] = "completed", ["~"] = "deleted" },
        -- The checkbox prefix and suffix
        checkbox_prefix = "[",
        checkbox_suffix = "]",
        -- The default list symbol
        default_list_symbol = "-",
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
                vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
                    group = vim.api.nvim_create_augroup("TWTask", { clear = true }),
                    pattern = "*.md,*.markdown", -- Pattern to match Markdown files
                    callback = function()
                    vim.cmd('TWSyncTasks')
                end,
                })
        end,
    },
    
    {'tbabej/taskwiki',
        lazy = true,
        cmd = 'Taskwiki',
        ft = {
             'markdownt',
             'wiki'
         },
         dependencies = {
              "vim-taskwarrior",
              "vimwiki",
              "vim-plugin-AnsiEsc"},
    },

    {'vimwiki/vimwiki',
         lazy = true,
         ft = "wiki"
    },

    {'blindFS/vim-taskwarrior', cmd = 'TW' },


    -- write ###########################################

    {'junegunn/limelight.vim',
        cmd = 'Limelight',
        config = function()
            vim.g.limelight_conceal_ctermfg   = "gray"
        end
    },
    {'bilalq/lite-dfm',          cmd = 'LiteDFMToggle' },   -- focus/write
    {'junegunn/goyo.vim',        cmd = 'Goyo' },            -- focus/write
    {'Dotrar/nvim-writeonly'},           -- write only mode (forced insert)
    {'gabenespoli/vim-mutton',   cmd = 'MuttonToggle' },    -- focus/write

    -- func #############################################

    {'jakewvincent/mkdnflow.nvim',
        ft = {
            'markdown',
            'markdownt',
        },
        config = function()
            require('mkdnflow').setup({
                -- Config goes here; leave blank for defaults
            })
        end
    },
}


