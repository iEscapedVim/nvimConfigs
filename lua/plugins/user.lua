-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- Catppuccin Mocha Theme
  { "catppuccin/nvim", name = "mocha", priority = 1000 },
  -- Codeium auto complete AI plugin
  {'Exafunction/codeium.vim', event = 'BufEnter'},

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
