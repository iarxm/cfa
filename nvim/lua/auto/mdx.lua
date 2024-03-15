-- what is most efficient way to load this file?
vim.g.mdtest = function()
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

--#############################################333
--local ucmd = vim.api.nvim_create_user_command
--ucmd('Oxp',
--	vim.fn['o#ox_p'](fargs[1]),
--	{ nargs = '*' })
--ucmd('Odn',
--	vim.fn['o#ox_p']('dn/'),
--	{ nargs = '*' })
-- convert below into above format
-- ucmd("command! -nargs=* Otk call o#ox_p('tk/')")
-- ucmd("command! -nargs=* Oa call o#oa()")
-- ucmd("command! -nargs=* Ob call o#ob()")
-- ucmd("command! -nargs=* Ods call o#ox_ds()")
-- vim.cmd("command! -nargs=* Ods call o#ox_p('dsao/')")
-- new items -----------------------------------------

