-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- Catppuccin Mocha Theme
  {
    "catppuccin/nvim",
    name = "mocha",
    priority = 1000,
  },

  -- Codeium auto complete AI plugin
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-tab>", function() return vim.fn["codeium#Accept"]() end, { expr = true, silent = true })
    end,
  },

  -- Conform to the style of the editor
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    keys = {
      {
        "<leader>lf",
        function() require("conform").format { async = true } end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      formatters_by_ft = {
          html = { "htmlbeautifier" },
          lua  = { "stylua" },
      }
    }
  },

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " •┏┓         ┓┓┏•    ",
        " ┓┣ ┏┏┏┓┏┓┏┓┏┫┃┃┓┏┳┓ ",
        " ┗┗┛┛┗┗┻┣┛┗ ┗┻┗┛┗┛┗┗ ",
        "        ┛            ",
      }
      return opts
    end,
  },
}
