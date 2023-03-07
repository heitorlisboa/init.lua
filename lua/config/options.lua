-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Enabling line break
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.linebreak = true
-- Setting a ruler at the character 80
vim.opt.colorcolumn = "80"
-- Prevents hiding symbols on json/markdown files
vim.opt.conceallevel = 0
-- Setting the options to the autocomplete suggestions
vim.opt.completeopt = "menu,menuone,noselect,preview"
