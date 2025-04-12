local M = {}

M.syntax_toggle = function()
    if vim.fn.exists('g:syntax_on') == 1 then
        vim.cmd('syntax off')
    else
        vim.cmd('syntax enable')
    end
end

M.filetype_test = function()
    -- exclusion ft's
    local markdown_file_types = {
        'markdown',
        'Tagbar',
        'tex',
        'make',
        'vim',
        'markdownt'
    }
    local markdown_paths = { -- inclusion paths
        '^/data/u/d.*',
    }
    local markdown_paths_not = { -- exclusion paths
        '^/data/u/dp.*',
        '^/data/u/dp/\\..*',
        '^/data/u/da.*',
        '^/data/u/da/\\..*'
    }
    local markdown_cwd = { -- inclusion cwd's
        '^/data/u/d/.*$',
        --'^/data/.h/iao/.config.*$', 
        --'^/data/.h/iao/.local/bin.*'
    }
    -- Exclusion Filetypes
    for _, ft in ipairs(markdown_file_types) do
        if vim.bo.filetype == ft then
              return
        end
    end
    -- Inclusion paths
    for _, path in ipairs(markdown_paths) do
        if string.match(vim.fn.expand('%:p'), path) then
            vim.bo.filetype = 'markdown'
            vim.cmd('source $VIMDIR/syntax/markdown.vim')
            return
        end
    end
    --Check for paths from the CWD to set filetype markdown
    for _, path in ipairs(markdown_cwd) do
        if string.match(vim.fn.getcwd(), path) then
            vim.bo.filetype = 'markdown'
            --vim.cmd('source $VIMDIR/syntax/markdown.vim')
            return
        end
    end
end

--" markdown functions
--  
--function! OpenMarkdownPreview() abort
--    
--    "chatgpt version is in mdx.lua
--    if exists('s:markdown_job_id') && s:markdown_job_id > 0
--      call jobstop(s:markdown_job_id)
--      unlet s:markdown_job_id
--    endif
--    let available_port = system(
--      \ "lsof -s tcp:listen -i :40500-40800 | awk -F ' *|:' '{ print $10 }' | sort -n | tail -n1"
--      \ ) + 1
--    if available_port == 1 | let available_port = 40500 | endif
--    let s:markdown_job_id = jobstart('grip ' . shellescape(expand('%:p')) . ' :' . available_port)
--    if s:markdown_job_id <= 0 | return | endif
--    call system('open http://localhost:' . available_port)

--endfunction


--function! mdx#isAtStartOfLine(mapping) "start table mode from insert mode with __ or ||
--
--    let text_before_cursor = getline('.')[0 : col('.')-1]
--    let mapping_pattern = '\V' . escape(a:mapping, '\')
--    let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
--    return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
--
--endfunction


M.equal_width = function()
    local tab_cur = vim.fn.tabpagenr()
    vim.cmd.tabdo("set noequalalways equalalways")
    vim.cmd("wall")
    vim.cmd("tabnext " .. tab_cur)
    --wa - above to trigger bufwrite autocommands relating to reformatting
end


--function! mdx#WideMargin() " WIDE MARGINS
--  
--    setlocal number
--    setlocal numberwidth=20

--endfunction


--function! mdx#WideMarginToggle()
--
--    if &number  == 0
--        setlocal number
--        setlocal numberwidth=20
--    else 
--        setlocal nonumber
--    endif
--
--endfunction


--function! mdx#ToggleHiddenAll()
--    
--    if !exists("g:hidden_all")
--        let g:hidden_all = 0
--    endif
--    if g:hidden_all  == 0
--        let g:hidden_all = 1
--        set noshowmode
--        set noruler
--        "set laststatus=0
--        set noshowcmd
--    else
--        let g:hidden_all = 0
--        set showmode
--        set ruler
--        "set laststatus=2
--        set showcmd
--    endif

--endfunction
--
--
--function! mdx#HideAll()

--    let g:hidden_all = 1
--    set noshowmode
--    set noruler
--    "set laststatus=0
--    set noshowcmd
--    "call uix#MyTabLineCol()

--endfunction


--"#### writemode

M.write_mode_x = function()
    vim.cmd('vnew')
    vim.cmd('vertical resize 30')
    vim.cmd('setlocal winfixwidth')
    vim.cmd('wincmd =')
    vim.cmd('wincmd l')
end

M.write_mode_y = function()
    vim.cmd('vnew')
    vim.cmd('vertical resize 10')
    vim.cmd('setlocal winfixwidth')
    vim.cmd('wincmd =')
    vim.cmd('wincmd l')
end

M.write_mode_pad_right = function()
    --vim.cmd('vnew')
    vim.cmd('vert botright split padding')
    vim.cmd('vertical resize 40')
    vim.cmd('setlocal winfixwidth')
    vim.cmd('wincmd =')
    vim.cmd('wincmd h')
end

M.write_mode = function()
    vim.cmd('vnew')
    vim.cmd('vert botright split')
    vim.cmd('wincmd h')
    vim.cmd('vertical resize +55')
    vim.cmd('setlocal winfixwidth')
    vim.cmd('wincmd =')
end

M.write_mode_clean = function() vim.cmd('only') end

--function! mdx#ToggleWrite()
--
--    if !exists("t:write_mode")
--        let t:write_mode = 0
--    endif
--    if t:write_mode  == 0
--        let t:write_mode = 1
--        call mdx#WriteMode()
--    elseif t:write_mode == 1
--        let t:write_mode = 0
--        call mdx#WriteModeOff()
--    endif

--endfunction

--" TASKS
--" - [e] put in util?
--
--" set foldtext=
--"-- set foldtext=MyFoldText()
--"--"function MyFoldText()
--"--"  local line = vim.fn.getline(vim.v.foldstart)
--"--"  local sub = vim.fn.substitute(line, "\\v^(\\s*[^ \t]+).+", "\\1...", "")
--"--  -- sub = vim.fn.substitute(sub, "substring", "\\=highlight_submatch('Search', sub)", "g")
--"  -- return "  \u25BC " .. sub
--"--  return sub
--"--end
--
--"" TODO: wordcount function
--"" wordcount:
--"" system("wc -l ", shellescape(expand("%"))) . "l"
-- ""    --%b "b" t:" strftime('%d/%m %t')
--
-- "highlight EndOfBuffer 
--    "\ ctermfg=black guifg=black 
--    "\ ctermbg=black guibg=black
--
--"setlocal fillchars+=vert:\ 
--"setlocal fillchars+=vert:\ 
--"melighte

--local ucmd = vim.api.nvim_create_user_command
--ucmd('Oxp',
--    vim.fn['o#ox_p'](fargs[1]),
--    { nargs = '*' })
--ucmd('Odn',
--    vim.fn['o#ox_p']('dn/'),
--    { nargs = '*' })
-- convert below into above format
-- ucmd("command! -nargs=* Otk call o#ox_p('tk/')")
-- ucmd("command! -nargs=* Oa call o#oa()")
-- ucmd("command! -nargs=* Ob call o#ob()")
-- ucmd("command! -nargs=* Ods call o#ox_ds()")
-- vim.cmd("command! -nargs=* Ods call o#ox_p('dsao/')")
--"     - :hi VertSplit ctermfg=bg ctermbg=bg guifg=bg guibg=bg
--"     - alternative to 'fillchars' to hide window boundaries

return M
