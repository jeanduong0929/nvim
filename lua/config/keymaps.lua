-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- INSERT MODE
map("i", "jj", "<Esc>", opts)
map("i", "dw", "<C-w>", opts)

-- NORMAL MODE
map("n", "dw", 've"_d', opts)
map("n", "x", '"_x', opts)
map("n", "D", 'V"_d', opts)
map("n", "J", "5j", opts)
map("n", "K", "5k", opts)
map("n", "df", "V$%", opts)
map("n", "E", "$", opts)
map("n", "B", "0", opts)
map("n", "sr", "<cmd>vsplit<cr><C-w>h:BufferLineCyclePrev<cr><C-w>l", opts)
map("n", "sb", "<cmd>split<cr><C-w>k:BufferLineCyclePrev<cr><C-w>j", opts)
map("n", "<tab>", "<cmd>BufferLineCycleNext<cr>", opts)

-- VISUAL MODE
map("v", "D", '"_d', opts)
map("v", "J", "5j", opts)
map("v", "K", "5k", opts)
map("v", "E", "$", opts)
map("v", "B", "0", opts)
