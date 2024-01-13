-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'rstacruz/vim-closer'


  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'karb94/neoscroll.nvim'
  use 'ThePrimeagen/vim-be-good'
  use 'ThePrimeagen/harpoon'

  use 'lervag/vimtex'

  use {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>dd', function() require("duck").hatch('🐱', 2) end, {})
        vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
    end
}


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
      'rose-pine/neovim',
      as = 'rose-pine',
      --config = function()		
      --    vim.cmd('colorscheme rose-pine')
      --end
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


      use ({
          'bluz71/vim-moonfly-colors',
          as = 'moonfly',
          --config = function()
          --    vim.cmd('colorscheme moonfly')
          --end
      })

  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('tpope/vim-fugitive')
  use('wakatime/vim-wakatime')

  use {'nvim-orgmode/orgmode', config = function()
      require('orgmode').setup{}
  end
    }


  -- install without yarn or npm
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use({
      "epwalsh/obsidian.nvim",
      tag = "*",  -- recommended, use latest release instead of latest commit
      requires = {
          -- Required.
          "nvim-lua/plenary.nvim",

          -- see below for full list of optional dependencies 👇
      },
      config = function()
          require("obsidian").setup({
              workspaces = {
                  {
                      name = "college",
                      path = "/Users/adityahegde/Library/Mobile Documents/iCloud~md~obsidian/Documents/College/College",
                  },
                  {
                      name = "personal",
                      path = "/Users/adityahegde/Library/Mobile Documents/iCloud~md~obsidian/Documents/Waffles",
                  },
              },

              -- see below for full list of options 👇
          })
      end,
  })

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
		  -- {'L3MON4D3/LuaSnip'},

	  }
  }

  use({
      "L3MON4D3/LuaSnip",
      -- follow latest release.
      tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      -- install jsregexp (optional!:).
      run = "make install_jsregexp"
  })

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
