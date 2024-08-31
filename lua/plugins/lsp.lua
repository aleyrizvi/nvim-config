return {
  {
    "williamboman/mason.nvim",
  },
  {
    "williamboman/mason-lspconfig.nvim",
    after = "mason.nvim",
    opts = {
      ensure_installed = {
        "arduino_language_server",
        "bashls",
        "cssls",
        "cssmodules_ls",
        "css_variables",
        "dockerls",
        "docker_compose_language_service",
        "eslint",
        "golangci_lint_ls",
        "gopls",
        "html",
        "htmx",
        "helm_ls",
        "jsonls",
        "jdtls",
        "tsserver",
        "biome",
        "lua_ls",
        "luau_lsp",
        "autotools_ls",
        "marksman",
        "phpactor",
        "rust_analyzer",
        "sqls",
        "taplo",
        "tailwindcss",
        "templ",
        "terraformls",
        "tflint",
        "gitlab_ci_ls",
        "yamlls",
      },
      automatic_installation = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    after = "mason-lspconfig.nvim",
    cmd = {
      "LspStart",
      "LspRestart",
      "LspStop",
      "LspLog",
    },
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      codelens = {
        enabled = true,
      },
      inlay_hints = {
        enabled = true,
        exclude = {}, -- filetypes for which you don't want to enable inlay hints
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    after = "nvim-lspconfig",
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
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
