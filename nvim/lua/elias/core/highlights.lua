local opt = vim.opt

opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 0
opt.background = 'dark'

vim.api.nvim_set_hl(0, "WinSeparator", { ctermfg = "Gray", ctermbg = "Black" })

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
