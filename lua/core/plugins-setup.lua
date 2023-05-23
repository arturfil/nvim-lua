local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- themes
  use "folke/tokyonight.nvim"
  -- use "Julpikar/night-owl.nvim"
  use "dracula/vim"
  use "EdenEast/nightfox.nvim"
  use { "catppuccin/nvim", as = "catppuccin" }
  use "ellisonleao/gruvbox.nvim"
  use "olimorris/onedarkpro.nvim"
  use "rebelot/kanagawa.nvim"
  use "arturfil/night-wolf.nvim"
  use { "bluz71/vim-nightfly-colors", as = "nightfly" }
  -- use 'oxfist/night-owl.nvim'

  -- autopairs
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  -- terminal line
  use "nvim-lualine/lualine.nvim"

  -- necessary for side-bar & telescope
  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"
  use "nvim-treesitter/nvim-treesitter"

  -- debugger
  use "mfussenegger/nvim-dap"
  use "rcarriga/nvim-dap-ui"

  -- go debbuger
  use "leoluz/nvim-dap-go"

  -- completion plugins 
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-nvim-lsp"

  -- navigation
  use "christoomey/vim-tmux-navigator"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"
  use "saadparwaiz1/cmp_luasnip"

  -- formatters
  use "jose-elias-alvarez/null-ls.nvim"
  use "jayp0521/mason-null-ls.nvim"

  -- lsp -> language server protocol
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim", branc = "main", -- for window vscode recommend
    "jose-elias-alvarez/typescript.nvim",
    "onsails/lspkind.nvim"
  }
  use 'simrat39/rust-tools.nvim'

  -- View, preview screen
  use {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    requires = {{"nvim-lua/plenary.nvim"}}
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require("packer").sync()
  end
end)
