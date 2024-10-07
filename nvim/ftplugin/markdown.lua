--vim.wo.spell           = true
vim.bo.autoindent      = true
vim.wo.breakindent     = true
vim.wo.breakindentopt  = 'shift:3' --shifts the softwrapped lines with extra indent
vim.wo.conceallevel    = 2
vim.cmd('silent! TableModeEnable')
vim.cmd('source $VIMDIR/syntax/markdown.vim')

-- Automatically fold YAML front matter in markdown files
vim.api.nvim_create_autocmd({"BufReadPost"}, {
    pattern = "*.md",
    callback = function()
        --vim.cmd('echom "hello"')
        vim.cmd('1,/^---$/fold')
        --if vim.api.search('^---$', 'nw') == 1 then
        --    vim.cmd('1,/^---$/fold')
        --end
    end
})
