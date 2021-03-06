local M = {}

M.config = function()
  require("catppuccin").setup {
    transparent_background = lvim.transparent_window,
    term_colors = false,
    integrations = {
      lsp_trouble = true,
      nvimtree = { transparent_background = lvim.transparent_window },
      which_key = true,
      ts_rainbow = true,
      hop = true,
      notify = false,
      telekasten = false,
      symbols_outline = false,
    },
  }
end

return M
