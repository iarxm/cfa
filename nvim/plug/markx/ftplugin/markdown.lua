--vim.wo.spell           = true
vim.bo.autoindent      = true
vim.wo.breakindent     = true
vim.wo.breakindentopt  = 'shift:3' --shifts the softwrapped lines with extra indent
vim.wo.conceallevel    = 2
--vim.cmd('silent! TableModeEnable')
vim.cmd('runtime syntax/markdown.vim')

if vim.fn.getline(1) == "---" then
            vim.cmd('1,/^---$/fold')
end

