return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- latest release
    lazy = true,
    ft = {
        "markdown",
        "text",
        "markdownt",
        "mdx"
    },
    -- event = {
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",
        "epwalsh/pomo.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "all",
          path = "~/da",
        },
        {
          name = "dev notes",
          path = "~/ud/deva/adev",
        },
      },
      -- see below for full list of options 👇
    },
    ui = {
        checkboxes = {
          -- NOTE: the 'char' value has to be a single character, and the highlight groups are defined below.
            --[" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
            [" "] = { char = "☐", hl_group = "ObsidianTodo" },
            ["x"] = { char = "", hl_group = "ObsidianDone" },
            [">"] = { char = "", hl_group = "ObsidianRightArrow" },
            ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
            ["!"] = { char = "", hl_group = "ObsidianImportant" },
          -- Replace the above with this if you don't have a patched font:
          -- [" "] = { char = "☐", hl_group = "ObsidianTodo" },
          -- ["x"] = { char = "✔", hl_group = "ObsidianDone" },
        -- You can also add more custom ones...
        },
    },
}
