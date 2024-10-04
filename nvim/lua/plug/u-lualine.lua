return {
  "nvim-lualine/lualine.nvim",
  -- event = "VeryLazy",  -- Choose an appropriate event
  opts = function()
    require("lualine").setup {
      options = {
        theme = "auto",
        disabled_filetypes = { "dashboard", "alpha" },
      },
      sections = {
        lualine_a = {
          {
            "tabs",
            max_length = vim.o.columns / 10,
            mode = 1,
            use_mode_colors = false,
            tabs_color = {
              active = "lualine_a_normal",
              inactive = "lualine_a_inactive",
            },
            fmt = function(name, context)
              local buflist = vim.fn.tabpagebuflist(context.tabnr)
              local winnr = vim.fn.tabpagewinnr(context.tabnr)
              local bufnr = buflist[winnr]
              local mod = vim.fn.getbufvar(bufnr, "&mod")
              return name .. (mod == 1 and " +" or "")
            end,
          }
        },
      },
      extensions = { "neotree", "lazy" },
    }
  end,
}
