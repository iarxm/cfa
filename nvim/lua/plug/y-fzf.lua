return { 'junegunn/fzf',          -- which fzf??
        -- {'/usr/bin/fzf',}, -- Specify path to fzf bin
        config = function()
            function s_build_quickfix_list(lines)
                vim.fn.setqflist(vim.fn.copy(lines):map(function(line) return { filename = line } end))
                vim.cmd("copen")
                vim.cmd("cc")
            end
            vim.g.fzf_action = {
              ["ctrl-q"] = s_build_quickfix_list,
              ["ctrl-t"] = "tab split",
              ["ctrl-x"] = "split",
              ["ctrl-v"] = "vsplit",
            }
            vim.g.fzf_colors = {
              fg = { "fg", "Normal" },
              bg = { "bg", "Normal" },
              hl = { "fg", "Comment" },
              ["fg+"] = { "fg", "CursorLine", "CursorColumn", "Normal" },
              ["bg+"] = { "bg", "CursorLine", "CursorColumn" },
              ["hl+"] = { "fg", "Statement" },
              info = { "fg", "PreProc" },
              border = { "fg", "Ignore" },
              prompt = { "fg", "Conditional" },
              pointer = { "fg", "Exception" },
              marker = { "fg", "Keyword" },
              spinner = { "fg", "Label" },
              header = { "fg", "Comment" },
            }
            vim.g.fzf_history_dir = "~/.local/share/fzf-history"
        end
}
