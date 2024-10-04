return {
    { "agude/vim-eldar",               name = 'eldar' },
    { 'junegunn/seoul256.vim',         name = 'seoul' },
    { 'jaywilliams/vim-vwilight',      name = 'vwilight' },
    { 'vim-scripts/rastafari.vim',     name = 'rastafari'  },
    { 'lucasprag/simpleblack',         name = 'simpleblack' },
    { 'camgunz/amber',                 name = 'amber' },
    { 'vim-scripts/reloaded.vim',      name = 'reloaded' },
    { 'reedes/vim-thematic',           name = 'thematic' },
    { 'jalvesaq/southernlights',       name = 'southernlights' },
    { 'nanotech/jellybeans.vim',       name = 'jellybeans' },
    { 'NLKNguyen/papercolor-theme',    name = 'papercolor' },
    { 'bluz71/vim-moonfly-colors',     name = 'moonfly' },
    { 'h3xx/kvim-late_evening',        name = 'late' },
    { 'ray-x/aurora',                  name = 'aurora' },
    { 'ParamagicDev/vim-medic_chalk',  name = 'medicchalk' },
    { 'tpope/vim-vividchalk',          name = 'vividchalk' },
    --
    { 'rose-pine/neovim',              name = 'rose-pine',
        variant = 'auto',
        disable_background = 'true',
    },
    { "folke/tokyonight.nvim",-- tokyonight
        opts = { style = "moon" },
    },
    { "zenbones-theme/zenbones.nvim", --TODO: learn how to use lush
        lazy = false,
        priority = 1000,
        dependencies = "rktjmp/lush.nvim",
        --opts = {},
    },
    { "rebelot/kanagawa.nvim",
        name = 'kanagawa',
        lazy = false,
        priority = 1000,
        config = function() 
            require('kanagawa').setup({
                compile = true,              -- enable compiling the colorscheme
                undercurl = true,            -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true},
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false,         -- do not set background color
                dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
                terminalColors = true,       -- define vim.g.terminal_color_{0,17}
                colors = {                   -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "dragon",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "dragon",           -- try "dragon" !
                    light = "lotus"
                },
            })
        end
    },
    { "catppuccin/nvim",
        name = "catppuccin",
        lazy = "false",
        priority = 1000,
        config = function() 
            require("catppuccin").setup({
            flavour = "mocha",
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                    overlay0 = "#000000",
                },
            },
            integrations = {
                alpha = true,
                cmp = true,
                gitsigns = true,
                illuminate = true,
                indent_blankline = { enabled = true },
                lsp_trouble = true,
                mini = true,
                native_lsp = {
                    enabled = true,
                    underlines = {
                        errors = { "undercurl" },
                        hints = { "undercurl" },
                        warnings = { "undercurl" },
                        information = { "undercurl" },
                    },
                },
                navic = { enabled = true },
                neotest = true,
                noice = true,
                notify = true,
                nvimtree = true,
                semantic_tokens = true,
                telescope = true,
                treesitter = true,
                which_key = true,
            },
        })
        end,
    },
}
--{ 'https://github.com/naortega/matrix.vim', name= 'matrix' },
