return {
    'junegunn/goyo.vim',       -- focus/write
        cmd = 'Goyo',
        config = function()
            vim.g.goyo_width = '100'
            vim.g.goyo_height = '85%'
            vim.g.goyo_linenr = '0'
            local function goyo_enter()
                vim.api.nvim_clear_autocmds({ group = 'goyo', event = 'TabLeave' })
                if vim.fn.executable('tmux') == 1 and vim.fn.strlen(vim.env.TMUX) > 0 then
                    vim.fn.system('tmux set status off')
                    if vim.fn.system('tmux list-panes -F "#F"'):find('Z') ~= nil then
                        vim.fn.system('tmux resize-pane -Z')
                    end
                end
                vim.cmd('set noshowmode')
                vim.cmd('set noshowcmd')
                vim.cmd('set scrolloff=999')
                --vim.cmd('Limelight')
            end
            local function goyo_leave()
                if vim.fn.executable('tmux') == 1 and vim.fn.strlen(vim.env.TMUX) > 0 then
                    vim.fn.system('tmux set status on')
                    if vim.fn.system('tmux list-panes -F "#F"'):find('Z') ~= nil then
                        vim.fn.system('tmux resize-pane -Z')
                    end
                end
                vim.cmd.colorscheme(vim.env.COLORS_VIM)
                --vim.cmd.colorscheme("kanagawa-wave")
                -- Uncomment the following lines if you want to restore hidden state, syntax, and Limelight
                -- vim.cmd('silent call mdx#ToggleHiddenAll()')
                -- vim.cmd('silent syntax on')
                -- vim.cmd('silent Limelight!')
            end
            vim.api.nvim_create_autocmd( 'User', {
                pattern = 'GoyoEnter',
                nested = true,
                callback = goyo_enter,
            })
            vim.api.nvim_create_autocmd( 'User', {
                pattern = 'GoyoLeave',
                nested = true,
                callback = goyo_leave,
            })
        end
}
