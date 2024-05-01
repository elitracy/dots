local config = function()
    require("mason").setup({
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    })
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "rust_analyzer" },
    })

end

return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    config = config
}
