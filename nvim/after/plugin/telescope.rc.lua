local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}

-- keymaps
vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true,
      initial_mode = "normal",
      sorting_strategy = 'ascending',
      layout_config = { height = 30, width = 150, prompt_position = "top", preview_width = .60 },
    })
  end)
vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)
vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)
vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end)
vim.keymap.set('n', ';h', function()
  builtin.oldfiles({
    initial_mode = "normal",
    sorting_strategy = 'ascending',
    layout_config = { height = 30, width = 150, prompt_position = "top", preview_width = .60 },
  })
end)

telescope.load_extension("file_browser")

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    preview = true,
    initial_mode = "normal",
    layout_config = { height = 30, width = 150, prompt_position = "top", preview_width = .60 },
    sorting_strategy = 'ascending',
    hijack_netrw = true,
  })
end)
