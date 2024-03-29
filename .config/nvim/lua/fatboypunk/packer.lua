vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- use "Tsuzat/NeoSolarized.nvim"



  use "marko-cerovac/material.nvim"
  -- use {
  --   "loctvl842/monokai-pro.nvim",
  --   config = function()
  --     vim.cmd('colorscheme monokai-pro')
  --   end
  -- }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use 'nvim-treesitter/completion-treesitter'
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use { 'mhanberg/elixir.nvim' }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use { 'vim-test/vim-test' }
  use { 'pbrisbin/vim-rename-file' }
  use { 'tpope/vim-dispatch' }
  use { 'jghauser/mkdir.nvim' }
  -- use { 'fatboypunk/vim-mix-format', branch = 'marcel/remove-check' }
  use { 'hrsh7th/nvim-cmp' }
  use 'mfussenegger/nvim-dap'
  use 'wsdjeg/vim-fetch'

  -- whitespaces
  use 'axelf4/vim-strip-trailing-whitespace'
end)
