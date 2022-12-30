local status, alpha = pcall(require, "alpha")
if (not status) then return end

local dashboard = require('alpha.themes.dashboard')

dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":ene <CR>"),
  dashboard.button("f", "  > Find file",
    ":Telescope file_browser initial_mode=normal preview=true layout_config={height=100,width=200,prompt_position='top',preview_width=.65} <CR>"),
  dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
  dashboard.button("s", "  > Settings",
    ":cd ~/.config/nvim | Telescope file_browser initial_mode=normal preview=true layout_config={height=100,width=200,prompt_position='top',preview_width=.65} <CR>"),
  dashboard.button("u", "痢 > Update Plugins", ":PackerUpdate <CR>"),
  dashboard.button("m", "  > Manage Plugins",
    ":cd $HOME/.config/nvim/after/plugin | Telescope file_browser initial_mode=normal preview=true layout_config={height=100,width=200,prompt_position='top',preview_width=.65} <CR>"),
  dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
