require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "cpp",
        "json",
        "markdown",
        "markdown_inline"
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
    autotag = { enable = true, },
})

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
