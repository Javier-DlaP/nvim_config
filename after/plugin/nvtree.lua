require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "-", action = "dir_up" },
        { key = "+", action = "dir_down" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.api.nvim_set_keymap("n", "<C-c>", ":NvimTreeClose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
