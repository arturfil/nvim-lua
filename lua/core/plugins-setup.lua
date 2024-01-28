local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {

  -- themes
   "folke/tokyonight.nvim",
  --  "Julpikar/night-owl.nvim"
  -- "dracula/vim"
   "EdenEast/nightfox.nvim",
   { "catppuccin/nvim", as = "catppuccin" },
   "ellisonleao/gruvbox.nvim",
   "olimorris/onedarkpro.nvim",
   "rebelot/kanagawa.nvim",
   "arturfil/night-wolf.nvim",
   "rafi/awesome-vim-colorschemes",
  { "bluz71/vim-nightfly-colors", as = "nightfly" },
  --  'oxfist/night-owl.nvim'

  -- autopairs
   "windwp/nvim-autopairs",
   "windwp/nvim-ts-autotag",

  -- terminal line
   "nvim-lualine/lualine.nvim",

  -- necessary for side-bar & telescope
   "nvim-tree/nvim-tree.lua",
   "nvim-tree/nvim-web-devicons",
   "nvim-treesitter/nvim-treesitter",

  -- debugger
  --  "puremourning/vimspector"
   "mfussenegger/nvim-dap",
   "rcarriga/nvim-dap-ui",

  -- python debugger
  -- { "mfussenegger/nvim-dap-python",
      -- ft = "python",
      -- dependencies = {
      --     "mfussenegger/nvim-dap",
      -- },
      -- config = function(_, opts)
      --     local path = "/opt/homebrew/bin/python3"
      --     require("dap-python").setup(path)
      -- end,
  -- } 

  -- go debbuger
   "leoluz/nvim-dap-go",

  -- completion plugins 
   "hrsh7th/nvim-cmp",
   "hrsh7th/cmp-buffer",
   "hrsh7th/cmp-path",
   "hrsh7th/cmp-nvim-lsp",

  -- navigation
   "christoomey/vim-tmux-navigator",

  -- snippets
   "L3MON4D3/LuaSnip",
   "rafamadriz/friendly-snippets",
   "saadparwaiz1/cmp_luasnip",

  -- formatters
   "jose-elias-alvarez/null-ls.nvim",
   "jayp0521/mason-null-ls.nvim",

  -- lsp -> language server protocol
   {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "glepnir/lspsaga.nvim", branc = "main", -- for window vscode recommend
    "jose-elias-alvarez/typescript.nvim",
    "onsails/lspkind.nvim",
  },
   'simrat39/rust-tools.nvim',

  -- View, preview screen
   {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    dependencies = {{"nvim-lua/plenary.nvim"}},
  }


}

local opts = {}

require("lazy").setup(plugins, opts)

