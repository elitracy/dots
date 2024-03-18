local telescope = require('telescope')

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
    defaults = {
        path_display  = { "smart" },
        -- shorten_path  = true,
        mappings      = {
            n = {
                ["q"] = actions.close
            },
        },
        layout_config = {
            width = .8,
            flex = true,
            preview_width = .5
        },
        initial_mode  = 'normal',
    },
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    },
}

vim.keymap.set('n', '<leader>ff',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)

vim.keymap.set('n', '<leader>fw', function() builtin.live_grep() end)

vim.keymap.set('n', '<leader>fb', function() builtin.buffers() end)

vim.keymap.set('n', '<leader>fh', function() builtin.help_tags() end)

vim.keymap.set('n', '<leader>ft', function() builtin.colorscheme() end)

vim.keymap.set('n', '<leader>fo', function() builtin.oldfiles() end)

vim.keymap.set('n', '<leader>fs', function() builtin.lsp_document_symbols() end)

vim.keymap.set('n', '<leader>fd', function() builtin.lsp_definitions() end)

vim.keymap.set('n', '<leader>fm', function() builtin.man_pages() end)
