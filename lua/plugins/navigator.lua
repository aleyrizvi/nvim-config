return {
  {
    "ray-x/navigator.lua",
    dependencies = { "ray-x/guihua.lua", build = "cd lua/fzy && make" },
    config = function()
      require("navigator").setup({
        keymaps = {
          {
            key = "<Leader>rn",
            func = require("navigator.rename").rename,
            desc = "rename",
          },
        },
        lsp = {
          -- disable_lsp = { 'rust_analyzer', 'clangd' },
        },
      })
    end,
  },
}
