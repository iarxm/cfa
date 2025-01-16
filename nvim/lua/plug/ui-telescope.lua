return {
    'nvim-telescope/telescope.nvim',
        event = "VeryLazy",
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            {';ff', require('telescope.builtin').find_files },
            {';fg', require('telescope.builtin').live_grep },
            {';fb', require('telescope.builtin').buffers },
            {';fh', require('telescope.builtin').help_tags },
        },
        defaults = {
            mappings = {
                i = { -- map actions.which_key to <C-h> (default: <C-/>)
                    ["<C-h>"] = "which_key",
                },
            }
        },
        pickers = {
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
