return {'goolord/alpha-nvim',
    	lazy = 'false',
    	event = "VimEnter",
    	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
     	require'alpha'.setup(require'modules.art_futuresurf'.opts)
		require'modules.art_futuresurf'.section.footer.val = require'alpha.fortune'()
     	end,
    	-- opts = { require'alpha.themes.dashboard'.config },
	-- startify.nvim_web_devicons.highlight = false
}
