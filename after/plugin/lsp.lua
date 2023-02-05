local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'jedi_language_server',
	'sumneko_lua',
	--'grammarly',
	--'dockerls',
})

-- Configure lua languaje server for neovim
lsp.nvim_workspace()

lsp.setup()
