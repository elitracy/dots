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
-- map.set('n', '<C-h>', '<cmd> NvimTmuxNavigateLeft <CR>')
-- map.set('n', '<C-j>', '<cmd> NvimTmuxNavigateDown <CR>')
-- map.set('n', '<C-k>', '<cmd> NvimTmuxNavigateUp <CR>')
-- map.set('n', '<C-l>', '<cmd> NvimTmuxNavigateRight <CR>')

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

-- Custom Compile/Run Command
function SetCompileCommand()
    vim.api.nvim_command('let g:compile_command = input("Enter compile command: ")')
end

function SetRunCommand()
    vim.api.nvim_command('let g:run_command = input("Enter run command: ")')
end

-- Function to execute the compile/run command
function Compile()
    local compile_command = vim.g.compile_command
    if compile_command ~= nil then
        vim.cmd('set splitright')
        vim.cmd('vsplit | vertical resize 50 | terminal ' .. compile_command)
    else
        print("Compile command not set. Please set it first.")
    end
end

function Run()
    local run_command = vim.g.run_command
    if run_command ~= nil then
        vim.cmd('set splitright')
        vim.cmd('vsplit | vertical resize 50 | terminal ' .. run_command)
    else
        print("Run command not set. Please set it first.")
    end
end

function CompileAndRun()
    local compile_command = vim.g.compile_command
    local run_command = vim.g.run_command


    if compile_command == nil then
        print("Compile command not set. Please set it first.")
        return
    end

    if run_command == nil then
        print("Run command not set. Please set it first.")
        return
    end

    vim.cmd('set splitright')
    vim.cmd('vsplit | vertical resize 50 | terminal ' .. compile_command .. ' && ' .. run_command)
end

-- Map the functions to key bindings
vim.api.nvim_set_keymap('n', '<leader>sc', ':lua SetCompileCommand()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sr', ':lua SetRunCommand()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>c', ':lua Compile()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':lua Run()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>R', ':lua CompileAndRun()<CR>', { noremap = true, silent = true })
