local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

vim.opt.relativenumber = true
vim.opt.nu = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
