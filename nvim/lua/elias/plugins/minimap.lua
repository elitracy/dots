return {
    'wfxr/minimap.vim',
    dependencies = { "wfxr/code-minimap" },
    build = ':!cargo install --locked code-minimap',
    init = function()
        vim.g.minimap_width = 10
        vim.g.minimap_auto_start = 1
        vim.g.minimap_start_win_enter = 1
        vim.g.minimap_git_colors = 1
    end
}
