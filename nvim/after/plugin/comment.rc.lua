require('Comment').setup {}

vim.keymap.set('n', '?', function()
    return vim.v.count == 0
        and '<Plug>(comment_toggle_linewise_current)'
        or '<Plug>(comment_toggle_linewise_count)'
end, { expr = true })

-- Toggle in VISUAL mode
vim.keymap.set('x', '?', '<Plug>(comment_toggle_linewise_visual)')

local todo_comments = require('todo-comments').setup {}

-- TODO HACK FIX
vim.keymap.set('n', '<leader>tt', "<cmd> TodoTelescope <CR>")
