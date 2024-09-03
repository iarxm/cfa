return {
     {'felipec/notmuch-vim', cmd = 'NotMuch'},

     {'tbabej/taskwiki',
          lazy = true,
          cmd = 'Taskwiki',
          dependencies = {
               "vim-taskwarrior",
               "vimwiki",
               "vim-plugin-AnsiEsc"},
     },
     {'vimwiki/vimwiki',
          lazy = true,
          ft = "wiki"
     },
     {'blindFS/vim-taskwarrior', cmd = 'TW' },

     {'tpope/vim-obsession',      cmd = 'Obsession'},-- Session Management


     -- write
     {'folke/lazy.nvim',         version = "*" },           -- focus?
     {'junegunn/limelight.vim',   cmd = 'Limelight'},        -- focus/write
     {'bilalq/lite-dfm',          cmd = 'LiteDFMToggle' },   -- focus/write
     {'junegunn/goyo.vim',        cmd = 'Goyo' },            -- focus/write
     {'Dotrar/nvim-writeonly'},           -- write only mode (forced insert)
     {'gabenespoli/vim-mutton',   cmd = 'MuttonToggle' },    -- focus/write


}
