return {
  'vim-scripts/taglist.vim',
  cmd = 'Tlist',
  config = function()
    vim.g.tlist_markdown_settings = 'markdown;h:heading;s:section;S:subsection;o:todo'
    vim.g.Tlist_Auto_Highlight_Tag = 1
    vim.g.Tlist_Highlight_Tag_On_BufEnter = 1
    vim.g.Tlist_Auto_Update = 1
    vim.g.Tlist_Compact_Format = 1
    vim.g.Tlist_Enable_Fold_Column = 0
    vim.g.Tlist_Display_Prototype = 1
  end,
}
