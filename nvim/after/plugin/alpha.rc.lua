local status, alpha = pcall(require, "alpha")
if (not status) then return end

local dashboard = require('alpha.themes.dashboard')

local config = "sorting_strategy=ascending layout_config={height=30,width=150,prompt_position='top',preview_width=.65}"

dashboard.section.buttons.val = {
  dashboard.button("e", "  > New file", ":ene <CR>"),
  dashboard.button("s", "  > Search",
    string.format(":Telescope find_files preview=true sorting_strategy=ascending %s <CR>", config)),
  dashboard.button("f", "  > Find file",
    string.format(":Telescope file_browser preview=true initial_mode=normal sorting_strategy=ascending %s <CR>", config)),
  dashboard.button("r", "  > Recent",
    string.format(":Telescope oldfiles initial_mode=normal %s <CR>", config)),
  dashboard.button("p", "  > Preferences",
    string.format(":cd ~/.config/nvim | Telescope file_browser preview=true %s <CR>", config)),
  dashboard.button("u", "痢 > Update Plugins", ":PackerUpdate <CR>"),
  dashboard.button("m", "  > Manage Plugins",
    string.format(":cd $HOME/.config/nvim/after/plugin | Telescope file_browser initial_mode=normal %s <CR>", config)),
  dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.opts)
