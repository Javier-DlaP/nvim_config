local builtin = require('telescope.builtin')

vim.keymap.set('n', '<S-f>', builtin.git_files, {})
vim.keymap.set('n', '<S-b>', builtin.git_branches, {})
vim.keymap.set('n', '<S-c>', builtin.git_commits, {})
vim.keymap.set('n', '<S-m>', builtin.man_pages, {})
