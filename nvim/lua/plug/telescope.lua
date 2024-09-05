local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<leader>ff', builtin.find_files, {}),
--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}),
--vim.keymap.set('n', '<leader>fb', builtin.buffers, {}),
--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {}),

return {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
	    {';ff', builtin.find_files },
		{';fg', builtin.live_grep },
		{';fb', builtin.buffers },
		{';fh', builtin.help_tags },},
	defaults = {
        mappings = {
            i = { -- map actions.which_key to <C-h> (default: <C-/>)
                ["<C-h>"] = "which_key",
            },}
    },
    pickers = { -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value, ..
        -- }
	    find_files = {
    	    follow = 'true',
        },
    },
    extensions = { -- check readme for ext configs
        -- extension_name = {
        --   extension_config_key = value,
        -- }
  }
}
