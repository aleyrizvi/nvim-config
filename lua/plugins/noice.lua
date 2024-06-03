return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["config.lsp.hover.enabled"] = false,
      },
    },
  },
}
