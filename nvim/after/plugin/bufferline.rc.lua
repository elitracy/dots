-- local status, bufferline = pcall(require, "bufferline")
-- if (not status) then return end
--
-- bufferline.setup({
--   options = {
--     mode = "tabs",
--     separator_style = 'padded_slant',
--     always_show_bufferline = true,
--     show_buffer_close_icons = false,
--     show_close_icon = false,
--     color_icons = true,
--     diagnostics = true,
--     diagnostics_indicator = function(count, level)
--       local icon = level:match("error") and " " or ""
--       return " " .. icon .. count
--     end
--   },
-- })
--
-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
