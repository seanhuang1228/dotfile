return require('packer').startup( function(use)
  use "wbthomason/packer.nvim"

  -- auto complete
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"
  use { "hrsh7th/nvim-cmp",
    config = function ()
      require "plugins.cmp"
    end
  }
  use { "williamboman/mason.nvim",
    config = function ()
      require "plugins.mason"
    end
  }

  -- fuzzy
  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = function ()
      require "plugins.telescope"
    end
  }

  -- file explorer
  use { "nvim-tree/nvim-tree.lua",
    config = function ()
      require "plugins.nvim-tree"
    end
  }
  use "nvim-tree/nvim-web-devicons"

  -- syntax
  use { 'nvim-treesitter/nvim-treesitter',
    run = function ()
      vim.cmd 'TSUpdate'
    end,
    config = function ()
      require "plugins.nvim-treesitter"
    end
  }

  -- appearance
  use { "rafamadriz/neon",
    config = function ()
      require "plugins.theme"
    end
  }
  use { "nvim-lualine/lualine.nvim",
    config = function ()
      require "plugins.lualine"
    end
  }

  -- git
  use { "lewis6991/gitsigns.nvim",
    config = function ()
      require "plugins.gitsigns"
    end
  }

  -- dev
  use { "windwp/nvim-autopairs",
    config = function ()
      require "plugins.nvim-autopairs"
    end
  }
  use { "numToStr/Comment.nvim",
    config = function ()
      require "plugins.Comment"
    end
  }
  use { "kylechui/nvim-surround",
    config = function ()
      require "plugins.nvim-surround"
    end
  }
  use { "phaazon/hop.nvim",
    config = function ()
      require "plugins.hop"
    end
  }

  -- markdown
  use { "iamcco/markdown-preview.nvim",
    run = function ()
      vim.fn['mkdp#util#install']()
    end
  }

  -- latex
  use { "lervag/vimtex",
    config = function ()
      require "plugins.vimtex"
    end
  }
end)
