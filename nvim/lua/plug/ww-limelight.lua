return {
    'junegunn/limelight.vim',
        cmd = 'Limelight',
        config = function()
            vim.g.limelight_conceal_ctermfg  = "gray"
            vim.g.limelight_default_coefficient = 0.85
            vim.g.limelight_paragraph_span = 1
            vim.g.limelight_bop = "^\\s"
            vim.g.limelight_eop = "\\ze\\n^\\s"
            vim.g.limelight_priority = -1
            vim.g.lite_dfm_left_offset = 16
            vim.g.lite_dfm_keep_ruler = 1
        end
}
