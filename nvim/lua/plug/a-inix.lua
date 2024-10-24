return {
    { 'felipec/notmuch-vim', cmd = 'NotMuch'},
    -- tasks ###########################################
    {
    'blindFS/vim-taskwarrior',
        cmd = 'TW',
        config = function()
            vim.g.task_rc_override = 'defaultwidth=999'
            vim.g.task_info_vsplit = 1
        end
    },
    -- neomake #########################################
    { 'neomake/neomake',
        cmd = 'Neomake'
    },
    { 'folke/lazy.nvim',     version = "*" },
    { 'sheerun/vim-polyglot'}, -- language pack
    --
    { 'powerman/vim-plugin-AnsiEsc',},
    --
    { 'dkarter/bullets.vim'}, -- mdx?
    -- syntax
    { 'tpope/vim-surround'}, -- func
    { 'junegunn/vim-easy-align',    cmd = 'Easy' },
    { 'sirver/ultisnips'},   -- func
    { 'honza/vim-snippets'}, -- func
    --
    { 'tmsvg/pear-tree'},    -- func
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
    { 'ctrlpvim/ctrlp.vim',
        config = function()
            vim.g.ctrlp_map = "<c-p>"
            vim.g.ctrlp_cmd = "CtrlP"
            vim.g.ctrlp_extensions = { "tag", "buffertag", "dir", "undo", "line", "mixed", "bookmarkdir" }
        end
    },
    { 'vim-scripts/taglist.vim',
        cmd = 'Tlist',
        config = function()
            vim.g.tlist_markdown_settings = "markdown;h:heading;s:section;S:subsection;o:todo"
            vim.g.Tlist_Auto_Highlight_Tag         = 1
            vim.g.Tlist_Highlight_Tag_On_BufEnter  = 1
            vim.g.Tlist_Auto_Update                = 1
            vim.g.Tlist_Compact_Format             = 1
            vim.g.Tlist_Enable_Fold_Column         = 0
            vim.g.Tlist_Display_Prototype          = 1
            -- g.Tlist_Show_One_File           = 1
        end
    },
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
