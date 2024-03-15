-- This file can be loaded by calling `lua require('plugins')` from your init.vimpacker

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

    use 'ThePrimeagen/vim-be-good'
    use 'ThePrimeagen/harpoon'


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
            -- config = function()
                --        vim.cmd('colorscheme kanagawa')
                --    end
            })


            use ({
                'bluz71/vim-moonfly-colors',
                as = 'moonfly',
                --config = function()
                    --    vim.cmd('colorscheme moonfly')
                    --end
                })


                use ({    
                    "catppuccin/nvim",
                    as = "catppuccin", 
                    config = function()
                        vim.cmd('colorscheme catppuccin')
                    end
                })

                use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
                use('nvim-treesitter/playground')
                use('tpope/vim-fugitive')
                use('wakatime/vim-wakatime')

                use ({
                    "hedyhli/outline.nvim",
                    config = function()
                        -- Example mapping to toggle outline
                        vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>",
                        { desc = "Toggle Outline" })

                        require("outline").setup {
                            -- Your setup opts here (leave empty to use defaults)
                        }
                    end,
                })

                
                use ({
                    "nvim-neo-tree/neo-tree.nvim",
                    branch = "v3.x",
                    requires = { 
                        "nvim-lua/plenary.nvim",
                        "MunifTanjim/nui.nvim",
                        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
                    },
                    config = function()
                        vim.keymap.set("n", "<leader>n", "<cmd>NvimTreeToggle<CR>",
                        { desc = "Toggle NvimTree" })
                    end
                })

                    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
                    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
                    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

                    

                    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

                    -- use { "nvim-tree/nvim-web-devicons" }  -- not strictly required, but recommended
                    use { 'romgrk/barbar.nvim' }
                    use { 'brenoprata10/nvim-highlight-colors' }
                    use { 'junegunn/fzf.vim' }
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

                    -- use {"akinsho/toggleterm.nvim", tag="*", config = function()
                        --    require("toggleterm").setup()
                        -- end}

                        use {
                            "klen/nvim-test",
                            config = function()
                                require('nvim-test').setup()
                            end
                        }

                    end)
