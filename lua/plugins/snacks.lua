return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    keys = {
      {
        "<leader>p",
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = "LSP Symbols",
      },
    },
  },
}
