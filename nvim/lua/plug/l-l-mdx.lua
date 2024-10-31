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
        cmd = 'TableModeEnable',
        config = function()
            vim.g.table_mode_corner  = "|"
            vim.g.table_mode_syntax = 0
        end
    },
    { 'godlygeek/tabular', -- required?
        cmd = 'Tabularize'
    },
    -- vim-pandooc: mainly markdown and possibly tex
    { 'vim-pandoc/vim-pandoc',
        --ft = { 'markdown','tex' },
        -- add as deps to vim-pandoc?
            -- { 'vim-pandoc/vim-pandoc-after',},
            -- { 'vim-pandoc/vim-pandoc-syntax',},
            -- { 'vim-pandoc/vim-markdownfootnotes',},
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
    },
    { "lervag/vimtex",
        lazy = false,
        init = function() -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
            --vim.g.vimtex_compiler_progname = "nvr"
        end
    }
}
    -- latex / tex
    -- { 'xuhdev/vim-latex-live-preview', { 'for': 'tex' },},
    -- { 'newton/vim-latex-preview',},
    -- markdown
    -- { 'preservim/vim-markdown',
            -- config = function()
                --vim.g.vim_markdown_folding_level       = 5
                --vim.g.vim_markdown_preview_browser = "qtc.win"
                --vim.g.vim_markdown_preview_use_xdg_open = 1
                --vim.g.vim_markdown_preview_github = 1
            --end
    -- },
    -- { 'mgor/vim-markdown-grip',},
    -- g.markdown_folding = 4

