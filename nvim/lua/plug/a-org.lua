return {
    --
    { 'folke/lazy.nvim',     version = "*" }, --TODO: move to other file
    { 'felipec/notmuch-vim', cmd = 'NotMuch'},
    --
    -- session management ###########################
    --
    { 'tpope/vim-obsession', cmd = 'Obsession'},-- Session Management
    { 'folke/persistence.nvim',
        -- event = "BufReadPre",
        opts = {
            options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" }
        },
        keys = {
          { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
          { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
          { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
        },
    },
    --
    -- tasks ###########################################
    {
    'duckdm/neowarrior.nvim',
    event = 'VeryLazy',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        --- Optional but recommended for nicer inputs
        'folke/noice.nvim',
    },
    config = function()
        local nw = require('neowarrior')
        local home = vim.env.HOME
        nw.setup({
            report = "next",
            filter = "\\(due.before:2d or due: \\)",
            dir_setup = {
                {
                dir = home .. "/dev/nvim/neowarrior.nvim",
                filter = "project:neowarrior",
                mode = "tree",
                expanded = true,
                },
                {
                dir = home .. "/daa",
                mode = "tree",
                expanded = true,
                },
            }
        })
        vim.keymap.set("n", "<leader>nl", function() nw.open_left() end, { desc = "Open nwarrior on the left side" })
        vim.keymap.set("n", "<leader>nc", function() nw.open_current() end, { desc = "Open nwarrior below current buffer" })
        vim.keymap.set("n", "<leader>nb", function() nw.open_below() end, { desc = "Open nwarrior below current buffer" })
        vim.keymap.set("n", "<leader>na", function() nw.open_above() end, { desc = "Open nwarrior above current buffer" })
        vim.keymap.set("n", "<leader>nr", function() nw.open_right() end, { desc = "Open nwarrior on the right side" })
        vim.keymap.set("n", "<leader>nt", function() nw.focus() end, { desc = "Focus nwarrior" })
    end
    },
    { "huantrinh1802/m_taskwarrior_d.nvim",
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
    },
    --
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
    
    { "zk-org/zk-nvim",
        cmd = 'ZkNotes',
        config = function()
            -- See Setup section below
            require("zk").setup({
                -- can be "telescope", "fzf", "fzf_lua", "minipick", or "select" (`vim.ui.select`)
                -- it's recommended to use "telescope", "fzf", "fzf_lua", or "minipick"
                picker = "select",
                
                lsp = {
                    -- `config` is passed to `vim.lsp.start_client(config)`
                    config = {
                        cmd = { "zk", "lsp" },
                        name = "zk",
                        -- on_attach = ...
                        -- etc, see `:h vim.lsp.start_client()`
                    },
                    -- automatically attach buffers in a zk notebook that match the given filetypes
                    auto_attach = {
                        enabled = true,
                        filetypes = { "markdown" },
                    },
                },
                
            })
    end
    }
}


