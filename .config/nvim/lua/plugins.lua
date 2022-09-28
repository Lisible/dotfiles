return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use {
        'windwp/nvim-autopairs', 
        config = function() 
            require("nvim-autopairs").setup {
            } 
        end
    } 
    use { 
        'folke/which-key.nvim',
        config = function()
            require('which-key').setup {
            }
        end

    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'simrat39/rust-tools.nvim'
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'
    use 'andweeb/presence.nvim'
end)


