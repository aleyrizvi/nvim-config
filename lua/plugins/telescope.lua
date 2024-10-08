return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
    },
    keys = {
      { "<leader>/", false },
      {
        "<C-p>",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
      },
      {
        "<leader>fB",
        "<cmd>Telescope file_browser<Return>",
        desc = "Fuzzy file browser",
      },

      {
        "<leader>ff",
        "<cmd>Telescope find_files<Return>",
        desc = "Fuzzy find files in cwd",
      },
      {
        "<leader>fr",
        "<cmd>Telescope oldfiles<Return>",
        desc = "Fuzzy find recent files",
      },
      {
        "<leader>fg",
        "<cmd>Telescope live_grep<Return>",
        desc = "Find string in cwd",
      },
      {
        "<leader>fc",
        "<cmd>Telescope grep_string<Return>",
        desc = "Find string under cursor in cwd",
      },
      {
        "<leader>ft",
        "<cmd>TodoTelescope<Return>",
        desc = "Find todos",
      },
      {
        "<leader>fm",
        "<cmd>Telescope marks<Return>",
        desc = "find marks across project.",
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
}
