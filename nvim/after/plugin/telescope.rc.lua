local telescope = require('telescope')

local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        path_display  = { shorten = 1 },
        shorten_path  = true,
        mappings      = {
            n = {
                ["q"] = actions.close
            },
        },
        layout_config = {
            width = .8,
            flex = true,
            preview_width = .7
        },
        initial_mode  = 'normal',
    },
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
            grouped = true,
            display_stat = false,
            git_status = true,
            mappings = {
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["a"] = fb_actions.create,
                    ["u"] = fb_actions.goto_parent_dir,
                    ["/"] = function()
                        vim.cmd('startinsert')
                    end
                },
            },
        },
    },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<leader>ff',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set('n', '<leader>fw', function()
    builtin.live_grep()
end)
vim.keymap.set('n', '<leader>fb', function()
    builtin.buffers()
end)

vim.keymap.set('n', '<leader>fb', function()
    builtin.buffers()
end)

vim.keymap.set('n', '<leader>fh', function()
    builtin.help_tags()
end)

vim.keymap.set('n', '<leader>fs', function()
    telescope.extensions.file_browser.file_browser()
end)

vim.keymap.set('n', '<leader>ft', function()
    builtin.colorscheme()
end)

vim.keymap.set('n', '<leader>fo', function()
    builtin.oldfiles()
end)
