-- TODO:
-- ANALYZE ASTROVIM
-- https://astronvim.com/Recipes/black_belt
-- https://github.com/ThePrimeagen/harpoon
-- 
-- DEBUGGING/TESTING
-- https://github.com/michaelb/sniprun
-- https://github.com/arjunmahishi/flow.nvim (snippets)
-- https://github.com/nvim-neotest/neotest
return {
  -- exp
  --
  { "scateu/tsv_edl.vim",
  	cmd = "Edl",},
  -- focus
  { "folke/lazy.nvim", version = "*" },
  -- { "LazyVim/LazyVim", config = true,},
    -- ##################################################
  -- ## WRITING MODE ##################################
  -- TODO: switch limelight folke/twilight.nvim - based on treesitter
  {'junegunn/limelight.vim', cmd = 'Limelight'},
  {'bilalq/lite-dfm', cmd = 'LiteDFMToggle' },
  {'junegunn/goyo.vim', cmd = 'Goyo' },
  {'https://github.com/Dotrar/nvim-writeonly'},
  		-- write only mode (forced insert)
	--==== distraction free ============
	--Plug 'honza/writer.vim'
	--Plug 'mikewest/vimroom', { 'on': 'VimroomToggle' }
	--Plug 'amix/vim-zenroom'
	-- Plug 'amix/vim-zenroom2'
  {'gabenespoli/vim-mutton', cmd = 'MuttonToggle' },
  -- task management
  	-- 'blakesweeney/unite-taskwarrior' "very interesting tool?
  {'blindFS/vim-taskwarrior', cmd = 'TW'},
  {'tbabej/taskwiki', cmd = 'Taskwiki'},
  {'itchyny/calendar.vim', cmd = 'Calendar'},
  -- Session Management
  {'tpope/vim-obsession', cmd = 'Obsession'},
  -- File Explorers
  {'cocopon/vaffle.vim', cmd = 'Vaffle'},
  {'mcchrish/nnn.vim', cmd = 'NnnExplorer'},
  -- {'/usr/bin/fzf'}, -- Specify path to fzf bin
  {'junegunn/fzf'}, -- which fzf??
  -- Syntax
  {'godlygeek/tabular', cmd = 'Tabularize'},
  {'vim-pandoc/vim-rmarkdown', ft = 'rmarkdown'},
  {'jalvesaq/Nvim-R', ft = 'rmarkdown'},
  {'vim-pandoc/vim-criticmarkup'},
  {'manasthakur/vim-asyncmake', cmd = 'AsyncMake'},
  -- 'vim-pandoc/vim-pandoc', { 'for': ['markdown','tex'] }
  -- 'vim-pandoc/vim-pandoc', { 'for': ['tex'] }
  -- 'vim-pandoc/vim-pandoc-after'
  -- 'vim-pandoc/vim-pandoc-syntax'
  -- 'preservim/vim-markdown'
  -- 'vim-pandoc/vim-markdownfootnotes'
  -- 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
  -- 'conornewton/vim-latex-preview'
  -- 'yegappan/asyncmake' "errors
  -- Functionality ####################################
  {'tpope/vim-surround'},
  {'tmsvg/pear-tree'},
  {'elzr/vim-json'},
  {'sirver/ultisnips'},
  {'honza/vim-snippets'},
  {'junegunn/vim-easy-align'},
  {'vim-test/vim-test', cmd = 'TestNearest'},
  {'vim-scripts/SyntaxRange'},
  {'dhruvasagar/vim-table-mode', cmd = 'TableModeEnable' },
  -- Others (Add more as needed)
  -- 'Shougo/vimproc.vim', {'do' : 'make'} " unite taskwarrior dep.
  -- "Plug 'shougo/unite.vim' "unite tw dep
  -- "Plug 'Shougo/denite.nvim' "unite replacement
  {'vim-airline/vim-airline', cmd = 'AirlineToggle'},
  {'sotte/presenting.vim', cmd = 'PresentingStart'},
  {'rdnetto/YCM-Generator', branch = 'stable'},
  {'fatih/vim-go', ft = 'go'},
  {'nsf/gocode', tag = 'v.20150303', rtp = 'vim', ft = 'go'},
  {'vim-voom/VOoM', cmd = 'VoomToggle'},
  {'tpope/vim-speeddating'},
  -- 'chrisbra/NrrwRgn'
  -- "Plug 'https://github.com/ludovicchabant/vim-gutentags'
  -- Tags
  {'universal-ctags/ctags'},
  {'majutsushi/tagbar', cmd = 'Tagbar'},
  {'vim-scripts/taglist.vim', cmd = 'Tlist'},
  -- Search
  {'ctrlpvim/ctrlp.vim'},
  {'tpope/vim-repeat'},
  {'vim-scripts/utl.vim'},
  -- "Plug 'jremmen/vim-ripgrep'
  -- "Plug 'vim-scripts/ctags.vim'
  -- "Plug 'junegunn/vim-github-dashboard.git'
  -- "Plug 'rktjmp/git-info.vim'
  -- "Plug 'mhinz/vim-startify'
  -- "Plug 'hsitz/VimOrganizer'
  -- New Plugins
  {'JamshedVesuna/vim-markdown-preview', cmd = 'MdPreview'},
  -- "Plug 'mgor/vim-markdown-grip'
  {'dkarter/bullets.vim'},
  {'felipec/notmuch-vim', cmd = 'NotMuch'},
  {'pseewald/vim-anyfold', cmd = 'AnyFoldActivate'},
  {'Konfekt/FastFold'},
	-- "Plug 'kurkale6ka/vim-chess'
  { "dstein64/vim-startuptime",
  	cmd = "StartupTime",
    	config = function() vim.g.startuptime_tries = 10 end},
  { "nvim-lua/plenary.nvim", lazy = true }, -- library used by other plugins
  { "tpope/vim-repeat", event = "VeryLazy" }, -- makes some plugins dot-repeatable like leap
-----
-- END
}

