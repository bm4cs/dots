-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {
        'nvim-lua/plenary.nvim',
        'BurntSushi/ripgrep'
      } 
    }
  }

  -- Colorscheme
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function()
        vim.cmd('colorscheme catppuccin')
    end
  })

  -- Intelligent syntax support
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Keep most regularly used files close
  --use('ThePrimeagen/harpoon')

  -- Historic buffers
  --use('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- Git signs in the gutter
  use('lewis6991/gitsigns.nvim')

  -- Fancier statusline
  use 'nvim-lualine/lualine.nvim'

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- "gc" to comment visual regions/lines
  use 'numToStr/Comment.nvim'

  -- Detect tabstop and shiftwidth automatically
  use 'tpope/vim-sleuth'

  -- File browsing
  use 'nvim-telescope/telescope-file-browser.nvim'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {"WhoIsSethDaniel/mason-tool-installer.nvim"},

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
    }
  }

  -- 
  use({
      "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
        require("lspsaga").setup({})
      end,
      requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
      }
    })

  -- git diff
  use 'sindrets/diffview.nvim'

  -- devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Language packs
  use 'sheerun/vim-polyglot'

  -- neovim motions
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'hop'.setup { keys = 'etovxpqdgfblzhckisuran' }
    end
  }

  -- Pretty diagnostics, references, telescope results, quickfix and location list
  use 'folke/trouble.nvim'



  --fullstack dev
  use 'pangloss/vim-javascript' --JS support
  use 'leafgarland/typescript-vim' --TS support
  use 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
  use 'jparise/vim-graphql' --GraphQL syntax
  use 'mattn/emmet-vim'

  --TODO: https://github.com/nvim-lua/kickstart.nvim/blob/master/init.lua
  --TODO: https://github.com/simrat39/dotfiles/blob/master/nvim/.config/nvim/lua/plugins.lua
end)
