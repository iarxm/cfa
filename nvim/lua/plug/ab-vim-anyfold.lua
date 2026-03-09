return {
  'pseewald/vim-anyfold',
  cmd = 'AnyFoldActivate',
  config = function()
    vim.g.anyfold_fold_comments = 1
  end,
}
