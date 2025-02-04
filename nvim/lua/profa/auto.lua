vim.api.nvim_create_augroup(
    'COLORS',
    { clear = true }
)
vim.api.nvim_create_autocmd(
    { "ColorScheme"},
    { pattern = "*",
        group = "COLORS",
        command = 'runtime $COLORS_BLACK'
    }
)
vim.api.nvim_create_autocmd(
    {'VimEnter'},
    { group = "COLORS",
        command = vim.cmd.colorscheme(vim.env.COLORS_VIM)
    }
)
vim.api.nvim_create_augroup(
    'WORKING',
    { clear = true }
)
vim.api.nvim_create_autocmd(
    {'VimEnter'},
    { group = "WORKING",
        callback = function()
            --require("mdx").hide_all() -- TASK: update to above
        end
    }
)
vim.api.nvim_create_autocmd(
    "BufWritePost",
    { group = "WORKING",
        command = 'redraw',
    }
)
vim.api.nvim_create_autocmd(
    "BufWritePost",
    { group = "WORKING",
        command = 'echom " "'
    }
)
vim.api.nvim_create_user_command('Zen', 'ZenMode', {})
vim.api.nvim_create_user_command('Z',   'ZenMode', {})
vim.api.nvim_create_user_command('Gpt', 'ChatGPT', {})

-- command = 'echom "\"" . expand("%") . "\"" wordcount().words . "w"'})
--vim.api.nvim_create_autocmd("TabEnter", {
--	group = "WORKING",
--	command = "call uix#ToggleSlineTrig()"})
--local auc            = vim.api.nvim_create_autocmd      -- auto command
--local aug            = vim.api.nvim_create_augroup      -- auto group
-- task: move to relevant plugin sections-
-- user commands


-- g:colors_name sometimes prints the parent colorscheme but not the sub scheme (eg kanagawa-wave is saved as 'kanagawa'), then goyo causes issues. Add 'COLORS_VIM' to goyo_leave
-- kanagawa-wave tokyonight-night tokyonight rosebones catppuccin-mocha catppuccin-frappe catppuccini zenbones kanagawa-dragon eldar rose-pine simpleblack vividchalk murphy
--vim.highlight.VertSplit cterm=NONE
