return {
  {
    "ibhagwan/fzf-lua",
    keys = {
      {
        "<leader>fd",
        function()
          require("fzf-lua").diagnostics_workspace()
        end,
        desc = "Workspace Diagnostics (fzf-lua)",
      },
    },
  },
}
