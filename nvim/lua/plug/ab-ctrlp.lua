return {
  'ctrlpvim/ctrlp.vim',
  config = function()
    vim.g.ctrlp_map = '<c-p>'
    vim.g.ctrlp_cmd = 'CtrlP'
    vim.g.ctrlp_extensions = { 'tag', 'buffertag', 'dir', 'undo', 'line', 'mixed', 'bookmarkdir' }
  end,
}
