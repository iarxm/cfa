return {
    'majutsushi/tagbar',
        cmd = 'Tagbar',
        config = function()
            vim.g.tagbar_compact              = 1
            vim.g.tagbar_indent               = 1
            vim.g.tagbar_show_data_type       = 1
            vim.g.tagbar_position             = "topleft vertical"
            vim.g.tagbar_width                = "25"
            vim.g.tagbar_sort                 = 0
            vim.g.tagbar_type_markdown = {
                ctagstype = "markdown",
                kinds = {
                    "h:heading",
                    "c:chapter",
                    "s:section",
                    "S:subsection",
                    "t:subsubsection",
                    "T:l4subsection",
                    "u:l5subsection",
                    "x:xheads:4",
                    "y:todo:5"
                },
            }
            vim.g.tagbar_type_markdownt = {
                tagbar_sort = "0",
                ctagstype = "markdownt",
                kinds = {
                    --"h:heading",
                    "c:h:heading:chapter",
                    "s:section",
                    "S:subsection",
                    "x:xheads:4",
                    "o:todo"
                },
            }
        end
}
