vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lualine/lualine.nvim'       -- Statusline
    use 'nvim-lua/plenary.nvim'           -- Common utilities

    use 'onsails/lspkind-nvim'            -- lsp pictograms
    use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
    use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
    use 'hrsh7th/nvim-cmp'                -- Completion
    use 'neovim/nvim-lspconfig'           -- LSP
    use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
    use 'williamboman/mason.nvim'         -- Manage/Install LSPs
    use 'williamboman/mason-lspconfig.nvim'

    use 'glepnir/lspsaga.nvim' -- LSP UIs
    use 'L3MON4D3/LuaSnip'     -- LSP Snippets
    use {                      -- Syntax highlighting
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"           -- stylize context bar
    }
    use 'kyazdani42/nvim-web-devicons'               -- File icons
    use 'nvim-telescope/telescope.nvim'              -- Finding files
    use 'nvim-telescope/telescope-file-browser.nvim' -- Better filebrowser
    use 'windwp/nvim-autopairs'                      -- Pairs for parenthesis, brackets, etc.
    use 'windwp/nvim-ts-autotag'                     -- Pairs for typescript
    use { 'numToStr/Comment.nvim',                   -- Smart commenting
        requires = {
            'JoosepAlviste/nvim-ts-context-commentstring'
        }
    }
    use 'tpope/vim-abolish'

    use({
        -- Preview markdown files
        "iamcco/markdown-preview.nvim",
        run = "cd app && yarn install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    use 'lewis6991/gitsigns.nvim'             -- Number column git signs
    use 'dinhhuy258/git.nvim'                 -- For git blame & browse

    use { "alexghergh/nvim-tmux-navigation" } -- Tmux-vim integration
    use 'nvim-tree/nvim-tree.lua'             -- File tree

    use 'xiyaowong/transparent.nvim'          -- Transparent backgrounds
    --
    -- Color themes
    use 'rose-pine/neovim'
    use 'Shatur/neovim-ayu'
end)
