return {
    { 'neovim/nvim-lspconfig' },
    { 'L3MON4D3/LuaSnip' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')

            lsp_zero.set_sign_icons({
                error = ' ',
                warn = ' ',
                hint = '󰈻 ',
                info = ' '
            })

            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({ buffer = bufnr })
                lsp_zero.async_autoformat(client, bufnr)
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
                                        -- Get the language server to recognize the `vim` global
                                        globals = { 'vim' },
                                    },

                                    workspace = {
                                        -- Make the server aware of Neovim runtime files
                                        library = vim.api.nvim_get_runtime_file("", true),
                                        checkThirdParty = false
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
