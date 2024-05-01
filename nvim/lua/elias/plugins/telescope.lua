local map = vim.keymap

function config()
    require("telescope").setup({
        defaults = {
            initial_mode = "normal"
        },
        pickers = {
            colorscheme = { enable_preview = true }
        }
    })

    map.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
    map.set("n", "<leader>fo", "<CMD>Telescope oldfiles<CR>")
    map.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
    map.set("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
    map.set("n", "<leader>ft", "<CMD>Telescope colorscheme<CR>")
    map.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>")
end

return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = config
}
