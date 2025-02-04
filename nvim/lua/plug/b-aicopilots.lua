
-- ## others:
-- https://github.com/dpayne/CodeGPT.nvim
-- https://github.com/Bryley/neoai.nvim
local gpt_configs = { -- chatgpt.nvim
	api_key_cmd = "pass openai.com/future@iarom.org/key",
    	yank_register = "+",
    	edit_with_instructions = {
    		diff = false,
    		keymaps = {
    			accept = "<C-y>",
    			toggle_diff = "<C-d>",
    			toggle_settings = "<C-o>",
    			cycle_windows = "<Tab>",
    			use_output_as_input = "<C-i>",
    		},
    	},
    	chat = {
		-- welcome_message = WELCOME_MESSAGE,
    		-- welcome_message = YO,
    		welcome_message = "construct Z entropy systems",
    		loading_text = "ai copilot ready",
    		question_sign = "?",
    		answer_sign = "Z.",
    		max_line_length = 120,
    		sessions_window = {
			border = {
   		  		style = "rounded",
		    		text = { top = " Sessions ",},
    			},
    			win_options = {
    				winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    			},
    		},
    		keymaps = {
 	   		close = { "<C-c>" },
	    		yank_last = "<C-y>",
	    		yank_last_code = "<C-k>",
	    		scroll_up = "<C-u>",
	    		scroll_down = "<C-d>",
	    		new_session = "<C-n>",
	    		cycle_windows = "<Tab>",
	    		cycle_modes = "<C-f>",
	    		select_session = "<Space>",
	    		rename_session = "r",
	    		delete_session = "d",
	    		draft_message = "<C-d>",
	    		toggle_settings = "<C-o>",
	    		toggle_message_role = "<C-r>",
	    		toggle_system_role_open = "<C-s>",
    		},
	},
    	-- ###########################################
    	-- ## WINDOWS AND LAYOUTS #####################
	popup_layout = {
    		default = "center",
    		center = {
    			-- width = "50%",
    			width = "90%",
    			height = "90%",
    		},
    		right = {
 	   		width = "50%",
	    		width_settings_open = "50%",
		},
    	},
    	popup_window = {
		border = {
  			highlight = "FloatBorder",
  			style = "rounded",
  			text = { top = " ChatGPT ",},
		},
		win_options = {
  			wrap = true,
  			linebreak = true,
  			foldcolumn = "1",
  			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},
		buf_options = { filetype = "markdown",},
	},
	system_window = {
		border = {
  			highlight = "FloatBorder",
  			style = "rounded",
  			text = { top = " SYSTEM ",},
		},
      	win_options = {
        		wrap = true,
        		linebreak = true,
        		foldcolumn = "2",
        		winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      	},
	},
	popup_input = {
      	prompt = "  ",
      	border = {
        		highlight = "FloatBorder",
        		style = "rounded",
        		text = {
          		top_align = "center",
          		top = " Prompt ",
        		},
      	},
      	win_options = {
        		winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      	},
      	submit = "<C-Enter>",
      	submit_n = "<Enter>",
	},
    	settings_window = {
     	border = {
        	style = "rounded",
     	text = { top = " Settings ",},
      	},
     win_options = { winhighlight = "Normal:Normal,FloatBorder:FloatBorder",},
    },
    -- #############################################
    -- PARAMS ######################################
	openai_params = {
 		model = "gpt-3.5-turbo-instruct", -- "gpt-4"
 		frequency_penalty = 0,
 		presence_penalty = 0,
 		-- max_tokens = 600,
		-- WATCH I DONT ACCIDENTALLY RUN 'completecode' on a file thats huge
		max_tokens = 500,
 		temperature = 0,
 		top_p = 1,
 		n = 1,
	},
	openai_edit_params = {
 		model = "gpt-4-0613",
 		temperature = 0,
 		top_p = 1,
 		n = 1,
	},
	actions_paths = {},
	show_quickfixes_cmd = "Trouble quickfix",
	predefined_chat_gpt_prompts = "https://raw.githubusercontent.com/f/awesome-chatgpt-prompts/main/prompts.csv",
}

-- RUN #################################################
return { 
     {'jackMort/ChatGPT.nvim', -- chatgpt.nvim
	     event = 'VeryLazy',
	     config = function()
     			require("chatgpt").setup(gpt_configs)
     		end,
     	dependencies = {
     		"MunifTanjim/nui.nvim",
      		"nvim-lua/plenary.nvim",
      		"nvim-telescope/telescope.nvim",},},
     {'https://github.com/github/copilot.vim', -- gh copilot
          cmd = 'Copilot',},
}
