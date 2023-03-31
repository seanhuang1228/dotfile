require "paq" {
  "savq/paq-nvim",
  -- auto complete
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  "williamboman/mason.nvim",

  -- fuzzy
  "nvim-lua/plenary.nvim",
  { "nvim-telescope/telescope.nvim", branch = "0.1.x" },

  -- file explorer
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  -- syntax
  { 'nvim-treesitter/nvim-treesitter', run = function() vim.cmd 'TSUpdate' end },

  -- appearance
  "rafamadriz/neon",
  "nvim-lualine/lualine.nvim",

  -- git
  "lewis6991/gitsigns.nvim",

  -- dev
  "windwp/nvim-autopairs",
  "numToStr/Comment.nvim",
  "kylechui/nvim-surround",
  "phaazon/hop.nvim",

  -- markdown
  { "iamcco/markdown-preview.nvim", run = function() vim.fn['mkdp#util#install']() end },

  -- latex
  "lervag/vimtex",
}

require "plugins.nvim-autopairs"
require "plugins.mason"
require "plugins.cmp"
require "plugins.telescope"
require "plugins.nvim-tree"
require "plugins.nvim-treesitter"
require "plugins.theme"
require "plugins.lualine"
require "plugins.gitsigns"
require "plugins.Comment"
require "plugins.nvim-surround"
require "plugins.hop"
require "plugins.vimtex"
