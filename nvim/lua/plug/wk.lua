
return {
  {"folke/which-key.nvim",
  	event = "VimEnter",
  	--event = "VeryLazy",
  	init = function()
    		vim.o.timeout = true
    		vim.o.timeoutlen = 300
  		end,
  	opts = {
  },
  },
}
