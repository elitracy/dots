local status, tokyo = pcall(require, 'tokyonight')
if not status then return end


tokyo.setup({
  style = "storm",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  transparent = true,
  terminal_colors = true
})

-- tokyo.load()
