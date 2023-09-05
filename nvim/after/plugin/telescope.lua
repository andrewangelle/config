local builtin = require('telescope.builtin')

-- "Project File" brings up telescope for fuzzy finder
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- "Project File" for git included files only
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- "Project Search" grep text search the project
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
