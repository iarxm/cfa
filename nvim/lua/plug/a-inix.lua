return {
    { 'neomake/neomake', 
        cmd = 'Neomake'
    },
    { 'folke/lazy.nvim',     version = "*" },
    { 'sheerun/vim-polyglot'}, -- language pack
    { 'powerman/vim-plugin-AnsiEsc',},
    
    { 'dkarter/bullets.vim'}, -- mdx?
    -- syntax
    { 'tpope/vim-surround'}, -- func
    { 'junegunn/vim-easy-align',    cmd = 'Easy' },
    { 'tmsvg/pear-tree'},    -- func
    { 'sirver/ultisnips'},   -- func
    { 'honza/vim-snippets'}, -- func
    { 'vim-scripts/SyntaxRange'},
    { 'rdnetto/YCM-Generator',      branch = 'stable'},
    { 'tpope/vim-speeddating'},
    { 'vim-scripts/utl.vim'},   -- ?
    { 'tpope/vim-repeat', -- makes plugs dot-repeatable like leap
        --event = "VeryLazy" 
    }, 
    { 'pseewald/vim-anyfold', cmd = 'AnyFoldActivate'},
    { 'Konfekt/FastFold'},
    { 'Bekaboo/deadcolumn.nvim',
         ft = {
             "sh",
             "bash",
             "lua",
         }
    },
    -- testing
    { 'vim-test/vim-test',          cmd = 'TestNearest'},
    -- compile
    { 'manasthakur/vim-asyncmake',  cmd = 'AsyncMake'},  -- syn
    -- search
    { 'universal-ctags/ctags'}, -- tag
    { 'ctrlpvim/ctrlp.vim'},    -- search
    { 'junegunn/fzf'},          -- which fzf??
        -- {'/usr/bin/fzf',}, -- Specify path to fzf bin
    --
    { 'vim-scripts/taglist.vim', cmd = 'Tlist'},   -- tag-
    { "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
}
    -- ################################################
    -- task: switch limelight folke/twilight.nvim - based on treesitter
    -- task: analyse [astro](https://astronvim.com/Recipes/black_belt)
    -- archive ########################################
    --{ "ecthelionvi/NeoColumn.nvim",
    --     cmd = "ToggleNeoColumn",
    --     opts = {
    --          fg_color = "",
    --          bg_color = "Red",
    --          NeoColumn = "80",
    --          always_on = true,
    --          custom_NeoColumn = {},
    --          fg_color = "",
    --     },
    --}, -- couldn't get this to work, and currently prefer 'deadcolumn'
    -- ###################################################
    -- DEBUGGING/TESTING ###################################
    -- { 'michaelb/sniprun',},
    -- { 'arjunmahishi/flow.nvim',}, --snippets
    -- { 'nvim-neotest/neotest',},
    -- ##################################################
    -- { 'bra/NrrwRgn',},
    -- #################################################
    -- { 'vim-scripts/ctags.vim',}
    -- { 'ludovicchabant/vim-gutentags',
    --    config = function ()
    --        vim.g.gutentags_project_root      = { "$HOME/daa/.tags", ".tags" }
    --        vim.g.gutentags_ctags_tagfile     = "$HOME/daa/.tags"
    --        -- g.gutentags_add_default_project_roots = { "$HOME/d/", ".tags" }
    --    end
    --},
    -- ####################################################
    -- { 'junegunn/vim-github-dashboard.git',}
    -- { 'rktjmp/git-info.vim',}
    -- ################################################
    -- { 'jremmen/vim-ripgrep',}
    -- ################################################
    -- ######################################################
    -- { 'Shougo/vimproc.vim', {'do' : 'make'},} -- unite taskwarrior dep.
    -- { 'shougo/unite.vim',}, "unite tw dep
    -- { 'Shougo/denite.nvim',}, "unite replacement
    -- { 'blakesweeney/unite-taskwarrior',}, -- archived / abandoned
    -- { 'yegappan/asyncmake', --vimscript
        -- }, -- perhaps this is outdated, stick to basic nvim functiions or a nvim plug
