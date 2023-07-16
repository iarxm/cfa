return {
	-- https://github.com/theHamsta/nvim-dap-virtual-text
	-- ## NOTES
	-- refer to treesitter for that separately
	-- LSP CONFIGURING ##############################
	{ "VonHeikemen/lsp-zero.nvim",
		event = 'VeryLazy',
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-path" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{ "neovim/nvim-lspconfig",
		event = 'VeryLazy',
		ui = { -- TODO
			border = "single",
		}
	},
	{ "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		-- event = 'VeryLazy', use trouble instead?
  		config = function()
    		require("lsp_lines").setup()
  		end,
	},
	-- LINTING ######################################
	{ 'jose-elias-alvarez/null-ls.nvim',
		event = 'VeryLazy',
		-- also contains a formatter?
		-- alternative linter:
			-- https://github.com/jose-elias-alvarez/null-ls.nvim
	},
	{ "folke/trouble.nvim",
		-- PRETTY DIAGNOSTICS AND OTHER STUFF LIST
		event = 'VeryLazy',
		dependencies = { "nvim-tree/nvim-web-devicons" },
	   	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
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
    			    -- map to {} to remove a mapping, for example:
    			    -- close = {},
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
	-- DAP ##########################################
	-- DIAGNOSTICS 
	{ 'https://github.com/mfussenegger/nvim-dap',
		event = 'VeryLazy'
	},
	-- COMPLETION ####################################
	{ 'neoclide/coc.nvim' },
	{ "hrsh7th/nvim-cmp"},
	{ "gelguy/wilder.nvim", -- wilder popup menu design
		event = "VeryLazy",
		dependencies = {
			{ 'roxma/nvim-yarp' },
			{ 'roxma/vim-hug-neovim-rpc' },
		},
		config = function()
    			-- config goes here
			local wilder = require('wilder')
			wilder.set_option('renderer',
				wilder.popupmenu_renderer(
  					wilder.popupmenu_border_theme({
    						highlights = { border = 'Normal' },
    						border = 'single',
						-- min_height = '50%',
						max_height = '80%',
  					})
				)
			)
			wilder.set_option('pipeline', {
  				wilder.branch(
    					wilder.cmdline_pipeline({
      					language = 'vim', -- vim or python
      					fuzzy = 0,
      					-- 0 turns off fuzzy matching
      					-- 1 turns on fuzzy matching
      					-- 2 partial fuzzy matching (match does not have to begin with the same first letter)
						-- This makes it awkwardly sort files originally based on name length.
						-- Thus I don't have a nice alpha list. But its better in being able to find a file by typing fewer letters
						-- inetween sol? Where it doesnt fuzzy until after 1st letter?
 					}),
			    		wilder.python_search_pipeline({
			      		-- can be set to wilder#python_fuzzy_delimiter_pattern() for stricter fuzzy matching
      					pattern = wilder.python_fuzzy_pattern(),
					     -- omit to get results in the order they appear in the buffer
      					sorter = wilder.python_difflib_sorter(),
      					-- can be set to 're2' for performance, requires pyre2 to be installed
      					-- see :h wilder#python_search() for more details
      					engine = 're',
    					}),
    					wilder.python_file_finder_pipeline({
    				  		file_command = {'rg', '--files'},
						-- file_command = {'rg', '--files','--sort','path'},
    				  		-- file_command = {'fd', '-tf'},
      					-- file_command = {'find', '.', '-type', 'f', '-printf', '%P\n'},
      					-- to use fd      : {'fd', '-td'}
      					dir_command = {'find', '.', '-type', 'd', '-printf', '%P\n'},
      					-- use {'cpsm_filter'} for performance, requires cpsm vim plugin
      					-- found at https://github.com/nixprime/cpsm
      					filters = {'fuzzy_filter', 'difflib_sorter'},
   					})
    					-- wilder.cmdline_pipeline(),
    					-- wilder.python_search_pipeline()
 				),
			})
			wilder.setup({
				modes = {':','/', '?'},
				enable_cmdline_enter = '0', -- don't autostart on :, wait until 'tab'
			})
  			end,
	},
	--{'roxma/nvim-yarp'}, -- yet another remote plugin..
	-- VERSIONING ###################################
     { "kdheepak/lazygit.nvim",
		event = 'VeryLazy',
        	dependencies =  {
         	   "nvim-telescope/telescope.nvim",
         	   "nvim-lua/plenary.nvim"
     	},
     	config = function()
     		require("telescope").load_extension("lazygit")
        		end,
	},
}

