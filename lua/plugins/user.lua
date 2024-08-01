-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- Search & Destroy
  {
    "nvim-lua/plenary.nvim",
  },

  {
    "nvim-pack/nvim-spectre",
    event = "BufRead",
    keys = {
      { "<leader>s", "<cmd>lua require('spectre').open()<cr>", desc = "Spectre" },
    },
  },

  -- AstroJS LSP
  {
    "wuelnerdotexe/vim-astro",
    ft = { "astro" },
  },

  -- Catppuccin Mocha Theme
  {
    "catppuccin/nvim",
    name = "mocha",
    priority = 1000,
  },

  -- Codeium auto complete AI plugin
  {
    "Exafunction/codeium.vim",
    event = "BufEnter", -- Adjust event as needed
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
        sh = { "shfmt" },
        zsh = { "shfmt" },
        bash = { "shfmt" },
        lua = { "stylua" },
        css = { "prettier" },
        scss = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        python = { "black" },
        go = { "goimports" },
        mdx = { "prettier" },
        astro = { "prettier" },
        jsonc = { "prettier" },
        json5 = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        html = { "htmlbeautifier" },
        smarty = { "htmlbeautifier" },
        tailwindcss = { "htmlbeautifier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
      },
    },
  },

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "                          ⟋|､",
        " •┏┓         ┓┓┏•        (°､ ｡ 7",
        " ┓┣ ┏┏┏┓┏┓┏┓┏┫┃┃┓┏┳┓     |､  ~ヽ",
        " ┗┗┛┛┗┗┻┣┛┗ ┗┻┗┛┗┛┗┗     じしf_,)〳",
        "        ┛                ",
      }
      return opts
    end,
  },
}
