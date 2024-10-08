return {
    {
    "emmanueltouzery/decisive.nvim", -- csv mode
        config = function()
            require('decisive').setup{}
            end,
        ft = {'csv'},
        keys = {
            { '<leader>cca', ":lua require('decisive').align_csv({})<cr>",       { silent = true }, desc = "Align CSV",          mode = 'n' },
            { '<leader>ccA', ":lua require('decisive').align_csv_clear({})<cr>", { silent = true }, desc = "Align CSV clear",    mode = 'n' },
            { '[c', ":lua require('decisive').align_csv_prev_col()<cr>",         { silent = true }, desc = "Align CSV prev col", mode = 'n' },
            { ']c', ":lua require('decisive').align_csv_next_col()<cr>",         { silent = true }, desc = "Align CSV next col", mode = 'n' },}
    },
    {
    'cameron-wags/rainbow_csv.nvim', -- csv mode
        config = true,
        ft = {
            'csv',
            'tsv',
            'csv_semicolon',
            'csv_whitespace',
            'csv_pipe',
            'rfc_csv',
            'rfc_semicolon'
        },
        cmd = {
            'RainbowDelim',
            'RainbowDelimSimple',
            'RainbowDelimQuoted',
            'RainbowMultiDelim'}
    },
}
