return {
  'vim-pandoc/vim-pandoc',
  config = function()
    vim.g.pandoc_filetypes_handled = { 'pandoc', 'markdown' }
    vim.g.pandoc_modules_enabled = { 'toc' }
    vim.g.pandoc_filetypes_pandoc_markdown = 0
    vim.g.pandoc_toc_close_after_navigating = 1
    vim.g.pandoc_toc_position = 1
    vim.g.pandoc_folding_fdc = 0
    vim.g.pandoc_folding_level = 4
    vim.g.pandoc_folding_mode = 'relative'
    vim.g.pandoc_folding_fold_yaml = 1
    vim.g.pandoc_folding_fold_div_classes = 1
    vim.g.pandoc_keyboard_sections_header_style = 'atx'
    vim.g.pandoc_syntax_conceal_blacklist = { 'atx', 'titleblock' }
  end,
}
