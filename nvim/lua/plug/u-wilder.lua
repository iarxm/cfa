return {
    "gelguy/wilder.nvim", -- wilder popup menu design
        event = "VeryLazy",
        dependencies = {
            { 'roxma/nvim-yarp' },
            { 'roxma/vim-hug-neovim-rpc' },
        },
        config = function()
            local wilder = require('wilder')
            wilder.set_option(
                'renderer',
                wilder.popupmenu_renderer(
                    wilder.popupmenu_border_theme({
                        highlights = { border = 'Normal' },
                        border = 'single',
                        -- min_height = '50%',
                        max_height = '80%',
                    })
                )
            )
            wilder.set_option(
                'pipeline',
                { wilder.branch(
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
                ),}
            )
            wilder.setup({
                modes = {':','/', '?'},
                enable_cmdline_enter = '0', -- don't autostart on :, wait until 'tab'
            })
        end,
}
