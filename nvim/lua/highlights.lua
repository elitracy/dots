vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 0
vim.opt.background = 'dark'
vim.opt.foldmethod = 'manual'

vim.cmd([[colorscheme onedark]])
vim.cmd([[hi Folded ctermfg=242 ctermbg=233 guibg=#1c1e26 guifg=#a9b1d6 ]])

-- Extra Filetypes
vim.cmd([[au BufRead,BufNewFile *.pl set filetype=prolog]])
