-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

vim.cmd [[highlight IndentBlanklineContextStart guisp=#00bc9b gui=underline]]

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  -- show_current_context_start = true,
}
