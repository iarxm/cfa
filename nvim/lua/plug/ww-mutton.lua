return  {
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
}
