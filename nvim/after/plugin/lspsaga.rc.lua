require('lspsaga').setup({
    ui = {
        title = false,
        winblend = 0,
        border = 'rounded',
    },
    symbol_in_winbar = {
        enable = false
    },
})

-- local diagnostic = require("lspsaga.diagnostic")

local opts = { noremap = true, silent = true }
local map = vim.keymap

map.set('n', ']d', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
map.set('n', '[d', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
map.set('n', 'gl', '<Cmd>Lspsaga show_line_diagnostics<CR>', opts)
map.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
map.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
map.set('i', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
map.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)

-- code action
map.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
