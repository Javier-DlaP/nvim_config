require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

vim.api.nvim_set_keymap("n", "<C-c>", ":NvimTreeClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
