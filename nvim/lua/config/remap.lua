vim.g.mapleader = " "

-- Open up netrw explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Up/Down half page and center cursor
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")

vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
