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

  -- themes
  use 'folke/tokyonight.nvim'
  use 'Julpikar/night-owl.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'ellisonleao/gruvbox.nvim'

  -- terminal line
  use 'nvim-lualine/lualine.nvim'

  -- necessary for side-bar & telescope
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-treesitter/nvim-treesitter'

  -- completion plugins 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- lsp -> language server protocol
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- View, preview screen
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = {{'nvim-lua/plenary.nvim'}}
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
