return {
    'goolord/alpha-nvim',
        --lazy = 'false',
        --event = "VimEnter",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'modu.art_zzz'.opts)
            -- require'modules.art_futuresurf'.section.footer.val = require'alpha.fortune'()
            -- require'modules.art_futuresurf'.section.buttons.val = require'alpha.fortune'()
            require'modu.art_zzz'.section.footer.val = require'alpha.fortune'()
        end,
        -- opts = { require'alpha.themes.dashboard'.config },
        -- startify.nvim_web_devicons.highlight = false
}
