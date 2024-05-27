return {
  {
    "shaunsingh/nord.nvim",
    -- "folke/tokyonight.nvim",
    name = "nord",
    -- "catppuccin/nvim",
    -- name = "kanagawa",
    -- name = "catppuccin",
    priority = 1000,
    config = function()
      require("nord").set()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
