return {
    { 'felipec/notmuch-vim', cmd = 'NotMuch'},
    -- session management ###########################
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
    -- tasks ###########################################
    {
    'blindFS/vim-taskwarrior',
        cmd = 'TW',
        config = function()
            vim.g.task_rc_override = 'defaultwidth=999'
            vim.g.task_info_vsplit = 1
        end
    },
    -- write ###########################################
    {
    'junegunn/limelight.vim',
        cmd = 'Limelight',
        config = function()
            vim.g.limelight_conceal_ctermfg  = "gray"
            vim.g.limelight_default_coefficient = 0.85
            vim.g.limelight_paragraph_span = 1
            vim.g.limelight_bop = "^\\s"
            vim.g.limelight_eop = "\\ze\\n^\\s"
            vim.g.limelight_priority = -1
            vim.g.lite_dfm_left_offset = 16
            vim.g.lite_dfm_keep_ruler = 1
        end
    },
    --
    {'bilalq/lite-dfm',          cmd = 'LiteDFMToggle' },   -- focus/write
    {'gabenespoli/vim-mutton',   cmd = 'MuttonToggle' },    -- focus/write
    {'junegunn/goyo.vim',        cmd = 'Goyo' },            -- focus/write
    -- important:
    {'Dotrar/nvim-writeonly'},           -- write only mode (forced insert)
}
