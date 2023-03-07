-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move selected lines
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", {
  desc = "Move selected lines up",
})

-- Paste over selected text without adding the deleted text to the register
vim.keymap.set("x", "<leader>p", '"_dP', {
  desc = "Paste over without copying",
})
-- Delete text without adding it to the register
vim.keymap.set({ "n", "x" }, "<leader>d", '"_d', {
  desc = "Delete without copying",
})
