return {
  "folke/zen-mode.nvim",
  keys = {
    { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
  },
  opts = {
    window = {
      backdrop = 0.10,
      width = 0.85,
      height = 1,
      options = {
        cursorline = false,
        number = false,
        relativenumber = false,
        signcolumn = "no",
        list = false,
        foldcolumn = "0",
      },
    },
    plugins = {
      options = {
        enabled = true,
        laststatus = 0,
      },
      twilight = { enabled = true },
      gitsigns = { enabled = true },
      tmux = { enabled = true },
    },
  },
}
