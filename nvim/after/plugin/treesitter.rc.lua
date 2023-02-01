local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    -- "typescript",
    -- "javascript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "lua",
    "python",
    "markdown",
    "cpp",
    "perl"
  },
  autotag = {
    enable = true,
  },
}
