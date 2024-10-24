return {
    {
    'tbabej/taskwiki',
        cmd = 'Taskwiki',
        ft = {
             --'markdownt',
             'wiki'
         },
         dependencies = {
              "vim-taskwarrior",
              "vimwiki",
              "vim-plugin-AnsiEsc"},
    },
    {
    'vimwiki/vimwiki',
        ft = "wiki",
        --init = { }
    }
}
