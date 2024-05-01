return {
    "nvim-lualine/lualine.nvim",
    init = function()
        vim.g.lualine_laststatus = vim.o.laststatus
        if vim.fn.argc(-1) > 0 then
            -- set an empty statusline till lualine loads
            vim.o.statusline = " "
        else
            -- hide the statusline on the starter page
            vim.o.laststatus = 0
        end
    end,
    opts = function()
        local lualine_require = require("lualine_require")
        lualine_require.require = require

        vim.o.laststatus = vim.g.lualine_laststatus

        return {
            options = {
                theme = "auto",
                globalstatus = true,
                disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "filename", "branch" },

                lualine_c = {
                    {
                        "diagnostics",
                        symbols = {
                            error = ' ',
                            warn = ' ',
                            hint = '󰈻 ',
                            info = ' '
                        },
                    },
                    { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
                },
                lualine_x = {
                    {
                        "diff",
                        symbols = {
                            added = "",
                            modified = "󰏫",
                            removed = ""
                        },
                        source = function()
                            local gitsigns = vim.b.gitsigns_status_dict
                            if gitsigns then
                                return {
                                    added = gitsigns.added,
                                    modified = gitsigns.changed,
                                    removed = gitsigns.removed,
                                }
                            end
                        end,
                    },
                },
                lualine_y = {
                    { "progress" },
                    { "location" },
                },
                lualine_z = {},
            },
            extensions = { "neo-tree", "lazy" },
        }
    end,
}
