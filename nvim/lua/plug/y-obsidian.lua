return {
    "epwalsh/obsidian.nvim",
    version = "*",  -- latest release
    lazy = true,
    ft = { "markdown", "text","markdownt","mdx" },
    -- event = { -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
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
          path = "~/daa",
        },
        {
          name = "dev notes",
          path = "~/dpz",
        },
      },
      -- see below for full list of options 👇
    },
}
