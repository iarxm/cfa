return {
  'dhruvasagar/vim-table-mode',
  ft = { 'markdown', 'markdownt', 'mdx', 'text' },
  cmd = 'TableModeEnable',
  config = function()
    vim.g.table_mode_corner = '|'
    vim.g.table_mode_syntax = 0
  end,
}
