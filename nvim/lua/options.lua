local opt = vim.opt

vim.g.mapleader = ' '
vim.scriptencoding = 'utf8'
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

opt.number = true
opt.rnu = false

opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = false
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'fish'
opt.backupskip = '/tmp/*,/private/tmp/*'
opt.inccommand = 'split'
opt.ignorecase = true
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.wrap = false
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' }
opt.wildignore:append { '*/node_modules/*' }
opt.mouse = 'a'
opt.pumheight = 10
-- opt.ttimeoutlen = 0
-- opt.timeoutlen = 10

-- MacOS
opt.clipboard:append { 'unnamedplus' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = '*',
    command = "set nopaste"
})
