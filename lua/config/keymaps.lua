-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remove unnecessary keymaps
keymap.del("n", "<leader>ft", opts)
keymap.del("n", "<leader>fT", opts)
keymap.del("n", "<leader>l", opts)

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split buffer
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize buffer
keymap.set("n", "<C-w><left>", "<C-w><", opts)
keymap.set("n", "<C-w><right>", "<C-w>>", opts)
keymap.set("n", "<C-w><up>", "<C-w>+", opts)
keymap.set("n", "<C-w><down>", "<C-w>-", opts)

-- Toggle lsp inlay hints
keymap.set("n", "<C-i>", ":lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>", opts)

-- DAP
keymap.set("n", "<F5>", ':lua require"dap".continue()<CR>')
keymap.set("n", "<F8>", ':lua require"dap".step_over()<CR>')
keymap.set("n", "<F7>", ':lua require"dap".step_into()<CR>')
keymap.set("n", "<S-F8>", ':lua require"dap".step_out()<CR>')

-- neovim source file
keymap.set("n", "<leader>nr", ":source $MYVIMRC", opts)

-- Diagnostics
keymap.set("n", "<C-j", function()
  vim.diagnostics.goto_next()
end, opts)

-- Keymap to control and ` to toggle termina s
