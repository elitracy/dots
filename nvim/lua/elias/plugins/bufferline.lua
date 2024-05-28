return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {

                offsets = { {
                    filetype = "neo-tree",
                    text = "File Explorer",
                    highlight = "Directory",
                    separator = true -- use a "true" to enable the default, or set your own character
                } }
            }

        })

        vim.keymap.set("n", "<Tab>", "<CMD> BufferLineCycleNext <CR>")
        vim.keymap.set("n", "<S-Tab>", "<CMD> BufferLineCyclePrev <CR>")
        vim.keymap.set("n", "<leader>xl", "<CMD> BufferLineCloseLeft <CR>")
        vim.keymap.set("n", "<leader>xr", "<CMD> BufferLineCloseRight <CR>")
    end
}
