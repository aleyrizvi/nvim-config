return {
  {
    "nvimdev/lspsaga.nvim",
    after = "nvim-lspconfig",
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      implement = {
        enable = true,
      },
      lightbulb = {
        enable = false,
      },
    },
    keys = {
      {
        "<leader>lu",
        "<cmd>Lspsaga outline<Return>",
        desc = "LSP Saga Outline",
      },
      {
        "<leader>loc",
        "<cmd>Lspsaga outgoing_calls<Return>",
        desc = "LSP Saga outgoing calls",
      },
      {
        "<leader>lf",
        "<cmd>Lspsaga finder imp<Return>",
        desc = "Lspsaga finder imp",
      },
      {
        "<leader>lic",
        "<cmd>Lspsaga incoming_calls<Return>",
        desc = "LSP Saga incoming calls",
      },
      {
        "<leader>lca",
        "<cmd>Lspsaga code_action<Return>",
        desc = "LSP Saga code action",
      },
      {
        "<leader>ld",
        "<cmd>Lspsaga peek_definition<Return>",
        desc = "LSP Saga peek definition",
      },
      {
        "<leader>lD",
        "<cmd>Lspsaga peek_type_definition<Return>",
        desc = "LSP Saga peek type definition",
      },
      {
        "<leader>lf",
        "<cmd>Lspsaga finder<Return>",
        desc = "LSP Saga finder",
      },
      {
        "<leader>lh",
        "<cmd>Lspsaga hover_doc<Return>",
        desc = "LSP Saga hover docs",
      },
      {
        "<leader>lr",
        "<cmd>Lspsaga rename<Return>",
        desc = "LSP Saga rename",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>l", group = "LSP Saga" },
      },
    },
  },
}
