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
}
    -- latex / tex
    -- { 'xuhdev/vim-latex-live-preview', { 'for': 'tex' },},
    -- { 'newton/vim-latex-preview',},
    -- vim-pandooc: mainly markdown and possibly tex
    -- { 'vim-pandoc/vim-pandoc', { 'for': ['markdown','tex'] },},
    -- { 'vim-pandoc/vim-pandoc-after',},
    -- { 'vim-pandoc/vim-pandoc-syntax',},
    -- { 'vim-pandoc/vim-markdownfootnotes',},
    -- markdown
    -- { 'preservim/vim-markdown',},
    -- { 'mgor/vim-markdown-grip',},

