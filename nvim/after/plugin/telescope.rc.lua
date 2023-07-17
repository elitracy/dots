local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
    defaults = {
        shorten_path = true,
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
        layout_config = {
            width = .8
        },
        initial_mode = 'normal'
    },
    pickers = {
        colorscheme = {
            enable_preview = true
        }
    },
    extensions = {
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                -- your custom insert mode mappings
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

vim.keymap.set('n', '<leader>ft', function()
    builtin.colorscheme()
end)

vim.keymap.set('n', '<leader>fo', function()
    builtin.oldfiles()
end)
