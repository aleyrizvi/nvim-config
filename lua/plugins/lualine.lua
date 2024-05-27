return {
  "nvim-lualine/lualine.nvim",
  opts = {
    theme = "auto",
    sections = {
      lualine_a = { "mode", "hostname" },
      lualine_b = { "branch", "diagnostics" },
      lualine_c = { "filename", "diagnostics" },
      lualine_x = { "encoding", "filetype" },
      lualine_y = { "diff", "progress" },
      lualine_z = { "location" },
    },
    section_separators = "",
    component_separators = "",
  },
}
