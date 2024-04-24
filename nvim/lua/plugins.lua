-- Bootstrap Lazy
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

require("lazy").setup({
    -- 'nvim-lualine/lualine.nvim', -- Statusline
    'nvim-lua/plenary.nvim', -- Common utilities
    'tpope/vim-abolish',

    -- LSP
    'onsails/lspkind-nvim',    -- lsp pictograms
    'hrsh7th/cmp-buffer',      -- nvim-cmp source for buffer words
    'hrsh7th/cmp-nvim-lsp',    -- nvim-cmp source for neovim's built-in LSP
    'hrsh7th/nvim-cmp',        -- Completion
    'neovim/nvim-lspconfig',   -- LSP
    'williamboman/mason.nvim', -- Manage/Install LSPs
    'williamboman/mason-lspconfig.nvim',

    -- LSP Utils
    'glepnir/lspsaga.nvim', -- LSP UIs
    'L3MON4D3/LuaSnip',     -- LSP Snippets
    {                       -- Syntax highlighting
        'nvim-treesitter/nvim-treesitter',
        build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    },

    -- UI
    'nvim-telescope/telescope.nvim', -- Finding files
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- Navigation
    "aserowy/tmux.nvim",

    -- Mappings
    'windwp/nvim-autopairs',  -- Pairs for parenthesis, brackets, etc.
    'windwp/nvim-ts-autotag', -- Pairs for typescript
    'numToStr/Comment.nvim',  -- Smart commenting

    -- Git Integration
    'lewis6991/gitsigns.nvim', -- Number column git signs
    'kdheepak/lazygit.nvim',

    -- Highlights/Color Themes
    'xiyaowong/transparent.nvim',
    { 'mcchrish/zenbones.nvim', dependencies = { 'rktjmp/lush.nvim' } },
    { "catppuccin/nvim",        name = "catppuccin",                  priority = 1000 },
})
