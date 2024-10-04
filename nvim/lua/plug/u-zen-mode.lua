return {
    "folke/zen-mode.nvim",
        event = 'VeryLazy',
        cmd = 'ZenMode',
        opts = {
            window = {
                backdrop = 0.9, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
                width = 85, -- width of the Zen window
                height = 0.9, -- height of the Zen window
                options = {
                  -- signcolumn = "no", -- disable signcolumn
                  -- number = false, -- disable number column
                  -- relativenumber = false, -- disable relative numbers
                  -- cursorline = false, -- disable cursorline
                  -- cursorcolumn = false, -- disable cursor column
                  -- foldcolumn = "0", -- disable fold column
                  -- list = false, -- disable whitespace characters
                },
            },
            plugins = {
                   -- disable some global vim options (vim.o...)
                options = {
                   enabled = true,
                   ruler = false, -- disables the ruler text in the cmd line area
                   showcmd = false, -- disables the command in the last line of the screen
                },
                twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
                gitsigns = { enabled = false }, -- disables git signs
                tmux     = { enabled = false }, -- disables the tmux statusline
                kitty    = { -- - required kitty opts: allow_remote_control socket-only. listen_on unix:/tmp/kitty
                    enabled = false,
                    font = "+4", -- font size increment
                },
                alacritty = { -- requires Alacritty v0.10.0+. uses `alacritty msg` to chng font
                    enabled = false,
                    font = "14", -- font size
                },
                wezterm = {
                 enabled = false,
                 -- can be either an absolute font size or the number of incremental steps
                 font = "+4", -- (10% increase per step)
                   },
            },
            -- callback where you can add custom code when the Zen window opens
            on_open = function(win)
                vim.cmd('setlocal filetype='..vim.bo.filetype)
                end,
            -- callback where you can add custom code when the Zen window closes
            on_close = function()
                end,
    },
}
