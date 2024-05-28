local ui = {}

ui.lspkind = {
  Array = " ",
  Boolean = "󰨙 ",
  Class = " ",
  Codeium = "󰘦 ",
  Color = " ",
  Control = " ",
  Collapsed = " ",
  Constant = "󰏿 ",
  Constructor = " ",
  Copilot = " ",
  Enum = " ",
  EnumMember = " ",
  Event = " ",
  Field = " ",
  File = " ",
  Folder = " ",
  Function = "󰊕 ",
  Interface = " ",
  Key = " ",
  Keyword = " ",
  Method = "󰊕 ",
  Module = " ",
  Namespace = "󰦮 ",
  Null = " ",
  Number = "󰎠 ",
  Object = " ",
  Operator = " ",
  Package = " ",
  Property = " ",
  Reference = " ",
  Snippet = " ",
  String = " ",
  Struct = "󰆼 ",
  Text = " ",
  TypeParameter = " ",
  Unit = " ",
  Value = " ",
  Variable = "󰀫 ",
}

ui.diagnostics = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " ",
  [1] = " ", -- error
  [2] = " ", -- warn
  [3] = " ", -- hint
  [4] = " ", -- info
}

ui.dap = {
  Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
  Breakpoint = { " ", "DiagnosticInfo" },
  BreakpointCondition = { " ", "DiagnosticInfo" },
  BreakpointRejected = { " ", "DiagnosticError" },
  LogPoint = { ".>", "DiagnosticInfo" },
}

return {
  "hrsh7th/nvim-cmp",
  opts = {

    formatting = {

      fields = { "menu", "abbr", "kind" },
      format = function(entry, vim_item)
        -- changing the order of fields so the icon is the first

        local menu_icons = {
          nvim_lsp = "λ",
          luasnip = "⋗",
          buffer = "Ω",
          path = "🖫",
          nvim_lua = "Π",
        }
        vim_item.menu = menu_icons[entry.source.name]
        vim_item.kind = (ui.lspkind[vim_item.kind] or "") .. vim_item.kind
        -- vim_item.kind = string.format("%s %s", ui.lspkind[vim_item.kind], vim_item.kind)

        return vim_item
      end,
    },
  },
}
