return { -- write
    {
    'junegunn/limelight.vim',
        cmd = 'Limelight',
        config = function()
            vim.g.limelight_conceal_ctermfg  = "gray"
            vim.g.limelight_default_coefficient = 0.85
            vim.g.limelight_paragraph_span = 1
            vim.g.limelight_bop = "^\\s"
            vim.g.limelight_eop = "\\ze\\n^\\s"
            vim.g.limelight_priority = -1
            vim.g.lite_dfm_left_offset = 16
            vim.g.lite_dfm_keep_ruler = 1
        end
    },
    {
        'gabenespoli/vim-mutton',
        cmd = 'MuttonToggle',
        init = function()
            vim.api.nvim_set_keymap('n', '<silent> <C-w><C-e>',  ':MuttonToggle()<CR>', { noremap = true })
            --nnoremap <silent> <C-w>eh     :MuttonToggle('left')<CR>
            --nnoremap <silent> <C-w>el     :MuttonToggle('right')<CR>
            --nnoremap <silent> <leader>t :MuttonToggle('tagbar')<CR>
            --nnoremap <silent> <leader>n :MuttonToggle('nerdtree')<CR>
            --nnoremap <silent> <leader>b :MuttonToggle('buffergator')<CR>
            end,
        config = function()
            vim.g.mutton_min_center_width = "88"
            end,
    },
    { 'bilalq/lite-dfm',          cmd = 'LiteDFMToggle' },   -- focus/write
    { 'junegunn/goyo.vim',        cmd = 'Goyo' },            -- focus/write
    -- important:
    { 'Dotrar/nvim-writeonly'},           -- write only mode (forced insert)
}
