-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Remove unnecessary keymaps
keymap.del("n", "<leader>ft", opts)
keymap.del("n", "<leader>fT", opts)
keymap.del("n", "<leader>l", opts)

-- git keymaps to remove for golang keywords
keymap.del("n", "<leader>gc", opts)
