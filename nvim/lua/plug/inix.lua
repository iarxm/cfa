return {
     { 'Bekaboo/deadcolumn.nvim',
          ft = { "sh", "bash", "lua", }
     },
     --{ "ecthelionvi/NeoColumn.nvim",
     --     lazy = true,
     --     cmd = "ToggleNeoColumn",
     --     opts = {
     --          fg_color = "",
     --          bg_color = "Red",
     --          NeoColumn = "80",
     --          always_on = true,
     --          custom_NeoColumn = {},
     --          fg_color = "",
     --     },
     --},
     {'sheerun/vim-polyglot'},
     {'blindFS/vim-taskwarrior', 
          lazy = true,
          cmd = 'TW',
     },
     {'tbabej/taskwiki',
       lazy = true,
       cmd = 'Taskwiki',
       dependencies = {
         "vim-taskwarrior",
         "vimwiki",
         "vim-plugin-AnsiEsc"
       },
     },
     {'vimwiki/vimwiki',
       lazy = true,
       ft = "wiki"
     }, 
     { "powerman/vim-plugin-AnsiEsc" },
     { "scateu/tsv_edl.vim",      cmd = "Edl",},        --exp?
     { "folke/lazy.nvim",         version = "*" },              -- focus?
     {'junegunn/limelight.vim',   cmd = 'Limelight'},   -- focus/write
     {'bilalq/lite-dfm',          cmd = 'LiteDFMToggle' },   -- focus/write
     {'junegunn/goyo.vim',        cmd = 'Goyo' },       -- focus/write
     {'https://github.com/Dotrar/nvim-writeonly'},      -- write only mode (forced insert)
     {'gabenespoli/vim-mutton',   cmd = 'MuttonToggle' }, -- focus/write
     {'tpope/vim-obsession',      cmd = 'Obsession'},   -- Session Management
     {'cocopon/vaffle.vim',       cmd = 'Vaffle'},      -- fm
     {'mcchrish/nnn.vim',         cmd = 'NnnExplorer'}, --fm
     {'junegunn/fzf'}, -- which fzf??
     {'godlygeek/tabular',        cmd = 'Tabularize'},  -- syn
     {'vim-pandoc/vim-rmarkdown', ft = 'rmarkdown'},    -- syn
     {'jalvesaq/Nvim-R',          ft = 'rmarkdown'},    -- syn
     {'vim-pandoc/vim-criticmarkup'},                   -- syn
     {'manasthakur/vim-asyncmake', cmd = 'AsyncMake'},  -- syn
     {'tpope/vim-surround'}, -- func
     {'tmsvg/pear-tree'},    -- func
     {'elzr/vim-json'},      -- func
     {'sirver/ultisnips'},   -- func
     {'honza/vim-snippets'}, -- func
     {'junegunn/vim-easy-align',    cmd = 'Easy' },
     {'vim-test/vim-test',          cmd = 'TestNearest'},
     {'vim-scripts/SyntaxRange'},
     {'dhruvasagar/vim-table-mode', cmd = 'TableModeEnable' },
     {'vim-airline/vim-airline',    cmd = 'AirlineToggle'},
     {'sotte/presenting.vim',       cmd = 'PresentingStart'},
     {'rdnetto/YCM-Generator',      branch = 'stable'},
     {'fatih/vim-go',               ft = 'go'},
     {'nsf/gocode', tag = 'v.20150303', rtp = 'vim', ft = 'go'},
     {'vim-voom/VOoM',              cmd = 'VoomToggle'},
     {'tpope/vim-speeddating'},
     {'universal-ctags/ctags'},                       -- tag
     {'majutsushi/tagbar',          cmd = 'Tagbar'},  -- tag
     {'vim-scripts/taglist.vim',    cmd = 'Tlist'},   -- tag
     {'ctrlpvim/ctrlp.vim'},    -- search
     {'vim-scripts/utl.vim'},   -- ?
     { "tpope/vim-repeat", event = "VeryLazy" }, -- makes plugs dot-repeatable like leap
     {'JamshedVesuna/vim-markdown-preview', cmd = 'MdPreview'},
     {'dkarter/bullets.vim'},
     {'felipec/notmuch-vim', cmd = 'NotMuch'},
     {'pseewald/vim-anyfold', cmd = 'AnyFoldActivate'},
     {'Konfekt/FastFold'},
     { "dstein64/vim-startuptime",
     	cmd = "StartupTime",
       	config = function() vim.g.startuptime_tries = 10 end},
     -- TODO:
     -- ANALYZE ASTROVIM
     -- https://astronvim.com/Recipes/black_belt
     -- https://github.com/ThePrimeagen/harpoon
     -- DEBUGGING/TESTING
     -- https://github.com/michaelb/sniprun
     -- https://github.com/arjunmahishi/flow.nvim (snippets)
     -- https://github.com/nvim-neotest/neotest
     -- { "LazyVim/LazyVim", config = true,},
     -- TODO: switch limelight folke/twilight.nvim - based on treesitter
        -- ######################################################
     -- 'Shougo/vimproc.vim', {'do' : 'make'} " unite taskwarrior dep.
     -- "Plug 'shougo/unite.vim' "unite tw dep
     -- "Plug 'Shougo/denite.nvim' "unite replacement
     --{ "nvim-lua/plenary.nvim", lazy = true },   -- library used by other plugins
     -- { 'blakesweeney/unite-taskwarrior'}, "very interesting tool?
     -- {'/usr/bin/fzf'}, -- Specify path to fzf bin
     -- 'vim-pandoc/vim-pandoc', { 'for': ['markdown','tex'] }
     -- 'vim-pandoc/vim-pandoc', { 'for': ['tex'] }
     -- 'vim-pandoc/vim-pandoc-after'
     -- 'vim-pandoc/vim-pandoc-syntax'
     -- 'preservim/vim-markdown'
     -- 'vim-pandoc/vim-markdownfootnotes'
     -- "Plug 'mgor/vim-markdown-grip'
     -- 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
     -- 'conornewton/vim-latex-preview'
     -- 'yegappan/asyncmake' "errors
     -- 'chrisbra/NrrwRgn'
     -- "Plug 'https://github.com/ludovicchabant/vim-gutentags'
     -- ####################################################
     -- "Plug 'jremmen/vim-ripgrep'
     -- "Plug 'vim-scripts/ctags.vim'
     -- "Plug 'junegunn/vim-github-dashboard.git'
     -- "Plug 'rktjmp/git-info.vim'
     -- "Plug 'mhinz/vim-startify'
     -- "Plug 'hsitz/VimOrganizer'
     -- {'itchyny/calendar.vim', cmd = 'Calendar'},
     -- #######################################################
     --{'honza/writer.vim'}, -- focus
     --{'mikewest/vimroom', { 'on': 'VimroomToggle' } -- focus
     --{'amix/vim-zenroom' -- focus
     --{'amix/vim-zenroom2' -- focus
     -- "Plug 'kurkale6ka/vim-chess'
}

