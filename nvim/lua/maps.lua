local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
keymap.set('n', 'q:', ':q')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete whole word
keymap.set('n', 'dw', 'daw')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>', { silent = true })
keymap.set('n', 'tq', ':tabclose<CR>', { silent = true })
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move between windows
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sl', '<C-w>l')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sh', '<C-w>h')

-- Move out of terminal
-- keymap.set('t', ';;', '<C-\\><C-n><C-w>w')
keymap.set('t', '<Esc>', '<C-\\><C-n><C-w><Esc>')
keymap.set('n', 'Ss', ':split <CR><C-w>w | :term<CR>', { silent = true })
keymap.set('n', 'Sv', ':vsplit <CR><C-w>w | :term<CR>', { silent = true })


-- Resize window
keymap.set('n', '<C-w><left>', '10<C-w><')
keymap.set('n', '<C-w><right>', '10<C-w>>')
keymap.set('n', '<C-w><up>', '5<C-w>+')
keymap.set('n', '<C-w><down>', '5<C-w>-')
keymap.set('n', 's=', '<C-w>=')

-- Comments
keymap.set('n', '?', ':CommentToggle<CR>')
