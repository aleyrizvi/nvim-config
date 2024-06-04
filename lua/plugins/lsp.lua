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
    config = function()
      require("lspsaga").setup({})
    end,
    keys = {
      {
        "<leader>lo",
        "<cmd>Lspsaga outline<Return>",
        desc = "LSP Saga Outline",
      },
    },
  },
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>l"] = { name = "+LSP Saga" },
      },
    },
  },
}
