local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use 'folke/tokyonight.nvim'

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-buffer'},
	    {'hrsh7th/cmp-path'},
	    {'saadparwaiz1/cmp_luasnip'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'hrsh7th/cmp-nvim-lua'},

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},
	    {'rafamadriz/friendly-snippets'},
	  }
	}

	use({
	    "iamcco/markdown-preview.nvim",
	    run = function() vim.fn["mkdp#util#install"]() end,
	})

	use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
	    'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	}

	use {
	    'goolord/alpha-nvim',
	    requires = { 'nvim-tree/nvim-web-devicons' },
	    config = function ()
	        require'alpha'.setup(require'alpha.themes.startify'.config)
	    end
	}

	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use 'lewis6991/gitsigns.nvim'

	use 'tpope/vim-fugitive'

	use 'github/copilot.vim'

	use 'mechatroner/rainbow_csv'

	use 'akinsho/toggleterm.nvim'

	use 'david-kunz/gen.nvim'

	use {
	  	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  	requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
	  "epwalsh/obsidian.nvim",
	  tag = "*",
	  requires = {
	    "nvim-lua/plenary.nvim",
	  },
	  config = function()
	    require("obsidian").setup({
	      workspaces = {
	        {
	          name = "personal",
	          path = "~/obsidian-vaults/personal",
	        },
	        {
	          name = "work",
	          path = "~/obsidian-vaults/work",
	        },
	      },
	    })
	  end,
	})

	use({
	  "epwalsh/pomo.nvim",
	  tag = "*",
	  requires = {
	    "rcarriga/nvim-notify",
	  },
	  config = function()
	    require("pomo").setup({ })
	  end,
	})

	-- Must be always at the end of all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
