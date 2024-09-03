return {
    { "emmanueltouzery/decisive.nvim",
        config = function()
            require('decisive').setup{}
            end,
        lazy=true,
        ft = {'csv'},
        keys = {
            { '<leader>cca', ":lua require('decisive').align_csv({})<cr>",       { silent = true }, desc = "Align CSV",          mode = 'n' },
            { '<leader>ccA', ":lua require('decisive').align_csv_clear({})<cr>", { silent = true }, desc = "Align CSV clear",    mode = 'n' },
            { '[c', ":lua require('decisive').align_csv_prev_col()<cr>",         { silent = true }, desc = "Align CSV prev col", mode = 'n' },
            { ']c', ":lua require('decisive').align_csv_next_col()<cr>",         { silent = true }, desc = "Align CSV next col", mode = 'n' },}
    },
    {'cameron-wags/rainbow_csv.nvim',
        config = true,
        ft = {
            'csv',
            'tsv',
            'csv_semicolon',
            'csv_whitespace',
            'csv_pipe',
            'rfc_csv',
            'rfc_semicolon'
        },
        cmd = {
            'RainbowDelim',
            'RainbowDelimSimple',
            'RainbowDelimQuoted',
            'RainbowMultiDelim'}
    },


    {'sheerun/vim-polyglot'}, -- language pack


    {'powerman/vim-plugin-AnsiEsc',},

    -- video vim
    {'scateu/tsv_edl.vim',      cmd = "Edl",},           --exp

    
    -- syntax
    {'godlygeek/tabular',          cmd = 'Tabularize'},  -- syn
    {'dhruvasagar/vim-table-mode', cmd = 'TableModeEnable' },
    {'tpope/vim-surround'}, -- func
    {'junegunn/vim-easy-align',    cmd = 'Easy' },
    {'tmsvg/pear-tree'},    -- func
    {'sirver/ultisnips'},   -- func
    {'honza/vim-snippets'}, -- func
    {'vim-scripts/SyntaxRange'},
    {'rdnetto/YCM-Generator',      branch = 'stable'},
    {'tpope/vim-speeddating'},
    {'vim-scripts/utl.vim'},   -- ?
    {'tpope/vim-repeat', event = "VeryLazy" }, -- makes plugs dot-repeatable like leap
    {'dkarter/bullets.vim'},
    {'pseewald/vim-anyfold', cmd = 'AnyFoldActivate'},
    {'Konfekt/FastFold'},

    {'manasthakur/vim-asyncmake',  cmd = 'AsyncMake'},  -- syn
   

    -- language specific
    {'elzr/vim-json'},      -- func
    {'jalvesaq/Nvim-R',            ft = 'rmarkdown'},    -- syn
    {'vim-pandoc/vim-rmarkdown',   ft = 'rmarkdown'},    -- syn
    {'vim-pandoc/vim-criticmarkup'},                   -- syn
    {'fatih/vim-go',               ft = 'go'},
    {'nsf/gocode', 
         --tag = 'v.20150303',
         rtp = 'vim',
         ft = 'go'
    },


    -- testing
    {'vim-test/vim-test',          cmd = 'TestNearest'},
    {'dstein64/vim-startuptime',
           cmd = "StartupTime",
           config = function() vim.g.startuptime_tries = 10 end
    },


    -- preview / present
    {'sotte/presenting.vim',       cmd = 'PresentingStart'},
    {'JamshedVesuna/vim-markdown-preview', cmd = 'MdPreview'},


    -- fm
    {'cocopon/vaffle.vim',       cmd = 'Vaffle'},      --fm
    {'mcchrish/nnn.vim',         cmd = 'NnnExplorer'}, --fm
    {'vim-voom/VOoM',              cmd = 'VoomToggle'},


    -- search
    {'universal-ctags/ctags'},                       -- tag
    {'ctrlpvim/ctrlp.vim'},    -- search
    {'junegunn/fzf'}, -- which fzf??
       

    -- gui
    {'majutsushi/tagbar',          cmd = 'Tagbar'},  -- tag
    {'vim-scripts/taglist.vim',    cmd = 'Tlist'},   -- tag-
    {'Bekaboo/deadcolumn.nvim',
         ft = { "sh", "bash", "lua", }
    },
    {'vim-airline/vim-airline',    cmd = 'AirlineToggle'},

    -- #######################################################
    -- TODO: switch limelight folke/twilight.nvim - based on treesitter
    -- TODO: ANALYZE ASTROVIM
    -- https://astronvim.com/Recipes/black_belt
    -- {'ThePrimeagen/harpoon',},
    -- DEBUGGING/TESTING ###################################
    -- {'michaelb/sniprun',},
    -- {'arjunmahishi/flow.nvim',}, --snippets
    -- {'nvim-neotest/neotest',},
    -- { "LazyVim/LazyVim", config = true,},
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
    -- {'https://github.com/ludovicchabant/vim-gutentags',},
    -- ####################################################
    -- {'jremmen/vim-ripgrep',}
    -- {'vim-scripts/ctags.vim',}
    -- {'junegunn/vim-github-dashboard.git',}
    -- {'rktjmp/git-info.vim',}
    -- ######################################################
    -- {'mhinz/vim-startify',}
    -- ######################################################
    -- {'hsitz/VimOrganizer',}
    -- {'itchyny/calendar.vim', cmd = 'Calendar'},
    -- #######################################################
    -- {'honza/writer.vim'},} -- focus
    -- {'mikewest/vimroom', { 'on': 'VimroomToggle' }} -- focus
    -- {'amix/vim-zenroom'} -- focus
    -- {'amix/vim-zenroom2'} -- focus
    -- {'kurkale6ka/vim-chess'} -- chess
}

