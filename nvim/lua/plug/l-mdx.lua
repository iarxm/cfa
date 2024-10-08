return { --language specific: markdown related
    { 'jalvesaq/Nvim-R',            ft = 'rmarkdown'},    -- syn
    { 'vim-pandoc/vim-rmarkdown',   ft = 'rmarkdown'},    -- syn
    { 'vim-pandoc/vim-criticmarkup'},                     -- syn
    -- preview / present
    { 'sotte/presenting.vim',       cmd = 'MdxPresentingStart'},
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
    { 'godlygeek/tabular', -- syn; required?
        cmd = 'Tabularize'
    },
}
