local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'mnishz/colorscheme-preview.vim'
  use { 'navarasu/onedark.nvim' }
  use { 'svrana/neosolarized.nvim', requires = { 'tjdevries/colorbuddy.nvim' } }
  use 'michaeldyrynda/carbon'
  use 'GustavoPrietoP/doom-themes.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  -- use "lunarvim/horizon.nvim"
  use { "sainnhe/everforest" }
  use { "morhetz/gruvbox" }


  use 'hoob3rt/lualine.nvim' -- Lualine
  use 'L3MON4D3/LuaSnip' -- Code snippets
  use 'neovim/nvim-lspconfig' -- LSP
  use 'onsails/lspkind-nvim' -- pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp srouce for nvim built-in LSP
  use 'hrsh7th/cmp-nvim-lsp' -- Completion
  use 'hrsh7th/nvim-cmp' -- LSP
  use 'hrsh7th/cmp-path' -- LSP
  use 'hrsh7th/cmp-cmdline' -- LSP
  use 'tpope/vim-rails'

  use {
    'nvim-treesitter/nvim-treesitter', -- Treesitter
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'PontusPersson/pddl.vim'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'kyazdani42/nvim-web-devicons' -- Telescope Icons
  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
  use 'xiyaowong/nvim-transparent'

  -- use "glepnir/lspsaga.nvim"
  use({
    "glepnir/lspsaga.nvim",
    -- branch = "main",
  })


  use 'jose-elias-alvarez/null-ls.nvim' -- Use nvim as langauge server
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for nvim built-in LSP client

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'goolord/alpha-nvim'
  use 'terrortylor/nvim-comment'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'anuvyklack/pretty-fold.nvim'
  use 'chipsenkbeil/distant.nvim'
  use 'kenn7/vim-arsync'
  use 'github/copilot.vim'
end)
