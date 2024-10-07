-- 'after' directory is required. Another file in the runtime directory was
-- overiding the options in this file, when sourced from ftplugin alone..
vim.wo.spell                 = true
vim.bo.spelllang             = 'en' -- TODO: download en_gb or en_uk
vim.opt.formatoptions:append({'aw'})

