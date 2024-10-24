return { --language specific: markdown / tex / document related
    { 'jalvesaq/Nvim-R',            ft = 'rmarkdown'},    -- syn
    { 'vim-pandoc/vim-rmarkdown',   ft = 'rmarkdown'},    -- syn
    { 'vim-pandoc/vim-criticmarkup'},                     -- syn
    -- preview / present
    { 'sotte/presenting.vim',               cmd = 'MdxPresentingStart'},
    { 'JamshedVesuna/vim-markdown-preview', cmd = 'MdxPreview'},
    --
    { 'dhruvasagar/vim-table-mode',
        ft = {
            'markdown',
            'markdownt',
            'mdx',
            'text',
        },
        cmd = 'TableModeEnable'
    },
    { 'godlygeek/tabular', -- required?
        cmd = 'Tabularize'
    },
    -- vim-pandooc: mainly markdown and possibly tex
    { 'vim-pandoc/vim-pandoc',
        --ft = { 'markdown','tex' },
        config = function()
            vim.g.pandoc_filetypes_handled         = { "pandoc", "markdown" }
            vim.g.pandoc_modules_enabled           = { "toc" }
            vim.g.pandoc_filetypes_pandoc_markdown = 0
            vim.g.pandoc_toc_close_after_navigating = 1
            vim.g.pandoc_toc_position               = 1
            vim.g.pandoc_folding_fdc                = 0
            vim.g.pandoc_folding_level              = 4
            vim.g.pandoc_folding_mode               = "relative"
            vim.g.pandoc_folding_fold_yaml = 1
            vim.g.pandoc_folding_fold_div_classes = 1
            vim.g.pandoc_keyboard_sections_header_style = "atx"
            vim.g.pandoc_syntax_conceal_blacklist = { "atx", "titleblock" }
        end
    -- add as deps to vim-pandoc?
    -- { 'vim-pandoc/vim-pandoc-after',},
    -- { 'vim-pandoc/vim-pandoc-syntax',},
    -- { 'vim-pandoc/vim-markdownfootnotes',},
    }
}
    -- latex / tex
    -- { 'xuhdev/vim-latex-live-preview', { 'for': 'tex' },},
    -- { 'newton/vim-latex-preview',},
    -- markdown
    -- { 'preservim/vim-markdown',},
    -- { 'mgor/vim-markdown-grip',},

