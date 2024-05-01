function config()
    require("telescope").setup({
        defaults = {
            initial_mode = "normal"
        },
        layout_config = {
            width = 0.8
        },
        pickers = {
            colorscheme = {enable_preview = true}
        }
    })

    vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
    vim.keymap.set("n", "<leader>fo", "<CMD>Telescope oldfiles<CR>")
    vim.keymap.set("n", "<leader>fh", "<CMD>Telescope help_tags<CR>")
    vim.keymap.set("n", "<leader>fw", "<CMD>Telescope live_grep<CR>")
    vim.keymap.set("n", "<leader>ft", "<CMD>Telescope colorscheme<CR>")
end

return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },
    config = config
}
