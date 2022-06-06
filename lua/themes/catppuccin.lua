local M = {}

M.config = function()
  require("catppuccin").setup {
    transparent_background = lvim.transparent_window,
    term_colors = false,
    integrations = {
      which_key = true,
      ts_rainbow = true,
      hop = true,
      telekasten = false,
      symbols_outline = false,
    },
  }
end

return M
