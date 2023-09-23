local map = vim.keymap

map.set('n', 'x', '"_x')
map.set('n', '<c-d>', '<c-d>zzz')
map.set('n', '<c-u>', '<c-u>zzz')

-- Select all
map.set('n', '<C-a>', 'gg<S-v>G')

-- Tab navigation
map.set('n', '<leader>b', '<cmd> enew <CR>')
map.set('n', '<leader>x', '<cmd> bd <CR>')
map.set('n', '<tab>', '<cmd> bnext <CR>')
map.set('n', '<S-tab>', '<cmd> bNext <CR>')

-- Splits
map.set('n', '<leader>sv', '<cmd> vsplit <CR>')
map.set('n', '<leader>ss', '<cmd> split <CR>')

-- Navigate panes
map.set('n', '<C-h>', '<cmd> NvimTmuxNavigateLeft <CR>')
map.set('n', '<C-j>', '<cmd> NvimTmuxNavigateDown <CR>')
map.set('n', '<C-k>', '<cmd> NvimTmuxNavigateUp <CR>')
map.set('n', '<C-l>', '<cmd> NvimTmuxNavigateRight <CR>')

-- Resize pane
map.set('n', '<leader>s<left>', '<C-w><')
map.set('n', '<leader>s<right>', '<C-w>>')
map.set('n', '<leader>s<up>', '<C-w>+')
map.set('n', '<leader>s<down>', '<C-w>-')
map.set('n', '<leader>s=', '<C-w>=')

-- LSP
map.set('n', '<leader>ll', '<cmd>LspLog <CR> | G')
map.set('n', '<leader>lr', '<cmd>LspRestart <CR>')
map.set('n', '<leader>li', '<cmd>LspInfo <CR>')
