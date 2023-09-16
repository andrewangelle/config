-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- One Dark theme
  use ('navarasu/onedark.nvim')

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'} )
  use('nvim-treesitter/playground')

  -- Harpoon 
  use('ThePrimeagen/harpoon')

  -- CoC 
  use {
    'neoclide/coc.nvim', branch = 'release'
  }

  -- CMP for code completion
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
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

      -- prettier
      {'jose-elias-alvarez/null-ls.nvim'},
      {'MunifTanjim/prettier.nvim'}
    }
  } 


  -- File tree viewer and icons
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }
  
  use 'windwp/nvim-ts-autotag'

end)
