local status, nvim_lsp = pcall(require, "lspconfig")

if (not status) then return end

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.offsetEncoding = 'utf-8'

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "jsx", "tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }
      },
      workspace = {
        -- Make serer aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        preloadFileSize = 1500,
        checkThirdParty = false
      }
    }
  }
}

nvim_lsp.pyright.setup { on_attach = on_attach, filetypes = { "python", "py", "python.py" },
  capabilities = capabilities,
}

nvim_lsp.clangd.setup { on_attach = on_attach, filetypes = { "cpp", "h", "hpp" },
  cmd = {
    "clangd",
    "--background-index",
    "--pch-storage=memory",
    "--clang-tidy",
    "--suggest-missing-includes",
    "--all-scopes-completion",
    "--pretty",
    "--header-insertion=never",
    "-j=8",
    "--inlay-hints",
    "--header-insertion-decorators",
  },
  capabilities = capabilities,
}


local path = vim.fn.stdpath 'config' .. '/spell/en.utf-8.add'
local words = {}

for word in io.open(path, 'r'):lines() do
  table.insert(words, word)
end

nvim_lsp.ltex.setup {
  on_attach = on_attach,
  filetypes = { "markdown" },
  settings = {
    ltex = {
      disabledRules = {
        ['en-US'] = { 'PROFANITY' },
        ['en-GB'] = { 'PROFANITY' },
      },
      dictionary = {
        ['en-US'] = words,
        ['en-GB'] = words,
      },
    },
  },
}

nvim_lsp.html.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { 'html', }
}

nvim_lsp.jsonls.setup { capabilities = capabilities, on_attach = on_attach, filetypes = { 'json' } }

-- nvim_lsp.prolog_lsp.setup { capabilities = capabilities }

nvim_lsp.solargraph.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "ruby" }
}

nvim_lsp.emmet_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { 'eruby', }
}
