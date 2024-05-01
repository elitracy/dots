local map = vim.keymap

map.set('n', 'x', '"_x')

map.set('n', '<leader>n', '<CMD> set number! <CR>')
map.set('n', '<leader>rn', '<CMD> set relativenumber! <CR>')

map.set('n', '<leader>os', '<CMD> set spell! <CR>')

map.set('n', '<leader>j', 'o<ESC>')
map.set('n', '<leader>k', 'O<ESC>')

-- Select all
map.set('n', '<C-a>', 'gg<S-v>G')

-- Tab navigation
map.set('n', '<leader>b', '<CMD> tabedit <CR>')
map.set('n', '<leader>x', '<CMD> tabclose <CR>')
map.set('n', '<tab>', '<CMD> tabnext <CR>')
map.set('n', '<S-tab>', '<CMD> tabNext <CR>')

-- Splits
map.set('n', '<leader>sv', '<CMD> vsplit <CR>')
map.set('n', '<leader>ss', '<CMD> split <CR>')

-- Navigation
map.set('n', '<C-h>', '<C-w>h')
map.set('n', '<C-j>', '<C-w>j')
map.set('n', '<C-k>', '<C-w>k')
map.set('n', '<C-l>', '<C-w>l')


-- Resize pane
map.set('n', '<leader>s<left>', '<C-w><')
map.set('n', '<leader>s<right>', '<C-w>>')
map.set('n', '<leader>s<up>', '<C-w>+')
map.set('n', '<leader>s<down>', '<C-w>-')
map.set('n', '<leader>s=', '<C-w>=')

-- Terminal maps
map.set('n', '<leader>st', '<CMD> belowright split term://zsh | resize 8 | startinsert <CR>')
map.set('n', '<leader>sT', '<CMD> belowright vsplit term://zsh | vertical resize 40 |  startinsert <CR> ')
map.set('t', '<esc>', '<C-\\><C-N>')
map.set('t', '<C-h>', '<C-\\><CMD> NvimTmuxNavigateLeft <CR>')
map.set('t', '<C-j>', '<C-\\><CMD> NvimTmuxNavigateDown <CR>')
map.set('t', '<C-k>', '<C-\\><CMD> NvimTmuxNavigateUp <CR>')
map.set('t', '<C-l>', '<C-\\><CMD> NvimTmuxNavigateRight <CR>')

vim.api.nvim_create_autocmd({ 'TermOpen' }, {
    pattern = { "term://*" },
    command = "setlocal nonumber norelativenumber"
})

vim.api.nvim_create_autocmd({ 'BufWinEnter', 'WinEnter', 'TermOpen' }, {
    pattern = { "term://*" },
    command = "startinsert"
})

vim.api.nvim_create_autocmd({ 'BufLeave' }, {
    pattern = { "term://*" },
    command = "stopinsert"
})
