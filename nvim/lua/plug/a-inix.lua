return {
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
    --
    { 'vim-scripts/taglist.vim', cmd = 'Tlist'},   -- tag-
}
-- archive
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
 -- #######################################################
    -- TASK: switch limelight folke/twilight.nvim - based on treesitter
    -- TASK: ANALYZE ASTROVIM [astro](https://astronvim.com/Recipes/black_belt)
    -- {'ThePrimeagen/harpoon',},
    -- DEBUGGING/TESTING ###################################
    -- {'michaelb/sniprun',},
    -- {'arjunmahishi/flow.nvim',}, --snippets
    -- {'nvim-neotest/neotest',},
    -- { "LazyVim/LazyVim", 
    --     config = true,},
    -- ######################################################
    -- {'Shougo/vimproc.vim', {'do' : 'make'},} -- unite taskwarrior dep.
    -- {'shougo/unite.vim',}, "unite tw dep
    -- {'Shougo/denite.nvim',}, "unite replacement
    -- {"nvim-lua/plenary.nvim", lazy = true },   -- library used by other plugins
    -- {'blakesweeney/unite-taskwarrior',}, "very interesting tool?
    -- {'/usr/bin/fzf',}, -- Specify path to fzf bin
    -- {'vim-pandoc/vim-pandoc', { 'for': ['markdown','tex'] },},
    -- {'vim-pandoc/vim-pandoc', { 'for': ['tex'] },},
    -- {'vim-pandoc/vim-pandoc-after',},
    -- {'vim-pandoc/vim-pandoc-syntax',},
    -- {'preservim/vim-markdown',},
    -- {'vim-pandoc/vim-markdownfootnotes',},
    -- {'mgor/vim-markdown-grip',},
    -- {'xuhdev/vim-latex-live-preview', { 'for': 'tex' },},
    -- {newton/vim-latex-preview',},
    -- {'yegappan/asyncmake',}, "errors
    -- {bra/NrrwRgn',},
    --{'https://github.com/ludovicchabant/vim-gutentags',
    --    config = function ()
    --        vim.g.gutentags_project_root      = { "$HOME/daa/.tags", ".tags" }
    --        vim.g.gutentags_ctags_tagfile     = "$HOME/daa/.tags"
    --        -- g.gutentags_add_default_project_roots = { "$HOME/d/", ".tags" }
    --    end
    --},
    -- ####################################################
    -- {'jremmen/vim-ripgrep',}
    -- {'vim-scripts/ctags.vim',}
    -- {'junegunn/vim-github-dashboard.git',}
    -- {'rktjmp/git-info.vim',}
    -- move to ~/dpz/
    -- ######################################################
    -- {'mhinz/vim-startify',}
    -- ######################################################
    -- {'hsitz/VimOrganizer',}
    -- {'itchyny/calendar.vim', cmd = 'Calendar'},
    -- #######################################################
    -- Writers
    -- {'honza/writer.vim'},} -- focus
    -- {'mikewest/vimroom', { 'on': 'VimroomToggle' }} -- focus
    -- {'amix/vim-zenroom'} -- focus
    -- {'amix/vim-zenroom2'} -- focus
    -- chess
    -- {'kurkale6ka/vim-chess'} -- chess    
