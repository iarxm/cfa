-- TASK: https://github.com/theHamsta/nvim-dap-virtual-text
return {
    { 'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },
    -- lsp config ##############################
    { "williamboman/mason.nvim",
        --cmd = { "Mason", "MasonUpdate",},
        config = function()
            require("mason").setup()
        end
    },
    
    { "neovim/nvim-lspconfig",
        event = 'VeryLazy',
        ui = { -- TODO
            border = "single",
    }},
    { "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    },
    -- linting ######################################
    { 'jose-elias-alvarez/null-ls.nvim',
        event = 'VeryLazy', -- also contains a formatter? alternative linter: https://github.com/jose-elias-alvarez/null-ls.nvim
    },
    { "folke/trouble.nvim", -- pretty diagnosistics amongst other functions
        event = 'VeryLazy',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            position = "bottom", -- position of the list can be: bottom, top, left, right
            height = 10, -- height of the trouble list when position is top or bottom
            width = 50, -- width of the list when position is left or right
            icons = true, -- use devicons for filenames
            mode = "workspace_diagnostics", -- "workspace_diagnostics", "document_diagnostics", "quickfix", "lsp_references", "loclist"
            severity = nil, -- nil (ALL) or vim.diagnostic.severity.ERROR | WARN | INFO | HINT
            fold_open = "", -- icon used for open folds
            fold_closed = "", -- icon used for closed folds
            group = true, -- group results by file
            padding = true, -- add an extra new line on top of the list
            cycle_results = true, -- cycle item list when reaching beginning or end of list
            action_keys = { -- key mappings for actions in the trouble list
                -- map to {} to remove a mapping, for example: close = {},
                close = "q", -- close the list
                cancel = "<esc>", -- cancel the preview and get back to your last window / buffer / cursor
                refresh = "r", -- manually refresh
                jump = {"<cr>", "<tab>"}, -- jump to the diagnostic or open / close folds
                open_split = { "<c-x>" }, -- open buffer in new split
                open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
                open_tab = { "<c-t>" }, -- open buffer in new tab
                jump_close = {"o"}, -- jump to the diagnostic and close the list
                toggle_mode = "m", -- toggle between "workspace" and "document" diagnostics mode
                switch_severity = "s", -- switch "diagnostics" severity filter level to HINT / INFO / WARN / ERROR
                toggle_preview = "P", -- toggle auto_preview
                hover = "K", -- opens a small popup with the full multiline message
                preview = "p", -- preview the diagnostic location
                close_folds = {"zM", "zm"}, -- close all folds
                open_folds = {"zR", "zr"}, -- open all folds
                toggle_fold = {"zA", "za"}, -- toggle fold of current file
                previous = "k", -- previous item
                next = "j", -- next item
            },
        },
    },
    { 'mfussenegger/nvim-dap', -- diagnositics
        event = 'VeryLazy'
    },
    -- completion ####################################
    { 'neoclide/coc.nvim' },
    { "hrsh7th/nvim-cmp"},
    -- VERSIONING ###################################
    {"kdheepak/lazygit.nvim",
        event = 'VeryLazy',
        dependencies =  {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").load_extension("lazygit")
        end,},
}
-- ############################################### 
    --{'roxma/nvim-yarp'}, -- yet another remote plugin..
