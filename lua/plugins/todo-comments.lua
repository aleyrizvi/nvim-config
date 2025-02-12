return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = true,
    keys = {
      {
        "<leader>ft",
        function()
          require("fzf-lua").grep({
            search = "TODO|FIXME|HACK|BUG|NOTE",
            regex = true,
            no_esc = true, -- Prevent escaping regex symbols
          })
        end,
        desc = "Find TODO comments (fzf-lua)",
      },
      {
        "<leader>fT",
        function()
          require("todo-comments.search").grep()
        end,
        desc = "Find TODO comments (todo-comments.nvim)",
      },
    },
  },
}
