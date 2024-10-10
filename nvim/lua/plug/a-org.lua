return {
    { 'felipec/notmuch-vim', cmd = 'NotMuch'},
    -- tasks ###########################################
    {
    'blindFS/vim-taskwarrior',
        cmd = 'TW',
        config = function()
            vim.g.task_rc_override = 'defaultwidth=999'
            vim.g.task_info_vsplit = 1
        end
    },

}
