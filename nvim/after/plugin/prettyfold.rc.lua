local status, prettyfold = pcall(require, "pretty-fold")
if (not status) then return end

prettyfold.setup({
  keep_indentation = false,
  fill_char = '•',
  sections = {
    left = {
      '+', function() return string.rep('-', vim.v.foldlevel) end,
      ' ', 'number_of_folded_lines', ':', 'content',
    }
  }

})
