return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}

  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
  }

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup() end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim' } },
  }

  use {
    'mcauley-penney/tidy.nvim',
    config = function() require('tidy').setup() end
  }

  use {'stevearc/oil.nvim'}

  use {'itchyny/vim-cursorword'}

  use {'sainnhe/gruvbox-material'}

  use { 'mfussenegger/nvim-dap' }
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use { 'leoluz/nvim-dap-go' }
  use { 'Weissle/persistent-breakpoints.nvim' }

  use { "folke/neodev.nvim", opts = {} }

  use { "junegunn/vim-easy-align" }
end)
