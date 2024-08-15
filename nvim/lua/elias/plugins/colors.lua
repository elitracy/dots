return {
    {
        "oxfist/night-owl.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- require("night-owl").setup()
        end
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                -- Recommended - see "Configuring" below for more config options
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                borderless_telescope = true,
                terminal_colors = true,
            })
            vim.cmd("colorscheme cyberdream")
        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    { "bluz71/vim-moonfly-colors", },
    { 'ellisonleao/gruvbox.nvim', },
    {
        "fynnfluegge/monet.nvim",
        name = "monet",
    },

    {
        "diegoulloao/neofusion.nvim",
        priority = 1000,
        opts = ...
    },
    {
        "rebelot/kanagawa.nvim",
    }

}
