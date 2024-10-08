return {
    {
    'tbabej/taskwiki',
        lazy = true,
        cmd = 'Taskwiki',
        ft = {
             'markdownt',
             'wiki'
         },
         dependencies = {
              "vim-taskwarrior",
              "vimwiki",
              "vim-plugin-AnsiEsc"},
    },
    {
    'vimwiki/vimwiki',
        lazy = true,
        ft = "wiki",
        --init = { }
    }
}
