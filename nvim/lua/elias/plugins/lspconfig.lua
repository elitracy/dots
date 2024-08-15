return {
    { 'neovim/nvim-lspconfig' },
    { 'L3MON4D3/LuaSnip' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.extend_lspconfig()

            lsp_zero.set_sign_icons({
                error = ' ',
                warn = ' ',
                hint = '󰈻 ',
                info = ' '
            })

            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.async_autoformat(client, bufnr)

                -- lsp_zero.default_keymaps({ buffer = bufnr })
                vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, { buffer = bufnr })
                vim.keymap.set({ 'n', 'i' }, '<c-k>', function() vim.lsp.buf.signature_help() end, { buffer = bufnr })
                vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, { buffer = bufnr })
                vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, { buffer = bufnr })
                vim.keymap.set('n', 'gi', function() vim.lsp.buf.implementation() end, { buffer = bufnr })
                vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, { buffer = bufnr })
                vim.keymap.set('n', 'ca', function() vim.lsp.buf.code_action() end, { buffer = bufnr })
                vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, { buffer = bufnr })
                vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, { buffer = bufnr })
            end)


            require('mason').setup({})
            require('mason-lspconfig').setup({
                ensure_installed = { "lua_ls" },
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({})
                    end,
                    lua_ls = function()
                        require('lspconfig').lua_ls.setup({
                            settings = {
                                Lua = {
                                    diagnostics = {
                                        globals = { 'vim' },
                                    },

                                    workspace = {
                                        library = vim.api.nvim_get_runtime_file("", true),
                                        checkThirdParty = false
                                    },
                                },
                            },
                        })

                        require("lspconfig").clangd.setup({
                            cmd = {
                                "/opt/homebrew/opt/llvm/bin/clangd",
                                "--background-index",
                                "--pch-storage=memory",
                                "--all-scopes-completion",
                                "--pretty",
                                "--header-insertion=never",
                                "-j=4",
                                "--inlay-hints",
                                "--header-insertion-decorators",
                                "--function-arg-placeholders",
                                "--completion-style=detailed" },

                            root_dir = require('lspconfig').util.root_pattern("src"),
                            init_option = { fallbackFlags = { "-std=c++2a" } },
                        })

                        require("lspconfig").hls.setup({
                            cmd = {
                                "/opt/homebrew/Cellar/haskell-language-server/2.8.0.0/bin/haskell-language-server-wrapper",
                                "lsp"
                            },
                        })

                        require("lspconfig").sourcekit.setup({
                            capabilities = {
                                workspace = {
                                    didChangeWatchedFiles = {
                                        dynamicRegistration = true,
                                    },
                                },
                            },

                        })
                    end
                },
            })
        end
    },
}
