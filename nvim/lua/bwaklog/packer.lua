-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'

  use 'tamton-aquib/duck.nvim'

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'karb94/neoscroll.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      config = function()		
          vim.cmd('colorscheme rose-pine')
      end
  })

  use { 
      'shaunsingh/solarized.nvim',
  }
  use ({ 
      "rebelot/kanagawa.nvim",
      as = 'kanagawao',
      config = function()
          vim.cmd('colorscheme kanagawa-dragon')
      end
  })

  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('tpope/vim-fugitive')

  use('iamcco/markdown-preview.nvim')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {"akinsho/toggleterm.nvim", tag="*", config = function()
	require("toggleterm").setup()
  end}


  use {
      "klen/nvim-test",
      config = function()
          require('nvim-test').setup()
      end
  }

end)