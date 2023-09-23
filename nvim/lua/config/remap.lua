vim.g.mapleader = " "

-- Open up netrw explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Up/Down half page and center cursor
vim.keymap.set("n", "<C-j>", "<C-d>zz")
vim.keymap.set("n", "<C-k>", "<C-u>zz")

-- Toggle tree view
vim.cmd('nnoremap <space>e :NvimTreeToggle<CR>')

-- previous buffer
vim.cmd('nnoremap <space>bb :e#<CR>')
vim.keymap.set("n", "<leader>bp", vim.cmd.bp)

-- Center cursor when going through search results
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Paste while leaving original item in paste register 
vim.keymap.set("v", "<leader>p", "\"_dP")

