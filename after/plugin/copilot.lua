vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Enable markdown languaje for copilot
vim.g.copilot_filetypes = {["markdown"] = true,
						   ["yaml"] = true,
					   	  }
