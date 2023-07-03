local builtin = require('telescope.builtin')
--vim.keymap.set('n', '<leader>ff', builtin.find_files, {}),
	--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}),
	--vim.keymap.set('n', '<leader>fb', builtin.buffers, {}),
	--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}),

return {
	'nvim-telescope/telescope.nvim',
    	tag = '0.1.1',
	-- or                              , branch = '0.1.1',
    	event = "VeryLazy",
     dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{';ff', builtin.find_files },
		{';fg', builtin.live_grep },
		{';fb', builtin.buffers },
		{';fh', builtin.help_tags },
	},
	defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    		mappings = {
      	i = {
        	-- map actions.which_key to <C-h> (default: <C-/>)
        	-- actions.which_key shows the mappings for your picker,
        	-- e.g. git_{create, delete, ...}_branch for the git_branches picker
        		["<C-h>"] = "which_key"
      }
    }
  },
  pickers = { -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ..
    -- }
	find_files = {
    	  follow = 'true',
    	},

  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
