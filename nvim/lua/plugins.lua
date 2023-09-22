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
    'nvim-lualine/lualine.nvim', -- Statusline
    'nvim-lua/plenary.nvim',     -- Common utilities

    -- LSP
    'onsails/lspkind-nvim',            -- lsp pictograms
    'hrsh7th/cmp-buffer',              -- nvim-cmp source for buffer words
    'hrsh7th/cmp-nvim-lsp',            -- nvim-cmp source for neovim's built-in LSP
    'hrsh7th/nvim-cmp',                -- Completion
    'neovim/nvim-lspconfig',           -- LSP
    'jose-elias-alvarez/null-ls.nvim', -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    'williamboman/mason.nvim',         -- Manage/Install LSPs
    'williamboman/mason-lspconfig.nvim',
    'simrat39/rust-tools.nvim',


    -- LSP Utils
    'glepnir/lspsaga.nvim', -- LSP UIs
    'L3MON4D3/LuaSnip',     -- LSP Snippets
    {                       -- Syntax highlighting
        'nvim-treesitter/nvim-treesitter',
        build = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    },
    {
        "SmiteshP/nvim-navic",
        dependencies = "neovim/nvim-lspconfig" -- stylize context bar
    },
    'kyazdani42/nvim-web-devicons',            -- File icons
    'arkav/lualine-lsp-progress',

    -- Navigation
    'nvim-telescope/telescope.nvim',              -- Finding files
    'nvim-telescope/telescope-file-browser.nvim', -- Better filebrowser
    "alexghergh/nvim-tmux-navigation",            -- Tmux-vim integration
    { 'nvim-tree/nvim-tree.lua', lazy = false },  -- File tree

    -- Mappings
    'windwp/nvim-autopairs',     -- Pairs for parenthesis, brackets, etc.
    'windwp/nvim-ts-autotag',    -- Pairs for typescript
    {
        'numToStr/Comment.nvim', -- Smart commenting
        dependencies = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    },
    {
        -- Preview markdown files
        "iamcco/markdown-preview.nvim",
        build = "cd app && yarn install",
        init = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    },
    'tpope/vim-abolish',
    "folke/todo-comments.nvim",

    -- Git Integration
    'lewis6991/gitsigns.nvim', -- Number column git signs
    'dinhhuy258/git.nvim',     -- For git blame & browse
    'kdheepak/lazygit.nvim',

    -- Highlights/Color Themes
    'rose-pine/neovim',
    { "catppuccin/nvim",         name = "catppuccin" },
    'Shatur/neovim-ayu',
    "nyoom-engineering/oxocarbon.nvim",
    'xiyaowong/transparent.nvim', -- Transparent backgrounds
})
