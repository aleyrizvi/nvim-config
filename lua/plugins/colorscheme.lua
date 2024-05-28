return {
  {
    -- "shaunsingh/nord.nvim",
    -- "folke/tokyonight.nvim",
    -- name = "nord",
    "catppuccin/nvim",
    -- name = "kanagawa",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        cmp = true,
        dap = true,
        gitsigns = true,
        neotree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
