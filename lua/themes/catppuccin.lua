local M = {}

M.config = function()
  require("catppuccin").setup {
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
