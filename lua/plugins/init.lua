vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
    use { "wbthomason/packer.nvim" }

    -- color scheme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        tag = 'v0.1.0', -- Optional tag release
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    -- file explorer
    use 'kyazdani42/nvim-tree.lua'


    -- indent line
    use 'lukas-reineke/indent-blankline.nvim'

    -- autopair
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup()
        end
    }

    -- icons
    use 'kyazdani42/nvim-web-devicons'


    -- treesitter interface
    use 'nvim-treesitter/nvim-treesitter'


    -- statusline
    use {
        'famiu/feline.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
    }

    -- git labels
    use {
      'lewis6991/gitsigns.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('gitsigns').setup()
      end
    }


    -- autocomplete
    use {
      'hrsh7th/nvim-cmp',
      requires = {
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-buffer',
        'saadparwaiz1/cmp_luasnip',
      },
    }


    -- LSP
    use 'neovim/nvim-lspconfig'


end)

