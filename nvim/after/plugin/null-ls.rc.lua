local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup {
  on_attach = function(client)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[augroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
      vim.api.nvim_command [[augroup END]]
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.fish,
    null_ls.builtins.formatting.autopep8,
    -- null_ls.builtins.diagnostics.semgrep.with({
    --   extra_args = { "--config", "auto" }
    -- })

  }
}
